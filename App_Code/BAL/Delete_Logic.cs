using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Delete_Logic
/// </summary>
public class Delete_Logic
{
	public Delete_Logic()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static int Delete_data(string pname, string id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@id", id));
        return Create_Command.Execute_Non_Query(cmd);
    }
}