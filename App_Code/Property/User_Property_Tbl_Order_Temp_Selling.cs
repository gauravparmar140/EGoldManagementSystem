using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Temp_Selling
/// </summary>
public class User_Property_Tbl_Order_Temp_Selling
{
	public User_Property_Tbl_Order_Temp_Selling()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    protected string _t_id;
    protected string _p_id;
    protected string _c_id;
    protected string _total_amount;
    protected string _bill_no;
    protected string _product_name;
    protected string _order_id;


    public string order_id
    {
        get { return _order_id; }
        set { _order_id = value; }
    }

    public string product_name
    {
        get { return _product_name; }
        set { _product_name= value; }
    }


    public string t_id
    {
        get { return _t_id; }
        set { _t_id = value; }
    }

    public string p_id
    {
        get { return _p_id; }
        set { _p_id = value; }
    }

    public string c_id
    {
        get { return _c_id; }
        set { _c_id = value; }
    }


    public string bill_no
    {
        get { return _bill_no; }
        set { _bill_no = value; }
    }

    public string total_amount
    {
        get { return _total_amount; }
        set { _total_amount = value; }
    }


    

}