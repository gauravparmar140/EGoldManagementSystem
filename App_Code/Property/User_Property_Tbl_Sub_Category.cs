using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Sub_Category
/// </summary>
public class User_Property_Tbl_Sub_Category
{
	public User_Property_Tbl_Sub_Category()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    protected String _sub_cat_id;
    protected String _cat_id;
    protected String _sub_cat_name;


    public string sub_cat_id {
        get { return _sub_cat_id; }
        set { _sub_cat_id=value; }
    }


    public string cat_id
    {
        get { return _cat_id; }
        set { _cat_id = value; }

    }

    public string sub_cat_name
    {
        get { return _sub_cat_name; }
        set { _sub_cat_name = value; }

    }
      
}