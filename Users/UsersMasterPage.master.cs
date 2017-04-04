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
    public   string notice = "0" , countPost ="0",countStar = "0",acountName ="";


    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        { 
        if(!authencationLogin())
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            try{
                   objTblUserProfile = user.getUserProfileById(Session["UserId"].ToString());
                   acountName = objTblUserProfile.Rows[0]["UserAccount"].ToString();
             }
           catch{
                }
                return;
        }



        }
    }
    
    int getUserData(string userAccount)
    {
        return 1;

    }
    bool authencationLogin()
    {
        if (Session["UserId"] == null || Session["LoginType"]== null) 
            return false;
        else
        {
            return true;
        }
      
    }



}
