using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Userr_Property_Tbl_Selling
/// </summary>
public class Userr_Property_Tbl_Selling
{
	public Userr_Property_Tbl_Selling()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    protected string _s_id;
    protected string _c_id;
    protected string _bill_no;
    protected string _total_amount;
    protected string _remaining_amount;
    protected string _purchase_date;
    protected string _current_pay;
    
    public string current_pay {
        get {
            return _current_pay;
        }
        set {
            _current_pay = value;
        }

    }



    public string s_id
    {
        get { return _s_id; }
        set { _s_id = value; }
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


    public string remaining_amount
    {
        get { return _remaining_amount; }
        set { _remaining_amount = value; }
    }

    
    public string purchase_date
    {
        get { return _purchase_date; }
        set { _purchase_date = value; }
    }

    
}
