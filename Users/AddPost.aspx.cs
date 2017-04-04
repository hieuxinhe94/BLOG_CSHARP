using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_AddPost : System.Web.UI.Page
{
    Posts objPost = new Posts();
    Functions func = new Functions();
    Categorys objCat = new Categorys();
    string UserId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
         UserId = "1"; //Session["UserId"].ToString();
        if(!IsPostBack)
        { 
        getDataCategory();
        }


    }

    void getDataCategory()
    {
     
        ddlCatgory.DataTextField = "CatName";
        ddlCatgory.DataValueField = "CatId";
        ddlCatgory.DataSource = objCat.getAllData().DefaultView;
        ddlCatgory.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // check inpput
        if (checkInput() != 1) return;
        string _title = editortitle.Value.ToString();
        string _content = txtContent.Text;
        if (_title.Trim() == "" || _content.Trim() == "") return;
        if(txtImage.Text!= null)
        {
            if (saveImage1() == false)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Hãy chọn cho bài viết một bức ảnh tuyệt vời !');", true);
                return;
            }
        }
      int state = objPost.addPost(editortitle.Value, txtImage.Text, editorDescription.Value, txtContent.Text, UserId, ddlCatgory.SelectedItem.Value.ToString(),true);
        if(state != 1)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Thao tác chưa thành công , xin vui lòng thực hiện lại');",true);
            return;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Thao tác  thành công , Cảm ơn bạn đã yêu quý tôi');", true);
            return;
        }

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
            strBaseLoactionImg = Server.MapPath(System.Configuration.ConfigurationSettings.AppSettings["POSTIMAGE"].ToString());
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
                this.lblImg1.Text = "<img width = \"125px\" height = \"100px\"  src = \"../Images/Post/" + sFileName + strEx + "\">";
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