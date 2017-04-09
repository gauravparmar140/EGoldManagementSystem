using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_Tbl_Customer
/// </summary>
public class User_Property_Tbl_Customer
{
	public User_Property_Tbl_Customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    protected string _c_id;
    protected string _c_name;
    protected string _c_mobile_no;
    protected string _c_email_address;
    protected string _c_address;


    public string c_id
    {
        get { return _c_id; }
        set { _c_id = value; }
    }


    public string c_name
    {
        get { return _c_name; }
        set { _c_name = value; }
    }

    public string c_mobile_no
    {
        get { return _c_mobile_no; }
        set { _c_mobile_no = value; }
    }

    public string c_email_address
    {
        get { return _c_email_address; }
        set { _c_email_address = value; }
    }

    public string c_address
    {
        get { return _c_address; }
        set { _c_address = value; }
    }



}