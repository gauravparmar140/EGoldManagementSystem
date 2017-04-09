using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        if (!IsPostBack)
        {
            bind_stock();
        }
    }

    private void bind_stock()
    {
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_stock_manage_sp");
        dt.Columns.Add("dt_purchase_date");
        foreach (DataRow dr in dt.Rows)
            {
                dr["dt_purchase_date"] = Convert.ToDateTime(dr["last_update_date"]).ToString("dd/MM/yyyy");
        }
        grv_stock.DataSource = dt;
        grv_stock.DataBind();
    }
    protected void grv_stock_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();

        if (e.CommandName == "del")
        {
            Delete_Logic.Delete_data("delete_tbl_stock_sp", id);
            bind_stock();
        }


        

        string status = "";
        if (e.CommandName == "act" || e.CommandName == "dec")
        {
            if (e.CommandName == "act")
            {
                status = "1";
            }
            else
            {
                status = "0";
            }
            Update_Logic.update_status("update_status_tbl_stock_sp", status, id);
            bind_stock();


        }

    }//end row command
    
    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grv_stock.PageIndex = e.NewPageIndex;
        bind_stock();
        
    }

}