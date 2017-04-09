using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    private static string s_id = "";
    public int cid;//used for store customer id
    public   string customer_name = "";

    protected void Page_Load(object sender, EventArgs e)
    {
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
            fetch_old_gold();
        }

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
       

        if (Button1.Text == "Add")
        {

            User_Property_Tbl_Customer c = new User_Property_Tbl_Customer();
            
            c.c_address = txt_customer_address.Text;
            c.c_email_address = txt_email_address.Text;
            c.c_mobile_no = txt_customer_mobile_no.Text;
            c.c_name = txt_customer_name.Text;
            customer_name = c.c_name;
            Insert_Logic.Insert_Customer(c);
            cid = find_customer_id();
            
            User_Property_Tbl_Old_Intake o = new User_Property_Tbl_Old_Intake();
            o.c_id = cid.ToString();

            o.s_cat_id = ddl_sub_category_name.SelectedValue;
            o.in_date = txt_purchase_date.Text;
            o.prod_description = txt_prod_description.Text;
            o.prod_price = txt_prod_price.Text;
            o.prod_type = ddl_product_type.SelectedValue;
            o.prod_weight = txt_weight.Text;
            o.prod_quality = ddl_order_quality.SelectedValue;

        

            int i = Insert_Logic.Insert_Old_Intake(o);
            if (i == 1)
                lbl_msg.Text = "Inserted";
            else
            {
                lbl_msg.Text = "Failed";

            }

        }
        else
        {

           User_Property_Tbl_Customer c = new User_Property_Tbl_Customer();
           c.c_address = txt_customer_address.Text;
           c.c_email_address = txt_email_address.Text;
           c.c_mobile_no = txt_customer_mobile_no.Text;
           c.c_name = txt_customer_name.Text;
           
           
            User_Property_Tbl_Old_Intake o = new User_Property_Tbl_Old_Intake();
            o.c_id = Session["cus_id"].ToString();
            c.c_id = o.c_id;

            o.s_cat_id = ddl_sub_category_name.SelectedValue;
            o.in_date = txt_purchase_date.Text;
            o.prod_description = txt_prod_description.Text;
            o.prod_price = txt_prod_price.Text;
            o.prod_type = ddl_product_type.SelectedValue;
            o.prod_weight = txt_weight.Text;
            o.prod_quality = ddl_order_quality.SelectedValue;

            o.old_id = s_id;
            int ii = Update_Logic.Update_Old_Intake(o);
            
            Update_Logic.Update_Customer(c);

            if (ii == 1)
                Response.Redirect("manage_old_gold_purchase.aspx");
            else
                lbl_msg.Text = "Updation Failed";
            


        }




        ModalPopupExtender1.Show();

    }



    // this will find customer's id based on data added on text boxes
    private int find_customer_id()
    {
        int id;
                      
        String customer_mobile = txt_customer_mobile_no.Text;
        DataTable dt = Select_Logic.get_data_with_three_para("select_customer_sp", customer_name, customer_mobile);
        if (dt.Rows.Count == 0)
            id = 0;
        else
            id = Convert.ToInt32(dt.Rows[0][0]);

        return id;
    }

    private void fetch_old_gold() { 
        s_id=Session["id"].ToString();
        Session["id"]="";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_old_intake_give_id", s_id);

        txt_customer_name.Text = dt.Rows[0]["c_name"].ToString();
        txt_email_address.Text = dt.Rows[0]["c_email_address"].ToString();
        txt_customer_mobile_no.Text = dt.Rows[0]["c_mobile_no"].ToString();
        txt_customer_address.Text = dt.Rows[0]["c_address"].ToString();
        Session["cus_id"] = dt.Rows[0]["c_id"].ToString();

        ddl_sub_category_name.SelectedValue = dt.Rows[0]["sub_cat_id"].ToString();
        bind_sub_category();
        
        txt_prod_price.Text=dt.Rows[0]["prod_price"].ToString();
        txt_prod_description.Text = dt.Rows[0]["prod_description"].ToString();
        txt_weight.Text = dt.Rows[0]["prod_weight"].ToString();
        txt_purchase_date.Text=dt.Rows[0]["in_date"].ToString();

        ddl_order_quality.SelectedValue = dt.Rows[0]["prod_quality"].ToString();
        ddl_product_type.SelectedValue = dt.Rows[0]["prod_type"].ToString();
        Button1.Text = "Edit";
    
    }

}