using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Order_Selling
/// </summary>
public class User_Property_Tbl_Order_Selling
{
	public User_Property_Tbl_Order_Selling()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    protected string _o_id;
    protected string _c_id;
    protected string _prod_price;

    protected string _bill_no;
    protected string _total_payment;
    protected string _paid_amount;
    protected string _remaininig_amount;


    public string o_id
    {
        get { return _o_id; }
        set { _o_id = value; }
    }

    public string c_id
    {
        get { return _c_id; }
        set { _c_id = value; }
    }

    public string prod_price
    {
        get { return _prod_price; }
        set { _prod_price = value; }
    }


    public string total_payment
    {
        get { return _total_payment; }
        set { _total_payment = value; }
    }

    public string bill_no
    {
        get { return _bill_no; }
        set { _bill_no = value; }
    }


    public string paid_amount
    {
        get { return _paid_amount; }
        set { _paid_amount = value; }
    }

    public string remaininig_amount
    {
        get { return _remaininig_amount; }
        set { _remaininig_amount = value; }
    }


}