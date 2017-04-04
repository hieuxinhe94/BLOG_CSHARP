using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_login : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {
        if (checkInput() != 1) return;
        string userName = txtUserName.Value.Trim();
        string passWord = txtUserPassword.Value.Trim();
        Users objUser = new Users();
        int status = objUser.checkMatchPassword(userName, passWord);
        if(status!=1)
        {
            lblResult.InnerText = "Mật khẩu hoặc tài khoản không khớp , Vui lòng thử lại ";
           Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Mật khẩu hoặc tài khoản không khớp , Vui lòng thử lại');", true);
                return;
        }
        //get data
        DataTable objDataUser = objUser.getUserByAccount(userName);
        if(objDataUser.Rows.Count != 1 )
        {
            lblResult.InnerText = "Lấy thông tin về tài khoản thất bại  ";
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Lấy thông tin về tài khoản thất bại, Vui lòng quay lại saiu');", true);
                return;
        }
        //set sesion
        Session["UserId"] = objDataUser.Rows[0]["UserId"].ToString();
        Session["LoginType"] = "USER_FROM_LOGIN_PAGE";
    

        Response.Redirect("Default.aspx");

    }

    int checkInput()
    {
        // check leng,check attack...
        return 1;
    }
    string checkMd5()
    {
        return "";
    }

}