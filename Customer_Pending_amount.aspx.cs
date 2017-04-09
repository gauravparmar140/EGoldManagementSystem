using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        DataTable dt = Select_Logic.find_customer_pending_bill();
        dt.Columns.Add("dt_purchase_date");
        foreach (DataRow dr in dt.Rows)
        {
            dr["dt_purchase_date"] = Convert.ToDateTime(dr["purchase_date"]).ToString("dd/MM/yyyy");
        }
        grd_customer.DataSource = dt;
        grd_customer.DataBind();
    }

    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_customer.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.find_customer_pending_bill();
        grd_customer.DataSource = dt;
        grd_customer.DataBind();

    }

    protected void generate_report_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report_customer_pending_amount_selling.aspx");

    }
}