using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Register : System.Web.UI.Page
{
    Users objUser = new Users();

    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        {

        }

    }

    int checkIput()
    {
        // tên tài khoản , mật khaazu .....
        return 1;
    }




    protected void btnRegister_Click(object sender, EventArgs e)
    {

            int state = objUser.addUsers(name.Value,username.Value, password.Value, "", slogen.Value, email.Value, phone.Value, address.Value);

            if (state != 1)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Có một số lổi xãy ra,Vui lòng thực hiện lại sau 10p');", true);
                return;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "alert", "confirm('Đăng ký thành công , Cảm ơn bạn đả đến với NgheanSunshine.info ');", true);
                return;
            }

        }
   

    
}