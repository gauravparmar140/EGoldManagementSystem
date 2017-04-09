using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        
       //fetch total amount
        if (!IsPostBack)
         {
             txt_total_amount.Text = Select_Logic.select_total_amount_in_order_selling(Session["order_bill_no"].ToString()).Rows[0][0].ToString();
         }


        if (Session["bill_no"] != "")
        {
            DataTable dt = Select_Logic.fill_remaining_amoung_order(Session["bill_no"].ToString());
            txt_total_amount.Text = dt.Rows[0]["remaininig_amount"].ToString();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void btn_add_order_Click(object sender, EventArgs e)
    {
        if (Session["bill_no"] != "")
        {

            if (Convert.ToInt32(txt_total_amount.Text) < Convert.ToInt32(txt_paid_amount.Text))
            {
                lbl_msg.Text = "Enter Valid Paid Amount";
                mpe.Show();
            }
            else
            {
                String remaining_amount = (Convert.ToInt32(txt_total_amount.Text) - Convert.ToInt32(txt_paid_amount.Text)).ToString();
                Update_Logic.update_amount_order(txt_paid_amount.Text, remaining_amount, Session["bill_no"].ToString());
                Response.Redirect("bill_order.aspx");
            }
        }
        else
        {
            User_Property_Tbl_Order_Selling os = new User_Property_Tbl_Order_Selling();
            //os.c_id = Select_Logic.load_customer_data_new_order(Session["order_bill_no"].ToString()).Rows[0]["c_id"].ToString();
            os.total_payment = txt_total_amount.Text;
            os.paid_amount = txt_paid_amount.Text;
            os.remaininig_amount = ((Convert.ToInt32(os.total_payment)) - (Convert.ToInt32(os.paid_amount))).ToString();
            os.bill_no = Session["order_bill_no"].ToString();


            int i = Insert_Logic.Insert_Order_Selling(os);
            if (i == 1)
            {
                Response.Redirect("bill_order.aspx");
            }
        }

            
    }
}