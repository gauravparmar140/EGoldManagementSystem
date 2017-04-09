using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Stock
/// </summary>
public class User_Property_Tbl_Stock
{
	public User_Property_Tbl_Stock()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    protected string _s_id;
    protected string _sub_cat_id;
    protected string _current_stock;
    protected string _l_date; 


    public string s_id
    {
        get { return _s_id; }
        set { _s_id = value; }
    }

    
    public string sub_cat_id
    {
        get { return _sub_cat_id; }
        set { _sub_cat_id = value; }
    }
     
    
    public string current_stock
    {
        get { return _current_stock; }
        set { _current_stock = value; }
    }

    public string l_date
    {
        get { return _l_date; }
        set { _l_date = value; }
    }
     

}