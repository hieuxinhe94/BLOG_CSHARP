using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Users_Comment : System.Web.UI.Page
{
    public DataTable objTblPost = new DataTable();
    public DataTable objTblComment = new DataTable();
    Posts objPost = new Posts();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null) { Response.Redirect("Login.aspx"); return; }

        if(!IsPostBack)
        {
            objTblPost = objPost.getDataByAuthor(Session["UserId"].ToString(),10);
        }

    }
}