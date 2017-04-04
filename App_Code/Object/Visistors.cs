using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Visistors
/// </summary>
public class Visistors
{
    //DataTable getAllVisistor();
    //int countVisistor();
    //int coutVisitorWithDay(int dayAgo );
    //int countVisitorOnline();
	public Visistors()
	{

	}

    #region size()
    public int size(int state = -1)
    {
        DataTable objTbl = new DataTable();
        try
        {
            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pvhConn"].ConnectionString);
            sqlConn.Open();
            SqlCommand cmd = sqlConn.CreateCommand();
            cmd.CommandText = "SELECT COUNT (tblVisistor.VisistorId) FROM tblVisistor "; //or SELECT * FROM tblUser.Id, tblUser.Name .... 
            if (state != -1)
            {
                cmd.CommandText += " WHERE tblVisistor.State = " + state + "";
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