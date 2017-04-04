using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Categorys : System.Web.UI.Page
{
    Categorys objCategory = new Categorys();
    public DataTable objTableCategory = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            objTableCategory = objCategory.getAllData();
            if (objTableCategory.Rows.Count < 1) { Page.ClientScript.RegisterOnSubmitStatement(GetType(), "alert", "alert('Không thể lấy ra dử liệu')"); return; }
            ddlCategory.DataSource = objTableCategory.DefaultView;
            ddlCategory.DataKeyField = "CatId";
            ddlCategory.DataBind();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // check input
        if (txtTitle.Value.Trim() != "" && txtDescription.Value.Trim() != "")
        {
            int status = objCategory.addOrUpdateCategory(txtUrl.Value, txtTitle.Value, txtDescription.Value);
            if (status != 1)
            {
                Page.ClientScript.RegisterOnSubmitStatement(GetType(), "alert", "alert('Thao tác không thành công , Thực hiện lại')");
                return;
            }
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "reload", "window.reload();");
            Response.Redirect(Request.RawUrl);
        }


    }

    protected void ddlCategory_DeleteCommand(object source, DataListCommandEventArgs e)
    {

        objCategory.setStatusCategory(e.Item.ItemIndex.ToString(), false);
    
        Response.Redirect(Request.RawUrl);
    }
}