using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for Create_Connection
/// </summary>
public class Create_Connection
{
	public Create_Connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    static SqlConnection conn=null;
    
    public static SqlConnection open_Connection(){
         
          conn=new SqlConnection(ConfigurationManager.ConnectionStrings["Connect"].ConnectionString);
          conn.Open();
          return conn;
    }

    public static void close_Connection()
    {
        conn.Close();
        conn.Dispose();
    }
        
}