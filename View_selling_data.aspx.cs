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
        if (Session["username"] =="")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        DataTable dt = Select_Logic.selling_data();
        dt.Columns.Add("dt_purchase_date");
        foreach (DataRow dr in dt.Rows)
        {
            dr["dt_purchase_date"] = Convert.ToDateTime(dr["purchase_date"]).ToString("dd/MM/yyyy");
        }
        grd_selling.DataSource = dt;
        grd_selling.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = Select_Logic.select_tbl_product_selling_from_to(TextBox1.Text, TextBox2.Text);
        grd_selling.DataSource = dt;
        grd_selling.DataBind();
    }
    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_selling.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.select_tbl_product_selling_from_to(TextBox1.Text, TextBox2.Text);
        grd_selling.DataSource = dt;
        grd_selling.DataBind();

    }

    protected void btn_generate_report_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report_Total_Product_Selling.aspx");
    }
}