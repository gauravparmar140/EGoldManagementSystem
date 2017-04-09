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
    string temp_p_db;
    string u_id;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //passed from home page
        string temp_u = Session["username"].ToString();

        DataTable dt = Select_Logic.find_user_data(temp_u);
        temp_p_db = dt.Rows[0]["u_password"].ToString();
       //fetched from database



         u_id = Select_Logic.find_user_data(temp_u).Rows[0]["u_id"].ToString();
        
        
        //DataTable dt=selectLogiv.....
        //String u=dt.rows[0][......]

    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
        if (txt_current_password.Text == temp_p_db)
        {
            if (txt_new_password.Text == txt_confirm_password.Text)
            {
                User_Property_tbl_user u = new User_Property_tbl_user();
                u.user_name = Session["username"].ToString();
                u.password = txt_new_password.Text;

                int i = Update_Logic.update_password(u.user_name, u.password);

                if (i == 1)
                {
                    modal_lbl_msg.Text = "Successfully Changed";
                    modal_lbl_msg.ForeColor = System.Drawing.Color.Green;
                    ModalPopupExtender1.Show();
                }
                else
                {
                    modal_lbl_msg.Text = "Error";
                    modal_lbl_msg.ForeColor = System.Drawing.Color.Red;
                    ModalPopupExtender1.Show();
                }

            }
            else
            {
                modal_lbl_msg.Text = "New Password and Confirm password should be same";
                modal_lbl_msg.ForeColor = System.Drawing.Color.Red;
                ModalPopupExtender1.Show();
            }


        }

        else
        {
            modal_lbl_msg.Text = "Password Does not match";
            modal_lbl_msg.ForeColor = System.Drawing.Color.Red;
            ModalPopupExtender1.Show();
        
        }

    }


    protected void modal_btn_ok_Click(object sender, EventArgs e)
    {
        txt_confirm_password.Text = "";
        txt_current_password.Text = "";
        txt_new_password.Text = "";
    }
}