using System;
using System.Text;
using System.Net;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{

public string cus_id = "";
public string bill_no = "";
public string bill_no2 = "";



    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
       

        if (Session["bill_no"] == "")
        { 
            bill_no = new Random().Next(10, 1000).ToString();
            Session["bill_no"] = bill_no;
        }

        if (Session["remaining_amount_customer"] != "")
        {
            Session["bill_no"] = Session["remaining_amount_customer"];
            find_remaining_customer_Data();
        }

        if (Session["Bill_no_customer_page"] != "") 
        {
            bill_no2 = Session["Bill_no_customer_page"].ToString() ;

            find_customer_data();

        }

    }

    public void find_customer_data() {
        String bill = Session["Bill_no_customer_page"].ToString();
        DataTable dt = Select_Logic.find_remaining_customer_Data("tbl_remaining_customer", bill);
        if (dt.Rows.Count == 0)
        {
            //set error message
            Session["error_product_selling_page"] = "No Data Found";
            Response.Redirect("home.aspx");


        }
        txt_current_gold_price.Enabled = false;
        txt_customer_address.Text = dt.Rows[0]["c_address"].ToString();
        txt_email_address.Text = dt.Rows[0]["c_email_address"].ToString();
        txt_mobile_no.Text = dt.Rows[0]["c_mobile_no"].ToString();
        txt_customer_name.Text = dt.Rows[0]["c_name"].ToString();
        txt_purchase_date.Text = dt.Rows[0]["purchase_date"].ToString();
        txt_total_amount.Text = dt.Rows[0]["remaining_amount"].ToString();

        btn_ok.Enabled = false;
        txt_unique_id2.Enabled = false;
        grv_view_prod.Enabled = false;
        Button5.Enabled = false;
        grv_prod_selling.Enabled = false;

    }


   

    
    private  void find_remaining_customer_Data() {

        String bill = Session["remaining_amount_customer"].ToString();

        try
        {
            int i = Convert.ToInt32(bill) + 3;
        }
        catch (Exception eq)
        {

            Session["error_product_selling_page"] = "Enter Proper Number";
            Response.Redirect("home.aspx");
        }

        DataTable dt = Select_Logic.find_remaining_customer_Data("tbl_remaining_customer", bill);
        if (dt.Rows.Count == 0)
        {
            //set error message
            Session["error_product_selling_page"] = "No Data Found";
            Response.Redirect("home.aspx");


        }
        txt_current_gold_price.Enabled = false;
        txt_customer_address.Text = dt.Rows[0]["c_address"].ToString();
        txt_email_address.Text = dt.Rows[0]["c_email_address"].ToString();
        txt_mobile_no.Text = dt.Rows[0]["c_mobile_no"].ToString();
        txt_customer_name.Text = dt.Rows[0]["c_name"].ToString();
        txt_purchase_date.Text = dt.Rows[0]["purchase_date"].ToString();
        txt_total_amount.Text = dt.Rows[0]["remaining_amount"].ToString();

        btn_ok.Enabled = false;
        txt_unique_id2.Enabled = false;
        grv_view_prod.Enabled = false;
        Button5.Enabled = false;
        grv_prod_selling.Enabled = false;

        
    }

    // add new product in grid view
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt1 = Select_Logic.search_product("select_tbl_product_give_unique_no_sp", txt_unique_id2.Text);
        grv_view_prod.DataSource = dt1;
        grv_view_prod.DataBind();
       
    }
   
    
    // data entry in temp selling table 
    //sell first prodect from home page
    protected void btn_ok_Click(object sender, EventArgs e)
    {
          
        string unique_id = Session["unique_id"].ToString();
        string product_id = Session["id"].ToString();
        
        //insert customer data in customer table 
        User_Property_Tbl_Customer c = new User_Property_Tbl_Customer();
        c.c_address = txt_customer_address.Text;
        c.c_email_address = txt_email_address.Text;
        c.c_mobile_no = txt_mobile_no.Text;
        c.c_name = txt_customer_name.Text;
        Insert_Logic.Insert_Customer(c);
        
        
        //insert data in temp selling table
        cus_id = find_customer_id();
        User_Property_Tbl_Temp_Selling ut = new User_Property_Tbl_Temp_Selling();
        ut.p_id = product_id;
        ut.prod_price = find_product_price();
        ut.c_id = cus_id;
        ut.bill_no = Session["bill_no"].ToString();
        Insert_Logic.Insert_Temp_Selling(ut);
       
        
        Update_Logic.update_status("update_status_tbl_product_sp", "0", Session["id"].ToString());
        //deduct stock from tbl_stock where p_id=here p_id
        DataTable dt = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id", ut.p_id);
        int stock = Convert.ToInt32((dt.Rows[0][2]).ToString());
        stock = stock - 1;
        //update stock
        string sub_cat_id = dt.Rows[0]["sub_cat_id"].ToString();
        Update_Logic.deduct_stock(sub_cat_id, stock.ToString());
        

    }
    
    private string find_product_price()
    {
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_product_give_id", Session["id"].ToString());
        string weight = dt.Rows[0]["prod_weight"].ToString();

        int prod_price =  ( Convert.ToInt32(txt_current_gold_price.Text) * Convert.ToInt32(weight) ) /10; 
        return prod_price.ToString();
    }

    private string find_customer_id()
    {
        string id;
        string customer_name = txt_customer_name.Text;
        String customer_mobile = txt_mobile_no.Text;
        DataTable dt = Select_Logic.get_data_with_three_para("select_customer_sp", customer_name, customer_mobile);
        if (dt.Rows.Count == 0)
            id = "0";
        else
            id = dt.Rows[0][0].ToString();

        return id;
    }

    protected void grv_view_prod_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "sell")
        {
            User_Property_Tbl_Temp_Selling ut = new User_Property_Tbl_Temp_Selling();
            ut.c_id = find_customer_id();
            ut.p_id=e.CommandArgument.ToString();

            ut.bill_no = Session["bill_no"].ToString();


            string prod_price = "";
            DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_product_give_id", ut.p_id);
            prod_price = dt.Rows[0]["prod_price"].ToString();

            ut.prod_price = find_product_price();

            Insert_Logic.Insert_Temp_Selling(ut);
            
            
            Update_Logic.update_status("update_status_tbl_product_sp", "0", ut.p_id);
            //deduct stock from tbl_stock where p_id=here p_id
            DataTable dt1 = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id", ut.p_id);
            int stock = Convert.ToInt32((dt1.Rows[0][2]).ToString());
            stock = stock - 1;
            //update stock
            string sub_cat_id = dt.Rows[0]["sub_cat_id"].ToString();
            Update_Logic.deduct_stock(sub_cat_id, stock.ToString());


        }


    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        fetch_sell_data();
    }


    //fetch final products data in main grid view
    protected void fetch_sell_data()
    {
       // String id = Session["id"].ToString();
        DataTable dt = Select_Logic.Find_Selling_Data("select_selling_data_give_billno_cus_id_sp ",find_customer_id(),Session["bill_no"].ToString());
        grv_prod_selling.DataSource = dt;
        grv_prod_selling.DataBind();

        DataTable dt1 = Select_Logic.Find_Total_Payment("select_total_payment_temp_selling_sp", find_customer_id(), Session["bill_no"].ToString());
        
        
        txt_total_amount.Text = dt1.Rows[0][0].ToString();

    }

    protected void grv_prod_selling_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    private string find_product_id_give_temp_selling_id(string tid) 
    {
        DataTable dt = Select_Logic.get_data_with_two_para("select_product_id_give_temp_selling_id", tid);
        string s = dt.Rows[0][0].ToString();
        return s;     
    }

    protected void grv_prod_selling_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString(); // id="temp_id"
        string p_id = find_product_id_give_temp_selling_id(id);
        
        //change status to one
        Update_Logic.update_status("update_status_tbl_product_sp", "1", p_id);
       
        //and update stock=stock+1
        DataTable dt1 = Select_Logic.Find_Stock_Information("tbl_stock_give_p_id",p_id);
        int stock = Convert.ToInt32((dt1.Rows[0][2]).ToString());
        stock = stock +1;
        //update stock
        string sub_cat_id = dt1.Rows[0]["sub_cat_id"].ToString();
        Update_Logic.deduct_stock(sub_cat_id, stock.ToString());

         int ii=Delete_Logic.Delete_data("delete_tbl_temp_selling_sp", id);
        
        fetch_sell_data();
    }
    
    
    //bill generation
    protected void btn_generate_bill_Click(object sender, EventArgs e)
    {
        if (Session["remaining_amount_customer"] != "")
        {
            if (Convert.ToInt32(txt_total_amount.Text) >= Convert.ToInt32(txt_current_pay.Text))
            {
                string bill_no1 = Session["remaining_amount_customer"].ToString();
                string remaining_amount = Convert.ToString(Convert.ToInt32(txt_total_amount.Text) - Convert.ToInt32(txt_current_pay.Text));
                Update_Logic.update_remaining_amount(bill_no1, remaining_amount);
                Response.Redirect("Bill.aspx");
            }
            else
            {
                lbl_msg.Text = "Current Pay should not be Greater than Total Amount";
                mpe.Show();
            }
        }
        else if (Session["Bill_no_customer_page"] != "")
        {
            if (Convert.ToInt32(txt_total_amount.Text) >= Convert.ToInt32(txt_current_pay.Text))
            {
                String bill_no1 = Session["Bill_no_customer_page"].ToString();
                string remaining_amount = Convert.ToString(Convert.ToInt32(txt_total_amount.Text) - Convert.ToInt32(txt_current_pay.Text));
                Update_Logic.update_remaining_amount(bill_no1, remaining_amount);
                Response.Redirect("Bill.aspx");
            }
            else
            {
                lbl_msg.Text = "Current Pay should not be Greater than Total Amount";
                mpe.Show(); 
            }
        }
        else
        {
            Userr_Property_Tbl_Selling u = new Userr_Property_Tbl_Selling();
            u.bill_no = Session["bill_no"].ToString();
            u.c_id = find_customer_id();
            u.total_amount = txt_total_amount.Text;
            u.purchase_date = txt_purchase_date.Text;
            u.current_pay = txt_current_pay.Text;

            if ((Convert.ToInt32(u.total_amount)) < (Convert.ToInt32(u.current_pay)))
            {
                amount_error.ForeColor = System.Drawing.Color.Red;
                amount_error.Text = "current pay should not be greater than total amount";
                return;
            }

            u.remaining_amount = Convert.ToString(Convert.ToInt32(u.total_amount) - Convert.ToInt32(u.current_pay));
            int i = Insert_Logic.Insert_Selling(u);

            if (i == 1)
            {

                Response.Redirect("Bill.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('Sry Try Again')", true);
            }
            Session["bill_no"] = "";
            Session["id"] = "";
        }
    }
   
    
    protected void grv_view_prod_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}