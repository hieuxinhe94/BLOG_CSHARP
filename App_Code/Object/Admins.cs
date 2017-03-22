using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admins
/// </summary>
public class Admins
{
    //DataTable getAllAdmin();
    //DataTable getAdminById(string adminId);
    //DataTable getAdminByAccount(string adminAccount);
    //int checkMatchPassword(string password1, string password2);
    //int addAdmin(string adminName , string adminAccount , string adminPassword1 , string adminPassword2 , bool adminState = true);
    //int addOrUpdateAdmin( string adminId, string adminName, string adminAccount, string adminPassword1, string adminPassword2, bool adminState);
    
	public Admins()
	{
	}

    #region getAllData()
    public DataTable getAllData()
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblAdmin "; //or SELECT * FROM tblComment.Id, tblComment.Name .... 
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            sqlConn.Close();
            sqlConn.Dispose();
            objTbl = ds.Tables[0];

        }
        catch (Exception e)
        {
            Console.Write(e);
            return new DataTable();
        }
        finally
        {
        }
        return objTbl;

    }
    #endregion

    #region getAdminById()
    public DataTable getAdminById(string adminId)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblAdmin WHERE tblAdmin.AdminId =  @AdminId "; //or SELECT * FROM tblComment.Id, tblComment.Name ....
            cmd.Parameters.Add("AdminId", SqlDbType.Int).Value = adminId;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            sqlConn.Close();
            sqlConn.Dispose();
            objTbl = ds.Tables[0];

        }
        catch (Exception e)
        {
            Console.Write(e);
            return new DataTable();
        }
        finally
        {
        }
        return objTbl;

    }
    #endregion

    #region getAdminByAccount()
    public DataTable getAdminByAccount(string adminAccount)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblAdmin WHERE tblAdmin.AdminAccount =  @AdminAccount "; //or SELECT * FROM tblComment.Id, tblComment.Name ....
            cmd.Parameters.Add("AdminAccount", SqlDbType.Int).Value = adminAccount;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            sqlConn.Close();
            sqlConn.Dispose();
            objTbl = ds.Tables[0];

        }
        catch (Exception e)
        {
            Console.Write(e);
            return new DataTable();
        }
      
        return objTbl;

    }
    #endregion

    #region checkMatchPassword()
    public  int checkMatchPassword(string adminAccount, string adminPassword)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT tblAdmin.AdminPassword FROM tblUser WHERE tblAdmin.AdminAccount = @AdminAccount "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("Account", SqlDbType.NVarChar).Value = (adminAccount);

            var passWord = cmd.ExecuteScalar();
            if (passWord != null)
            {
                if (adminPassword == passWord.ToString())
                {
                    return 1;
                }
            }
            sqlConn.Close();
            sqlConn.Dispose();

        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }
        return 0;

    }
    #endregion

    #region addAdmin
    public int addAdmin(string adminName, string adminAccount, string adminPassword1, string adminPassword2, bool adminState = true)
    {

        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " INSERT INTO tblAdmin ( [AdminName] ,[AdminAccount], [AdminPassword1], [AdminPassword2] ,[AdminState] ) "
                                        + " VALUES ( @AdminName , @AdminAccount ,   @AdminPassword1 , @AdminPassword2 ,   @AdminState  ) ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("AdminName", SqlDbType.NVarChar).Value = (adminName);
            cmd.Parameters.Add("AdminAccount", SqlDbType.NVarChar).Value = (adminAccount);
            cmd.Parameters.Add("AdminPassword1", SqlDbType.NVarChar).Value = (adminPassword1);
            cmd.Parameters.Add("AdminPassword2", SqlDbType.NVarChar).Value = (adminPassword2);
            cmd.Parameters.Add("AdminState", SqlDbType.Bit).Value = (adminState);
            cmd.ExecuteNonQuery();
            sqlConn.Close();
            sqlConn.Dispose();
            return 1;
        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }
     }
    #endregion

    #region addOrUpdateAdmin
   public int addOrUpdateAdmin(string adminId, string adminName, string adminAccount, string adminPassword1, string adminPassword2, bool adminState = true)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " IF NOT EXIST (SELECT tblAdmin.AdminName FROM tblUser WHERE tblAdmin.AdminId = @AdminId ) "
                + " BEGIN  INSERT INTO tblAdmin ( [AdminName] ,[AdminAccount], [AdminPassword1], [AdminPassword2] ,[AdminState] )  "
                                        + " VALUES ( @AdminName , @AdminAccount ,   @AdminPassword1 , @AdminPassword2 ,   @AdminState  ) END  "
               + " ELSE  "
               + " BEGIN  UPDATE  tblUser SET AdminName=@AdminName AND  AdminAccount=@AdminAccount AND AdminPassword1= @AdminPassword1 AND   AdminPassword2 = @AdminPassword2 AND AdminState= @AdminState" +
                 " WHERE  tblAdmin.AdminId = @AdminId " +
                 " END";
            cmd.Parameters.Add("AdminId", SqlDbType.Int).Value = (adminId);

            cmd.Parameters.Add("AdminName", SqlDbType.NVarChar).Value = (adminName);
            cmd.Parameters.Add("AdminAccount", SqlDbType.NVarChar).Value = (adminAccount);
            cmd.Parameters.Add("AdminPassword1", SqlDbType.NVarChar).Value = (adminPassword1);
            cmd.Parameters.Add("AdminPassword2", SqlDbType.NVarChar).Value = (adminPassword2);
            cmd.Parameters.Add("AdminState", SqlDbType.Bit).Value = (adminState);
           
            cmd.ExecuteNonQuery();
            sqlConn.Close();
            sqlConn.Dispose();
            return 1;
        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }
    }
    #endregion

    #region disableAdmin
   public int disableAdmin(string adminId)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblAdmin "
                                        + " SET AdminState = 0  WHERE  tblAdmin.AdminId = @AdminId ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("AdminId", SqlDbType.Int).Value = adminId;
            cmd.ExecuteNonQuery();
            sqlConn.Close();
            sqlConn.Dispose();

            return 1;
        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }
    }
    #endregion

    #region enableAdmin
    // Lắm  khi viết ít code cũng được , nhưng cứ mãi ép buộc mình phức tạp hóa lên làm gì nhỉ
    public  int enableAdmin(string adminId)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblAdmin "
                                        + " SET AdminState = 0  WHERE  tblAdmin.AdminId = @AdminId ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("AdminId", SqlDbType.Int).Value = adminId;
            cmd.ExecuteNonQuery();
            sqlConn.Close();
            sqlConn.Dispose();

        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }

        return 1;

    }
    #endregion
}