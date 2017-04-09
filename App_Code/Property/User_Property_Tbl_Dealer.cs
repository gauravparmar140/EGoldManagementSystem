using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for user_property_tbl_dealer
/// </summary>
public class User_Property_Tbl_Dealer
{
	public User_Property_Tbl_Dealer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    protected string _d_id;
    public string d_id
    {
        get{return _d_id;}
        set{ this._d_id=value;}
    }

    protected string _d_name;
    public string d_name
    {
        get { return _d_name; }
        set { this._d_name = value; }
    }

    protected string _d_email_address;
    public string d_email_address
    {
        get { return _d_email_address; }
        set { this._d_email_address = value; }
    }


    protected string _d_location;
    public string d_location
    {
        get { return _d_location; }
        set { this._d_location = value; }
    }

    protected string _d_contact;
    public string d_contact
    {
        get { return _d_contact; }
        set { this._d_contact = value; }
    }

    protected string _d_status;
    public string d_status
    {
        get { return _d_status; }
        set { this._d_status = value; }
    }













}