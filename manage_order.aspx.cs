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
            bind_order();
        }
    }
    private void bind_order() 
    {
        DataTable dt = Select_Logic.load_order_data();
        grv_order.DataSource = dt;
        grv_order.DataBind();


    }




    protected void grv_order_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        
        User_Property_id.id = e.CommandArgument.ToString();
        if (e.CommandName == "del")
        {
            ModalPopupExtender1.Show();
        }


        if (e.CommandName == "edt")
        {
            Session["id"] = User_Property_id.id;
            Response.Redirect("add_order.aspx");
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
            Update_Logic.update_status("update_status_tbl_order", status, User_Property_id.id);
            bind_order();
        }
 }


    protected void modal_ok_Click(object sender, EventArgs e)
    {
        Delete_Logic.Delete_data("delete_tbl_order_sp", User_Property_id.id);
        bind_order();            
  
    }

    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grv_order.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.load_order_data();
        grv_order.DataSource = dt;
        grv_order.DataBind();
        grv_order.DataBind();
        
    }

}







