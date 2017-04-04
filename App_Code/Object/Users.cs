using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
   
   
	public Users()
	{

	}

    #region menthod getDataAll
  public  DataTable getDataAll(int state = -1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblUser "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            if (state != -1) { cmd.CommandText += " WHERE tblUser.State = "+state+""; }
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            sqlConn.Close();
            sqlConn.Dispose();
            objTbl = ds.Tables[0];
         
        }
        catch(Exception e)
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

  #region size()
  public int size(int state = -1)
  {
      DataTable objTbl = new DataTable();
      try
      {
          SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
          sqlConn.Open();
          SqlCommand cmd = sqlConn.CreateCommand();
          cmd.CommandText = "SELECT COUNT (tblUser.UserId) FROM tblUser "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
          if (state != -1)
          {
              cmd.CommandText += " WHERE tblUser.State = " + state + "";
          }
          var passWord = cmd.ExecuteScalar();

          sqlConn.Close();
          sqlConn.Dispose();
          return (int)passWord;
      }
      catch (Exception e)
      {
          Console.Write(e);
          return 0;
      }
  }
  #endregion
  public DataTable getUserProfileById(string UserId)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblUser WHERE tblUser.UserId = @UserId "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserId", SqlDbType.Int).Value = (UserId);
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
  public DataTable getUserByAccount(string userAccount)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT * FROM tblUser WHERE tblUser.UserAccount = @UserAccount "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserAccount", SqlDbType.NVarChar).Value = (userAccount);
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

  public int checkMatchPassword(string userAccount, string userPassword)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT tblUser.UserPassword FROM tblUser WHERE tblUser.UserAccount = @UserAccount "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserAccount", SqlDbType.NVarChar).Value = (userAccount);

            var passWord = cmd.ExecuteScalar();
            if(passWord != null)
            {
              if(userPassword == passWord.ToString())
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
  public int addUsers(string userName,string userAccount, string userPassword, string userImg, string userSlogen, string userEmail, string userPhone, string userAdress, bool userState = true)
    {
        
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " INSERT INTO tblUser ( UserName,UserAccount, UserPassword , UserImg, UserSlogen ,UserEmail , UserPhone ,UserAdress , UserState ) "
                                        + " VALUES ( @UserName,@UserAccount , @UserPassword , @UserImg , @UserSlogen ,@UserEmail , @UserPhone ,@UserAdress ,@UserState ) ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserName", SqlDbType.NVarChar).Value = (userName);
            cmd.Parameters.Add("UserAccount", SqlDbType.NVarChar).Value = (userAccount);
            cmd.Parameters.Add("UserPassword", SqlDbType.NVarChar).Value = (userPassword);
            cmd.Parameters.Add("UserImg", SqlDbType.NVarChar).Value = (userImg);
            cmd.Parameters.Add("UserSlogen", SqlDbType.NVarChar).Value = (userSlogen);
            cmd.Parameters.Add("UserEmail", SqlDbType.NVarChar).Value = (userEmail);
            cmd.Parameters.Add("UserPhone", SqlDbType.NVarChar).Value = (userPhone);
            cmd.Parameters.Add("UserAdress", SqlDbType.NVarChar).Value = (userAdress);
            cmd.Parameters.Add("UserState", SqlDbType.Bit).Value = (userState);

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
  public int addOrUpdateUsers(string userId, string userName, string userPassword, string userImg, string userSlogen, string userEmail, string userPhone, string userAdress, bool userState = true)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " IF NOT EXISTS ( SELECT tblUser.UserName FROM tblUser WHERE tblUser.UserId = @UserId ) "
                + " BEGIN  INSERT INTO tblUser ( UserName, UserPassword , UserImg, UserSlogen ,UserEmail , UserPhone ,UserAdress , UserState ) "
                                        + " VALUES ( @UserName , @UserPassword , @UserImg , @UserSlogen ,@UserEmail , @UserPhone ,@UserAdress ,@UserState ) END  "
            + "ELSE  "
               + "BEGIN  UPDATE  tblUser SET UserName=@UserName ,  UserPassword=@UserPassword , UserImg= @UserImg ,   UserSlogen = @UserSlogen , UserEmail= @UserEmail , UserPhone=@UserPhone ,  UserAdress=@UserAdress , UserState =@UserState " +
               " WHERE  tblUser.UserId = @UserId " +
               " END";
            cmd.Parameters.Add("UserId", SqlDbType.NVarChar).Value = (userId);
            
            cmd.Parameters.Add("UserName", SqlDbType.NVarChar).Value = (userName);
            cmd.Parameters.Add("UserPassword", SqlDbType.NVarChar).Value = (userPassword);
            cmd.Parameters.Add("UserImg", SqlDbType.NVarChar).Value = (userImg);
            cmd.Parameters.Add("UserSlogen", SqlDbType.NVarChar).Value = (userSlogen);
            cmd.Parameters.Add("UserEmail", SqlDbType.NVarChar).Value = (userEmail);
            cmd.Parameters.Add("UserPhone", SqlDbType.NVarChar).Value = (userPhone);
            cmd.Parameters.Add("UserAdress", SqlDbType.NVarChar).Value = (userAdress);
            cmd.Parameters.Add("UserState", SqlDbType.Bit).Value = (userState);

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
  public int disableUser(string userId)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblUser "
                                        + " SET UserState = 0  WHERE  tblUser.UserId = @UserId ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserId", SqlDbType.Int).Value = userId;
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
    // Lắm  khi viết ít code cũng được , nhưng cứ mãi ép buộc mình phức tạp hóa lên làm gì nhỉ
  public int enableUser(string userId)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblUser "
                                        + " SET UserState = 1  WHERE  tblUser.UserId = @UserId ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("UserId", SqlDbType.Int).Value = userId;
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



}