using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ListUsers : System.Web.UI.Page
{
    public DataTable objTblUser = new DataTable();
    Users objUser = new Users();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            objTblUser = objUser.getDataAll(1);
            if (objTblUser.Rows.Count < 1)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "warning", "alert('Không thể tải dữ liệu , hoặc trống .');", true);
                return;
            }
            ddlUsers.DataSource = objTblUser.DefaultView;
            ddlUsers.DataKeyField = "UserId";
            ddlUsers.DataBind();

        }
    }
    protected void ddlUsers_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        int id = (int)ddlUsers.DataKeys[e.Item.ItemIndex];
        objUser.disableUser(id.ToString());
        Response.Redirect(Request.RawUrl);

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}