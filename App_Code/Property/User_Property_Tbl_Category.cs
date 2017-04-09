using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Category
/// </summary>
/// 



public class User_Property_Tbl_Category
{
	public User_Property_Tbl_Category()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    protected String _cat_name;
    protected String _cat_photo;
    protected String _cat_id;

    public string cat_id {
        get { return _cat_id; }
        set { _cat_id=value; }
    }


    public string cat_name
    {
        get { return _cat_name; }
        set { _cat_name = value; }
    }
   
    public string cat_photo
    {
        get { return _cat_photo; }
        set { _cat_photo = value; }
    }



}