using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Profile : System.Web.UI.Page
{
    Users objUser = new Users();
    public DataTable objTblUser = new DataTable();
    public string countPostByUser = "";
    public DataTable objTblUserPost = new DataTable();
    public DataTable objTblUserComment = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {
       // check session  and redirect.
        if (Session["UserId"] == null || Session["LoginType"] == null)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        
        //if(!IsPostBack)
        //{
            objTblUser = objUser.getUserProfileById(Session["UserId"].ToString());
            Posts objPosts = new Posts();
            objTblUserPost= objPosts.getDataByAuthor(Session["UserId"].ToString(),1);
            countPostByUser = objTblUserPost.Rows.Count.ToString();
            Comments objComment =  new Comments();
            objTblUserComment = objComment.getDataByAuthor(Session["UserId"].ToString());
            if (objTblUser.Rows.Count != 1) Response.Redirect("404.html");
            return;
        //}

       

    }

    protected void btnSubmit_ServerClick(object sender, EventArgs e)
    {
        //check input
        if(checkInput()!= 1) return;
       if(txtImage.Text!= null)
        {
            if (saveImage1() == false)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Chưa thể lưu ảnh đại diện của bạn,Vui lòng thử lại lần nửa !');", true);
                return;
            }
        }

       int status = objUser.addOrUpdateUsers(Session["UserId"].ToString(),
                               txtUserName.Value.Trim(),
                               txtPassword.Value.Trim(), 
                               txtImage.Text,
                               txtSlogen.Value.Trim(), 
                               txtEmail.Value.Trim(),
                               txtPhone.Value.Trim(),
                               txtAdress.Value.Trim());
      if(status!=1)
      {
          Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Thông tin chưa được câp nhật thành công !');", true);
          return;
      }
      Page.ClientScript.RegisterStartupScript(GetType(), "alert", "if(confirm('Thông tin đã được câp nhật thành công !')){location.reload();return};", true);
      return;

    }
    int checkInput()
    {
        return 1;
    }

    #region method saveImage1
    private bool saveImage1()
    {
        string strBaseLoactionImg = "";
        try
        {
            strBaseLoactionImg = Server.MapPath(System.Configuration.ConfigurationSettings.AppSettings["USERIMAGE"].ToString());
            if (upImage1.PostedFile.ContentLength > 5048576)
            {
                return false;
            }
            else
            {
                string sFileName = "A" + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second + DateTime.Now.Millisecond.ToString();
                string strEx = System.IO.Path.GetFileName(upImage1.PostedFile.FileName);
                strEx = strEx.Substring(strEx.LastIndexOf("."), strEx.Length - strEx.LastIndexOf("."));
                strBaseLoactionImg += sFileName + strEx;
                strBaseLoactionImg = strBaseLoactionImg.Replace("/", "\\");
                upImage1.PostedFile.SaveAs(strBaseLoactionImg);
                this.txtImage.Text = sFileName + strEx;
                this.lblImg1.Text = "<img width = \"125px\" height = \"100px\"  src = \"../Images/User/" + sFileName + strEx + "\">";
                return true;
            }
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write(ex.Message);
        }
        return false;
    }
    #endregion   

}