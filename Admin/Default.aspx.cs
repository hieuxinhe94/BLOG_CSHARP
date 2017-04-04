using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
  public  string countAllUser = "",countAllPost ="", countAllVisistor ="", countAllComment = "",countAllRepost ="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Users objUser = new Users();
            countAllUser = objUser.size().ToString();

            Posts objPost = new Posts();
            countAllPost = objPost.size().ToString();

            Comments objComment = new Comments();
            countAllComment = objComment.size().ToString();

            

        }
    }
}