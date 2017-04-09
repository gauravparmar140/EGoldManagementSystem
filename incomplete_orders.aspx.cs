using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        DataTable dt = Select_Logic.find_incomplete_order();
        grd_incomplete_order.DataSource = dt;
        grd_incomplete_order.DataBind();




    }



    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_incomplete_order.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.find_incomplete_order();
        grd_incomplete_order.DataSource = dt;
        grd_incomplete_order.DataBind();


    }



}