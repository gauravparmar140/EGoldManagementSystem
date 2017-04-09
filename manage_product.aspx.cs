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
            bind_product();
        }

    }
    private void bind_product() {
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_product_manage_sp");
        grv_product.DataSource = dt;
        grv_product.DataBind();
    }

    private void deduct_stock_delete_product(string id) {

        DataTable dt = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id",id);
        int stock = Convert.ToInt32((dt.Rows[0][2]).ToString());
        stock = stock - 1;
        //update stock
        string sub_cat_id = dt.Rows[0]["sub_cat_id"].ToString();
        Update_Logic.deduct_stock(sub_cat_id, stock.ToString());
        


    }

    protected void grv_product_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        User_Property_id.id = e.CommandArgument.ToString();

        if (e.CommandName == "del")
        {
            ModalPopupExtender1.Show();
        }


        if (e.CommandName == "edt")
        {
            Session["id"] = User_Property_id.id;
            Response.Redirect("add_product.aspx");
        }

        string status = "";
        //if (e.CommandName == "act" || e.CommandName == "dec")
        //{
        //    if (e.CommandName == "act")
        //    {
        //        status = "1";

        //        //and update stock=stock+1
        //        DataTable dt1 = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id", User_Property_id.id);
        //        int stock = Convert.ToInt32((dt1.Rows[0][2]).ToString());
        //        stock = stock + 1;
        //        //update stock
        //        string sub_cat_id = dt1.Rows[0]["sub_cat_id"].ToString();
        //        Update_Logic.deduct_stock(sub_cat_id, stock.ToString());

        //    }
        //    else
        //    {
        //        status = "0";
        //        //and update stock=stock+1
        //        DataTable dt1 = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id", User_Property_id.id);
        //        int stock = Convert.ToInt32((dt1.Rows[0][2]).ToString());
        //        stock = stock - 1;
        //        //update stock
        //        string sub_cat_id = dt1.Rows[0]["sub_cat_id"].ToString();
        //        Update_Logic.deduct_stock(sub_cat_id, stock.ToString());



        //    }
        //    Update_Logic.update_status("update_status_tbl_product_sp", status, User_Property_id.id);
            




            bind_product();


        }


   
    protected void modal_ok_Click(object sender, EventArgs e)
    {
        deduct_stock_delete_product(User_Property_id.id);
        Delete_Logic.Delete_data("delete_tbl_product_sp", User_Property_id.id);
        bind_product();

    }

    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grv_product.PageIndex = e.NewPageIndex;
        bind_product();

    }

}