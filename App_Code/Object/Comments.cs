using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Comments
/// </summary>
public class Comments
{
    //DataTable getAllComment();
    //DataTable getCommentById(string commentId);
    //DataTable getCommentByPostId(string postId);
    //int countCommentByPostId(string postId);
    //int disableCommentById(string commentId);
    //int enableCommentById(string commentId);
    //int addComment();
    //int addOrUpdateComment();

    string CommentName;
    string CommentContent;
    bool CommentState;
    string CommentDateTime;
    int CommentPostId;


	public Comments()
	{
	}

    public Comments(string cmtName , string cmtContent, int comtPostId , string cmtDateTime , bool cmtState)
    {
        this.CommentName = cmtName;
        this.CommentContent = cmtContent;
        this.CommentPostId = comtPostId;
        this.CommentDateTime = cmtDateTime;
        this.CommentState = cmtState;
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
            cmd.CommandText = "SELECT * FROM tblComment "; //or SELECT * FROM tblComment.Id, tblComment.Name .... 
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

    #region getDataByAuthor(string userId, int state = 1)  || Lay danh sach comment cho tunng tac gia
    public DataTable getDataByAuthor(string authorId, int state = 1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " SELECT * FROM tblComment WHERE tblComment.PostId IN ( SELECT PostId FROM tblPost WHERE tblPost.PostAuthorId = @PostAuthorId ) "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblComment.State = 0 "; }
            else
            {
                cmd.CommandText += " AND tblComment.State = 1 ";
            }
            cmd.Parameters.Add("PostAuthorId", SqlDbType.Int).Value = authorId;
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

    #region getDataByInPost( int state = 1)  || Lay danh sach comment cho tunng tac gia
    public DataTable getDataByInPost( string postId, int state = 1 )
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " SELECT * FROM tblComment WHERE tblComment.PostId  = @PostId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblComment.State = 0 "; }
            else
            {
                cmd.CommandText += " AND tblComment.State = 1 ";
            }
            cmd.Parameters.Add("PostId", SqlDbType.Int).Value = postId;
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

    #region countCommentByPostId( int state = 1)  || Lay danh sach comment cho tunng tac gia
    public int countCommentByPostId(string postId, int state = 1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " SELECT COUNT (tblComment.CmtId) FROM tblComment WHERE tblComment.PostId  = @PostId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            if (state == 0) { cmd.CommandText += " AND tblComment.State = 0 "; }
            else
            {
                cmd.CommandText += " AND tblComment.State = 1 ";
            }
            cmd.Parameters.Add("PostId", SqlDbType.Int).Value = postId;
           var count  = cmd.ExecuteScalar();
            sqlConn.Close();
            sqlConn.Dispose();
            if (cmd != null) return int.Parse(count.ToString());
        }
        catch (Exception e)
        {
            Console.Write(e);
            return 0;
        }
        return 0;
    }
    #endregion

    #region disableCommentById()  || Lay danh sach comment cho tunng tac gia
    public int disableCommentById( string commentId )
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblComment SET tblComment.State = 0  WHERE tblComment.CommentId  = @CommentId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            cmd.Parameters.Add("CommentId", SqlDbType.Int).Value = commentId;
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

    #region enableCommentById()  || Lay danh sach comment cho tunng tac gia
    public int enableCommentById(string commentId)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " UPDATE tblComment SET tblComment.State = 1  WHERE tblComment.CommentId  = @CommentId "; //or SELECT * FROM tblPost.Id, tblPost.Name .... 
            cmd.Parameters.Add("CommentId", SqlDbType.Int).Value = commentId;
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

    #region addComment
    public int addComment(string CmtName, string CmtContent,string CmtPostId,string CmtUserId, bool CmtState )
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " INSERT INTO tblComment (  CmtName , CmtContent, CmtPostId ,PostContent , CmtUserId ,CmtState ) "
                                        + "  VALUES  ( @CmtName , @CmtContent , @CmtPostId ,@PostContent , @CmtUserId ,@CmtState  ) ; "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("CmtName", SqlDbType.NVarChar).Value = (CmtName);
            cmd.Parameters.Add("CmtContent", SqlDbType.NVarChar).Value = (CmtContent);
            cmd.Parameters.Add("CmtPostId", SqlDbType.Int).Value = (CmtPostId);
            cmd.Parameters.Add("CmtUserId", SqlDbType.Int).Value = (CmtUserId);
            cmd.Parameters.Add("CmtState", SqlDbType.Bit).Value = (CmtState);

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

    #region addOrUpdateComment
    public int addOrUpdateComment(string CmtId, string CmtName, string CmtContent, string CmtPostId, string CmtUserId, bool CmtState)
    {
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = " IF NOT EXIST (SELECT tblComment.CmtName FROM tblComment WHERE tblComment.CmtId = @CmtId) "
                +" BEGIN INSERT INTO tblComment (  CmtName , CmtContent, CmtPostId,CmtUserId ,CmtState ) "
                                        + "  VALUES  ( @CmtName , @CmtContent , @CmtPostId  , @CmtUserId ,@CmtState  )  END"
                + " ELSE BEGIN  UPDATE tblComment SET  CmtName=@CmtName, CmtContent=CmtContent, CmtPostId=@CmtPostId, CmtUserId=@CmtUserId, CmtState=@CmtState  END "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            cmd.Parameters.Add("CmtName", SqlDbType.NVarChar).Value = (CmtName);
            cmd.Parameters.Add("CmtContent", SqlDbType.NVarChar).Value = (CmtContent);
            cmd.Parameters.Add("CmtPostId", SqlDbType.Int).Value = (CmtPostId);
            cmd.Parameters.Add("CmtUserId", SqlDbType.Int).Value = (CmtUserId);
            cmd.Parameters.Add("CmtState", SqlDbType.Bit).Value = (CmtState);

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

    #region size()
    public int size(int state = -1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT COUNT (tblComment.CmtId) FROM tblComment "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            if (state != -1)
            {
                cmd.CommandText += " WHERE tblComment.State = " + state + "";
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