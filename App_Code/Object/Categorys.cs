using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cayegory
/// </summary>
public class Categorys
{
    public Categorys()
	{
		//
		// TODO: Add constructor logic here
		//
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
            cmd.CommandText = "SELECT * FROM tblCategory "; //or SELECT * FROM tblComment.Id, tblComment.Name .... 
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


    #region addCategorys()
    public int addOrUpdateCategory(string url, string title, string description, string categoryId = "0", bool state = true)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = @" IF NOT EXISTS (SELECT * FROM tblCategory WHERE tblCategory.CatId = @CatId) 
                    BEGIN INSERT INTO tblCategory(CatUrl,CatName,CatDescription,CatState) VALUES (@url,@name,@des,1) END
                ELSE BEGIN UPDATE tblCategory SET CatUrl =@url , CatName = @name , CatDescription = @des , CatState = @state  WHERE tblCategory.CatId = @CatId END
                "; //or SELECT * FROM tblComment.Id, tblComment.Name .... 
            cmd.Parameters.Add("CatId", SqlDbType.Int).Value = categoryId;
            cmd.Parameters.Add("url", SqlDbType.NVarChar).Value = url;
            cmd.Parameters.Add("name", SqlDbType.NVarChar).Value = title;
            cmd.Parameters.Add("des", SqlDbType.NVarChar).Value = description;
            cmd.Parameters.Add("state", SqlDbType.Bit).Value = state;
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



    #region setStatusCategory()
    public int setStatusCategory( string categoryId , bool state )
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = @" IF  EXISTS (SELECT * FROM tblCategory WHERE tblCategory.CatId = @CatId) 
                    BEGIN UPDATE  tblCategory SET CatState = @state WHERE tblCategory.CatId = @CatId END
                "; //or SELECT * FROM tblComment.Id, tblComment.Name .... 
            cmd.Parameters.Add("CatId", SqlDbType.Int).Value = categoryId;
        
            cmd.Parameters.Add("state", SqlDbType.Bit).Value = state;
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
}