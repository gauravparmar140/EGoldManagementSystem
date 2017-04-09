using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Order
/// </summary>
public class User_Property_Tbl_Order
{
	public User_Property_Tbl_Order()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    protected string _order_id;
    protected string _sub_cat_id;
    protected string _c_id;
    protected string _book_name;
    protected string _design_no;
    protected string _prod_weight;
    protected string _order_date;
    protected string _o_type;
    protected string _order_complete_date;
    protected string _order_quality;
    protected string _total_pay;
    protected string _remaining_pay;

    protected string _product_price;

    public string product_price
    {
        get { return _product_price; }
        set { _product_price = value; }
    }

    protected string _product_name;

    public string product_name
    {
        get { return _product_name; }
        set { _product_name = value; }
    }

    public string sub_cat_id
    {   
        get{return _sub_cat_id;}
        set{_sub_cat_id=value;}
    }

    public string order_id
    {
        get { return _order_id; }
        set { _order_id = value; }
    }

        public string c_id
    {   
        get{return _c_id;}
        set{_c_id=value;}
    }

    public string book_name
    {   
        get{return _book_name;}
        set{_book_name=value;}
    }

    public string design_no
    {   
        get{return _design_no; }
        set{_design_no=value;}
    }

    public string prod_weight
    {   
        get{return _prod_weight; }
        set{_prod_weight=value;}
    }

    public string order_date
    {   
        get{return _order_date;}
        set{_order_date=value;}
    }

    public string o_type
    {   
        get{return _o_type; }
        set{_o_type=value;}
    }

    public string order_complete_date
    {   
        get{return _order_complete_date;}
        set{_order_complete_date=value;}
    }

    public string order_quality
    {
        get { return _order_quality; }
        set{_order_quality=value;}
    }

    public string total_pay
    {
        get { return _total_pay; }
        set { _total_pay = value; }
    }
    public string remaining_pay
    {
        get { return _remaining_pay; }
        set { _remaining_pay = value; }
    }


        
}