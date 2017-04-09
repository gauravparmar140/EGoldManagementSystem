using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User_Property_tbl_user
/// </summary>
public class User_Property_tbl_user
{
	public User_Property_tbl_user()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string _user_name;
    private string _password;

    private string _address;

    private string _photo;


private string _shop_name;



    public string user_name
    {
        get { return _user_name; }
        set { _user_name = value; }
    }
    public string password
    {
        get { return _password; }
        set { _password = value; }
    }


    public string address
    {
        get { return _address; }
        set { _address = value; }
    }


    public string shop_name
    {
        get { return _shop_name; }
        set { _shop_name = value; }
    }
    public string photo
    {
        get { return _photo; }
        set { _photo = value; }
    }



}