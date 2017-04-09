using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Create_Parameter
/// </summary>
public class Create_Parameter
{
	public Create_Parameter()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static SqlParameter Convert_Int(String pname, String pvalue) 
    {
        SqlParameter p = new SqlParameter();
        p.DbType = DbType.Int32;
        p.ParameterName = pname;
        p.Value = pvalue;

        return p;
    } 


    public static SqlParameter Convert_String(String pname, String pvalue)
    {

        SqlParameter p = new SqlParameter();
        p.DbType = DbType.String;
        p.ParameterName = pname;
        p.Value = pvalue;


        return p;
    }

    public static SqlParameter Convert_Date(String pname, String pvalue)
    {
        SqlParameter p = new SqlParameter();
        p.Direction = ParameterDirection.Input;
        p.DbType = DbType.Date;
        p.ParameterName = pname;
        p.ParameterName = pvalue;

        return p;
       
    }
}



