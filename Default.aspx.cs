using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public DataTable objTblPostTop, objTblPostHot, objTblPostRandom, objTblPostNews, objTblPostTop1,objTblIntagram = new DataTable();
    Posts objPost = new Posts();
    protected void Page_Load(object sender, EventArgs e)
    {
            if(!IsPostBack)
            {
                  objTblPostTop = objPost.getAllData(1,5); //4 star
                if (objTblPostTop.Rows.Count < 1) { Page.ClientScript.RegisterStartupScript(GetType(), "error", "alert('Có lỗi xãy ra khi thực hiện lấy thông tin từ máy chủ, xin lỗi vì sự bất tiện này');"); return; }
                objTblPostTop1 = objPost.getAllData(1,1);// 5star
                objTblPostHot = objPost.getAllData(1,4); // 3 star
                 objTblPostRandom = objPost.getAllData(-1, 6,true);
                 objTblPostNews = objPost.getAllData(-1, 4);
                 objTblIntagram = objPost.getDataByCategory("1004");
            }
    }


}