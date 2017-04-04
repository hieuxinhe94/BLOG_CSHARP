using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_ListPosts : System.Web.UI.Page
{
    public DataTable objArticle = new DataTable();
    Posts objPost = new Posts();
    String UserId = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        UserId = "1"; // sessionId
        if(!IsPostBack)
        { 
        getData();
        }

    }

    void getData()
    {
        objArticle = objPost.getDataByAuthor(UserId);
    }


}