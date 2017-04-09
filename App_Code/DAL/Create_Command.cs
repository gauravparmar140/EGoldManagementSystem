using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Create_Command
/// </summary>
public class Create_Command
{
	public Create_Command()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static int Execute_Non_Query(SqlCommand cmd){

        try
        {
            cmd.Connection = Create_Connection.open_Connection();
            cmd.CommandType = CommandType.StoredProcedure;
            return cmd.ExecuteNonQuery();
        }
        finally 
        {
            Create_Connection.close_Connection();
        }

    }

    
    public static DataTable Execute_Query(SqlCommand cmd) {
        cmd.Connection = Create_Connection.open_Connection();
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
     }

}