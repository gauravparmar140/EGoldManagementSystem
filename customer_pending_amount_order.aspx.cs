using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            DataTable dt = Select_Logic.load_order_remaining_amount();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }  
    }
       protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.load_order_remaining_amount();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        
    }
 

    }
