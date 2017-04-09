using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Old_Intake
/// </summary>
public class User_Property_Tbl_Old_Intake
{
	public User_Property_Tbl_Old_Intake()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    protected String _old_id;
    protected String _c_id;
    protected String _s_cat_id;
    protected String _prod_description;
    protected String _prod_weight;
    protected String _prod_price;
    protected String _in_date;
    protected String _prod_type;

    public string c_id
    {
        get { return _c_id; }
        set { _c_id = value; }
    }

    public string old_id
    {
        get { return _old_id; }
        set { _old_id = value; }
    }


    public string s_cat_id
    {
        get { return _s_cat_id; }
        set { _s_cat_id = value; }
    }

    protected String _prod_quality;
    public string prod_quality
    {
        get { return _prod_quality; }
        set { _prod_quality = value; }
    }

    public string prod_description
    {
        get { return _prod_description; }
        set { _prod_description = value; }
    }
    public string prod_weight
    {
        get { return _prod_weight; }
        set { _prod_weight = value; }
    }
    public string prod_price
    {
        get { return _prod_price; }
      
        set { _prod_price = value; }
    }


    public string in_date
    {
        get { return _in_date; }
        set { _in_date = value; }
    } 

    public string  prod_type
    {
        get { return _prod_type; }
        set { _prod_type = value; }
    } 



}