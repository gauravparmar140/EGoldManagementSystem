using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Product
/// </summary>
public class User_Property_Tbl_Product
{
	public User_Property_Tbl_Product()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    protected String _p_id;
    protected String _d_id;
    protected String _sub_cat_id;
    protected String _prod_name;
    protected String _prod_description;
    protected String _prod_weight;
    protected String _prod_unique_no;
    protected String _prod_quality;
    protected String _prod_type;

    protected String _p_price;

    protected string _purchase_date;

    public string purchase_date
    {
        get { return _purchase_date; }
        set { _purchase_date = value; }
    }




    public string prod_price
    {
        get { return _p_price; }
        set { _p_price = value; }

    }

    public string p_id
    {
        get { return _p_id; }
        set { _p_id = value; }

    }


    public string prod_name
    {
        get { return _prod_name; }
        set { _prod_name = value; }

    }
    
    public string d_id
    {
        get { return _d_id; }
        set { _d_id = value; }
         
    }

    public string sub_Cat_id
    {
        get { return _sub_cat_id; }
        set { _sub_cat_id = value; }

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

    public string prod_unique_no
    {
        get { return _prod_unique_no; }
        set { _prod_unique_no = value; }

    }

    public string prod_quality
    {
        get { return _prod_quality; }
        set { _prod_quality = value; }

    }

    public string prod_type
    {
        get { return _prod_type; }
        set { _prod_type = value; }

    }


    





}