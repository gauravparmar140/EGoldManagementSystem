using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String username = txt_user_name.Text;
        String password = txt_password.Text;

        DataTable dt = Select_Logic.Login(username, password);
        String temp_u = "";
        String temp_p = "";
        try
        {
            temp_u = dt.Rows[0][1].ToString();
            temp_p = dt.Rows[0][2].ToString();
        }

        catch (IndexOutOfRangeException e1)
        {
            ErroeMessage.Text = "Invalid LogIn";
            ErroeMessage.ForeColor = System.Drawing.Color.Red;
        }


        if (temp_u.Equals(username) && temp_p.Equals(password))
        {
            Session["username"] = temp_u;
            Response.Redirect("home.aspx");
        }


        else
        {
            ErroeMessage.Text = "Invalid LogIn";
            ErroeMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}