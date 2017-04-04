using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Posts
/// </summary>
public class Posts
{
//    DataTable getData();         // Su dung trong trang quan tri
//    DataTable getDataByAuthor(int UsersId, int State = 1);
//    int addPost(string postTitle,string postImg, string postDescription , string postContent , int postStar , int postCategoryId , bool postState);
//    int addOrEditPost(string postTitle, string postImg, string postDescription, string postContent, int postStar, int postCategoryId, bool postState);
//    int countNewPostByDay(int dayAgo);
//    int linkCommentToPost(Comments c, int postId);

    
	public Posts()
	{
    }

    #region getAllData()
    public  DataTable getAllData(int star = -1, int limit = 20 , bool random = false)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT TOP "+ limit +" * FROM tblPost "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (star != -1) { cmd.CommandText += " WHERE PostStar = "+star+" ";  }
            if (random) {cmd.CommandText+=" ORDER BY NEWID() " ;}
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

    #region getDataByCategory(string userId, int state = 1)
    public DataTable getDataByCategory(string postCategoryId, int state = 1, int top = 20)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " SELECT TOP " + top + " * FROM tblPost WHERE tblPost.PostCategoryId =  @PostCategoryId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblPost.PostState = 0 "; }
            else
            {
                cmd.CommandText += " AND tblPost.PostState = 1 ";
            }

            cmd.Parameters.Add("PostAuthorId", SqlDbType.Int).Value = postCategoryId;
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


    #region getDataByAuthor(string userId, int state = 1)
    public DataTable getDataByAuthor(string userId, int state = 1, int top = 100)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " SELECT TOP "+top+" * FROM tblPost WHERE tblPost.PostAuthorId =  @PostAuthorId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblPost.PostState = 0 "; }
            else
            {
                cmd.CommandText += " AND tblPost.PostState = 1 ";
            }

            cmd.Parameters.Add("PostAuthorId", SqlDbType.Int).Value = userId;
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

    #region countNewPostByDay(string userId, int dayAgo)
    public int countNewPostByDay(string userId, int dayAgo = 0, int state = 1)
    {
       
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT COUNT (tblPost.PostId) FROM tblPost WHERE tblPost.PostAuthorId =  @PostAuthorId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblPost.State = 0 "; }
            else
            {
                cmd.CommandText += " AND tblPost.State = 1 ";
            }
            if (dayAgo!= 0)
            {
                cmd.CommandText += " AND tblPost.PostDayCreate BETWEEN DATE_SUB(DATE(NOW()),INTERVAL " + dayAgo + " DAY  ) AND DATE_SUB(DATE(NOW)),INTERVAL 0 DAY )";
            }
            cmd.Parameters.Add("PostAuthorId", SqlDbType.Int).Value = userId;
            var count = cmd.ExecuteScalar();
            sqlConn.Close();
            sqlConn.Dispose();
            if(count!=null) return int.Parse(count.ToString());
          }
        catch (Exception e)
        {
            Console.Write(e);
            return -1;
        }
        return -1;
    }
    #endregion

    #region addPost 
    public int addPost(string postTitle, string postImg, string postDescription, string postContent, string postAuthorId, string postCategoryId, bool postState)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " INSERT INTO tblPost (  PostTitle , PostImg, PostDescription ,PostContent , PostAuthorId ,PostStar  ,PostCategoryId ,PostState ,PostDayCreate ) "
                                        + " VALUES (  @PostTitle , @PostImg , @PostDescription ,@PostContent , @PostAuthorId ,@PostStar  , @PostCategoryId, @PostState,getdate() ) ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("PostTitle", SqlDbType.NVarChar).Value = (postTitle);
            cmd.Parameters.Add("PostImg", SqlDbType.NVarChar).Value = (postImg);
            cmd.Parameters.Add("PostDescription", SqlDbType.NVarChar).Value = (postDescription);
            cmd.Parameters.Add("PostContent", SqlDbType.NVarChar).Value = (postContent);
            cmd.Parameters.Add("PostAuthorId", SqlDbType.NVarChar).Value = (postAuthorId);
            cmd.Parameters.Add("PostStar", SqlDbType.Int).Value = 1;
            cmd.Parameters.Add("PostCategoryId", SqlDbType.NVarChar).Value = (postCategoryId);
            cmd.Parameters.Add("PostState", SqlDbType.Bit).Value = (postState);

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

    #region addOrEditPost
    public int addOrEditPost( string postId,string postTitle, string postImg, string postDescription, string postContent, string postAuthorId, string postDayCreate, string postCategoryId, bool postState)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " IF NOT EXIST (SELECT tblPost.PostTitle FROM tblPost WHERE tblPost.PostId = @PostId ) "
                + " BEGIN  INSERT INTO tblPost (  PostTitle , PostImg, PostDescription ,PostContent , PostAuthorId ,PostDayCreate , PostDayCreate ,PostCategoryId ,PostState  ) "
                                        + " VALUES (  @PostTitle , @PostImg , @PostDescription ,@PostContent , @PostAuthorId ,@PostDayCreate  , @PostCategoryId, @PostState ) "
                                        +" END "
               + " ELSE BEGIN UPDATE  tblPost SET PostTitle=@PostTitle AND  PostImg=@PostImg AND PostDescription= @PostDescription AND   PostContent = @PostContent AND PostAuthorId= @PostAuthorId AND PostDayCreate=@PostDayCreate AND  PostCategoryId=@PostCategoryId AND PostState =@PostState  END "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("PostId", SqlDbType.Int).Value = (postId);
            cmd.Parameters.Add("PostTitle", SqlDbType.NVarChar).Value = (postTitle);
            cmd.Parameters.Add("PostImg", SqlDbType.NVarChar).Value = (postImg);
            cmd.Parameters.Add("PostDescription", SqlDbType.NVarChar).Value = (postDescription);
            cmd.Parameters.Add("PostContent", SqlDbType.NVarChar).Value = (postContent);
            cmd.Parameters.Add("PostAuthorId", SqlDbType.NVarChar).Value = (postAuthorId);
            cmd.Parameters.Add("PostDayCreate", SqlDbType.NVarChar).Value = (postDayCreate);
            cmd.Parameters.Add("PostCategoryId", SqlDbType.NVarChar).Value = (postCategoryId);
            cmd.Parameters.Add("PostState", SqlDbType.Bit).Value = (postState);

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

    #region size()
    public int size(int state = -1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT COUNT (tblPost.PostId) FROM tblPost "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            if (state != -1)
            {
                cmd.CommandText += " WHERE tblPost.State = " + state + "";
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
}