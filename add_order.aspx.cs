using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    public static string x = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_order_date.Text = DateTime.Now.ToShortDateString();
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        if (!IsPostBack)
        {
            bind_sub_category();
         
        }

        if (Session["id"] != "")
        {
            fetch_data();
        }

        if (Session["order_bill_no"] == "")
        {
            Session["order_bill_no"] = new Random().Next(1, 10000).ToString();
        }

/*        if (Session["order_bill_no"] != "")
        {
            DataTable dt = Select_Logic.load_customer_data_new_order(Session["order_bill_no"].ToString());
            txt_customer_name.Text = dt.Rows[0]["c_name"].ToString();
            txt_email_address.Text = dt.Rows[0]["c_email_address"].ToString();
            txt_customer_address.Text = dt.Rows[0]["c_address"].ToString();
            txt_customer_mobile_no.Text = dt.Rows[0]["c_mobile_no"].ToString();
         }

        */
    }

    private void bind_sub_category()

    {
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_sub_category_sp");
        ddl_sub_category_name.DataSource = dt;
        ddl_sub_category_name.DataTextField = "sub_cat_name";
        ddl_sub_category_name.DataValueField = "sub_cat_id";
        ddl_sub_category_name.DataBind();
        ddl_sub_category_name.Items.Insert(0, "--Select Category--");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        User_Property_Tbl_Customer c = new User_Property_Tbl_Customer();
        c.c_address = txt_customer_address.Text;
        c.c_email_address = txt_email_address.Text;
        c.c_mobile_no = txt_customer_mobile_no.Text;
        c.c_name = txt_customer_name.Text;

        User_Property_Tbl_Order o = new User_Property_Tbl_Order();
        String cus_id = "";
        
        if (Button1.Text == "Ok")
        {

            
            
            Insert_Logic.Insert_Customer(c);
            cus_id = find_customer_id();
            c.c_id = cus_id.ToString();

            //entry in order table
            o.product_name = txt_product_name.Text;
            o.book_name = txt_book_no.Text;
            o.design_no = txt_design_no.Text;
            o.o_type = ddl_order_type.SelectedValue;
            o.order_date = txt_order_date.Text;
            o.order_quality = ddl_order_quality.SelectedValue;
            o.prod_weight = txt_prod_weight.Text;
            o.o_type = ddl_order_type.SelectedValue;
            o.order_complete_date = txt_order_complete_date.Text;
            o.sub_cat_id = ddl_sub_category_name.SelectedValue;
            o.product_price = txt_product_price.Text;
            
            int i = Insert_Logic.Insert_Order(o);

            if (i == 1)
            {
                lbl_msg.ForeColor = System.Drawing.Color.Green;
                lbl_msg.Text = "Inserted";
            }
            else
                lbl_msg.Text = "Insertion Failed";
            
                 
            //insert in temp selling table
            User_Property_Tbl_Order_Temp_Selling ots = new User_Property_Tbl_Order_Temp_Selling();
            ots.bill_no = Session["order_bill_no"].ToString();
            ots.order_id=find_order_id().ToString();
            ots.c_id = cus_id;
            ots.total_amount = txt_product_price.Text;
            ots.product_name = txt_product_name.Text;
            int its=Insert_Logic.Insert_Order_Temp_Selling(ots);

            if (its == 1)
                Response.Redirect("order_selling.aspx");





          


        }
            


        else
        {
            o.book_name = txt_book_no.Text;
            o.design_no = txt_design_no.Text;
            o.o_type = ddl_order_type.SelectedValue;
            o.order_date = txt_order_date.Text;
            o.order_quality = ddl_order_quality.SelectedValue;
            o.prod_weight = txt_prod_weight.Text;
            o.o_type = ddl_order_type.SelectedValue;
            o.order_complete_date = txt_order_complete_date.Text;
            o.sub_cat_id = ddl_sub_category_name.SelectedValue;
            
            o.order_id = x;//this is session id
            Update_Logic.Update_Customer(c);
            int ii = Update_Logic.Update_Order(o);
            if (ii == 1)
                Response.Redirect("manage_order.aspx");
            else
                lbl_msg.Text = "error";
            
        }



        ModalPopupExtender1.Show();

    }

    private string find_order_id()
    {
        DataTable dt = Select_Logic.find_order_id();

        return dt.Rows[0][0].ToString();
            



    }

    private string find_customer_id()
    {
        string id;
        string  customer_name=txt_customer_name.Text;
        String  customer_mobile=txt_customer_mobile_no.Text;
        DataTable dt = Select_Logic.get_data_with_three_para("select_customer_sp",customer_name,customer_mobile);
        if (dt.Rows.Count == 0)
            id = "0";
        else
            id = dt.Rows[0][0].ToString();

        return id;    
    }

  
    
    //call when control is trasffered for update the details about the orders . 
    //we load the data when first time loading the page
    private void fetch_data() {
         x = Session["id"].ToString();
        Session["id"] = "";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_manage_order_give_id_sp", x);

        ddl_order_quality.SelectedValue = dt.Rows[0]["order_quality"].ToString();
        ddl_order_type.SelectedValue = dt.Rows[0]["o_type"].ToString();

        ddl_sub_category_name.SelectedValue = dt.Rows[0]["sub_cat_id"].ToString();
        bind_sub_category();

        txt_book_no.Text = dt.Rows[0]["book_name"].ToString();
        txt_customer_name.Text = dt.Rows[0]["c_name"].ToString();
        txt_customer_mobile_no.Text = dt.Rows[0]["c_mobile_no"].ToString();
        txt_customer_address.Text = dt.Rows[0]["c_address"].ToString();
        txt_design_no.Text = dt.Rows[0]["design_no"].ToString();
        txt_email_address.Text = dt.Rows[0]["c_email_address"].ToString();
        txt_order_complete_date.Text = dt.Rows[0]["order_complete_date"].ToString();
        txt_order_date.Text = dt.Rows[0]["order_Date"].ToString();
        txt_prod_weight.Text = dt.Rows[0]["prod_weight"].ToString();
        
        Session["cus_id"]= dt.Rows[0]["c_id"].ToString();
        Button1.Text = "Edit";

    }

}