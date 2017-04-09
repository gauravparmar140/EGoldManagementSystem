using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (Session["username"] == null)
        {
            Response.Redirect("LoginPage.aspx");
        }

        if (Session["error_product_selling_page"] != "")
            error_msg2.Text = Session["error_product_selling_page"].ToString();
             
        

    }

     
    
    protected void grv_product_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();

        if (e.CommandName == "sell")
        {
            Session["id"] = id;
            Session["unique_id"] = txt_unique_id.Text;
            Response.Redirect("product_selling.aspx");
        }
    }
    
    //bill_no-  pay remaining amount
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int.Parse(txt_bill_no.Text);
        }
        catch (Exception e1)
        {
            error_msg.Text = "Enter Proper Bill NO";
        }
       
        Session["remaining_amount_customer"] = txt_bill_no.Text;
        Response.Redirect("product_selling.aspx");
    }

   
    
    
    //search by product name or product id
    protected void Button6_Click(object sender, EventArgs e)
    {
        
        if (txt_unique_id.Text == "" && txt_product_name.Text == "")
        {
           error_msg.Text = "Enter Product Id  OR Product Name";
           error_msg.ForeColor = System.Drawing.Color.Red;
           return;
        
        }
 else if (txt_unique_id.Text != "" && txt_product_name.Text != "")
        {
            error_msg.Text = "Do Not Enter Product Id  OR Product Name";
            error_msg.ForeColor = System.Drawing.Color.Red;
            return;
        
        }
        else if (txt_unique_id.Text != "")
        {

            DataTable dt = Select_Logic.search_product("select_tbl_product_give_unique_no_sp", txt_unique_id.Text);
            if (dt.Rows.Count == 0)
            {
                error_msg.Text = "product not found";
                grv_product.DataSource = null;
                grv_product.DataBind();
            }
            else
            {
                grv_product.DataSource = dt;
                grv_product.DataBind();
            }
        }

        else if (txt_product_name.Text != "")
        {

            DataTable dt = Select_Logic.search_product2("select_tbl_product_give_product_name", txt_product_name.Text);

            //check wherther data is available or not
            if (dt.Rows.Count == 0)
            {
                error_msg.Text = "product does not found";
                grv_product.DataSource = null;
                grv_product.DataBind();
            }
            else
            {
                grv_product.DataSource = dt;
                grv_product.DataBind();
            }
        }

     }
    protected void btn_order_ok_Click(object sender, EventArgs e)
    {
        try
        {
            int.Parse(txt_bill_no.Text);
        }
        catch (Exception e0)
        {
            error_msg3.Text = "Enter Proper Bill NO";
        }

        Session["bill_no"] = txt_order_bill_no.Text;
        Response.Redirect("order_selling.aspx");
    }
    protected void modal_btn_ok_Click(object sender, EventArgs e)
    {
        txt_bill_no.Text = "";
        txt_product_name.Text = "";
        txt_unique_id.Text = "";
    }
 
    protected void txt_unique_id_TextChanged(object sender, EventArgs e)
    {
        error_msg.Text = "";
    }
}