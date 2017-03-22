using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_UsersMasterPage : System.Web.UI.MasterPage
{
    public string userAccount = "",userSlogen = "";
    private Users user = new Users();
    public DataTable objTblUserProfile = new DataTable();
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    int getUserData(string userAccount)
    {
        return 1;

    }
    bool authencationLogin()
    {
        return false;
    }



}
