using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    DataTable dt;
    string photo;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == "")
            Response.Redirect("LoginPage.aspx");
        else
        {
            
            if (!IsPostBack)
            {
                dt = Select_Logic.find_user_data(Session["username"].ToString());
                txt_user_name.Text = dt.Rows[0]["u_name"].ToString();
                txt_address.Text = dt.Rows[0]["u_address"].ToString();
                txt_shop_name.Text = dt.Rows[0]["u_shop_name"].ToString();
                photo = dt.Rows[0]["u_photo"].ToString();
             
                txt_user_name.Enabled = false;
             
                txt_shop_name.Enabled = false;
                txt_address.Enabled = false;



                txt_address.CssClass = "form-control";
                txt_shop_name.CssClass = "form-control";
                txt_user_name.CssClass = "form-control";

            }

        
        }

        


    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        txt_address.Enabled = true;
        txt_shop_name.Enabled = true;
        txt_user_name.Enabled = true;
         

        

    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        string u_name_session=Session["username"].ToString();
        User_Property_tbl_user u = new User_Property_tbl_user();
        u.address = txt_address.Text;
        u.shop_name = txt_shop_name.Text;
        u.user_name = txt_user_name.Text;
        u.photo = "";
        
        int i = Update_Logic.update_user_data(u_name_session, u.user_name, u.address, u.shop_name, u.photo);
        if (i == 1)
        {
            
            ModalPopupExtender1.Show();
            modal_msg_lbl.Text = "Update Successfully"; 
            modal_msg_lbl.ForeColor = System.Drawing.Color.Green;
            txt_user_name.Enabled = false;
            txt_shop_name.Enabled = false;
            txt_address.Enabled = false;
           


        }
        else
        {
            modal_msg_lbl.Text = "Updation Failed";
            ModalPopupExtender1.Show();
            modal_msg_lbl.ForeColor = System.Drawing.Color.Red;
        }


    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
}