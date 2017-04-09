using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    
        
    private static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_purchase_date.Text = DateTime.Now.ToShortDateString();
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        
        if (!IsPostBack)
        {
            bind_sub_category();
            bind_dealer();
            
            //generate random number
            

        }


        if (Session["id"] != "")
        {
            fetch_product();
        }


    }
    //load data when update is required
    private void fetch_product() 
    {
        id=Session["id"].ToString();
        Session["id"] = "";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_product_give_id", id);
        txt_product_name.Text=dt.Rows[0]["prod_name"].ToString();
        txt_generate_unique_no.Text = dt.Rows[0]["prod_unique_no"].ToString();
        txt_product_description.Text = dt.Rows[0]["prod_description"].ToString();
        txt_weight.Text = dt.Rows[0]["prod_weight"].ToString();

        ddl_dealer_name.SelectedValue = dt.Rows[0]["d_id"].ToString();
        bind_dealer();

        ddl_product_quality.SelectedValue = dt.Rows[0]["prod_quality"].ToString();
        ddl_product_type.SelectedValue = dt.Rows[0]["prod_type"].ToString();

        ddl_sub_category_name.SelectedValue = dt.Rows[0]["sub_cat_id"].ToString();
        bind_sub_category();

        

    
    }



    private void bind_sub_category() {
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_sub_category_sp");
        ddl_sub_category_name.DataSource = dt;
        ddl_sub_category_name.DataTextField = "sub_cat_name";
        ddl_sub_category_name.DataValueField = "sub_cat_id";
        ddl_sub_category_name.DataBind();
        ddl_sub_category_name.Items.Insert(0, "--Select Category--");
         
    }

    private void bind_dealer() {

        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_dealer_sp");
        ddl_dealer_name.DataSource = dt;
        ddl_dealer_name.DataTextField = "d_name";
        ddl_dealer_name.DataValueField = "d_id";
        ddl_dealer_name.DataBind();
        ddl_dealer_name.Items.Insert(0, "--Select Category--");
    }

    private string find_current_stock()
    {
        string current;
        
        DataTable dt = Select_Logic.Find_Stock("select_tbl_stock_sp_give_sub_cat_id", ddl_sub_category_name.SelectedValue.ToString());
        try
        {
            current = dt.Rows[0][2].ToString();
        }
        catch (IndexOutOfRangeException e)
        {
            current = "0";//new product so stock =0
        }
        
        return current;
    }
    private string find_stock_id() {
        String s = "";
        DataTable dt = Select_Logic.Find_Stock_id("select_tbl_stock_sp_give_sub_cat_id", ddl_sub_category_name.SelectedValue);
        try
        {
            s = dt.Rows[0][0].ToString();
        }
        catch (IndexOutOfRangeException e)
        {
           
        }
        return s;
        
    }


    protected void btn_ok_Click(object sender, EventArgs e) {
        txt_current_gold_price.Text = "";
        txt_generate_unique_no.Text = "";
        txt_product_description.Text = "";
        txt_product_name.Text = "";
        txt_purchase_date.Text = "";
        txt_weight.Text = "";



    }


    protected void Button1_Click(object sender, EventArgs e)
    {   

        User_Property_Tbl_Product u = new User_Property_Tbl_Product();
        u.d_id = ddl_dealer_name.SelectedValue.ToString();
        u.sub_Cat_id = ddl_sub_category_name.SelectedValue.ToString();
        u.prod_name = txt_product_name.Text;
        u.prod_description = txt_product_description.Text;

        try
        {
            u.prod_price = (Convert.ToInt32(txt_current_gold_price.Text) * Convert.ToInt32(txt_weight.Text)).ToString();
        }
        catch (FormatException e1)
        {
            error_current_gold_price.Text = "enter proper price";
            return;
        }

        try
        {
            //for checking type of product weight whether is a number or not
            u.prod_weight = txt_weight.Text;
            int d = Convert.ToInt32(txt_current_gold_price.Text);
        }
        catch (FormatException ef)
        {
            error_product_weight.Text = "enter proper weight";
            error_product_weight.ForeColor = System.Drawing.Color.Red;
            return;
        }

        u.prod_unique_no = txt_generate_unique_no.Text;
        u.prod_quality = ddl_product_quality.SelectedValue.ToString();
        u.prod_type = ddl_product_type.SelectedValue.ToString();

        u.purchase_date = txt_purchase_date.Text;
        
        //find current stock 
        // add current stock + 1
        User_Property_Tbl_Stock s = new User_Property_Tbl_Stock();
        s.sub_cat_id =ddl_sub_category_name.SelectedValue.ToString();
        s.current_stock =  ( Convert.ToInt32(find_current_stock()) +1 ).ToString();
        s.l_date = DateTime.Now.ToShortDateString().ToString();

        
        //find stock id for update stock
        s.s_id = find_stock_id();
        if (Button1.Text == "Add")
        {
         int i = Insert_Logic.Insert_Product(u);

         
             if (s.s_id != "")
             {
                 Update_Logic.Update_Stock(s);
             }
         
           
            
            if (i == 1)
            {
                Label3.Text = "inserted";

                Label3.ForeColor = System.Drawing.Color.Green;
                ModalPopupExtender1.Show();
                
            }
            else
            {
                Label3.Text = "Duplicate data";
                ModalPopupExtender1.Show();
                lbl_msg.ForeColor = System.Drawing.Color.Red;
            }
            ////
        }

        else
        {
            u.p_id = id;
            int ii = Update_Logic.Update_Product(u);
            if (ii == 1)
                Response.Redirect("manage_product.aspx");
            else
                lbl_msg.Text = "Error";
        
        }
       
     
    }
    protected void ddl_sub_category_name_SelectedIndexChanged(object sender, EventArgs e)

    {
        txt_generate_unique_no.Text = ddl_sub_category_name.SelectedValue+""+new Random().Next(10, 1000).ToString();
        txt_generate_unique_no.DataBind();
           
    }
    protected void txtDate_TextChanged(object sender, EventArgs e)
    {
       
    }
}