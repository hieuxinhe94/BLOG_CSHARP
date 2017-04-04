using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (!authencationLogin())
            {
                Response.Redirect("../Admin/login.aspx");
                return;
            } 
        }



    }
    bool authencationLogin()
    {
        if (Session["AdminId"] == null || Session["LoginType"] != "ADMIN_FROM_LOGIN_PAGE")
            return false;
        else
        {
            return true;
        }

    }
}
