using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        if (Session["id"] != "")
        {
            fetch_data();     
        }

    }
    public void clear()
    {
        txt_contact_no.Text = "";
        txt_dealer_email.Text = "";
        txt_dealer_location.Text = "";
        txt_dealer_name.Text = "";

    }
     
        public void fetch_data()
    {
       
        id = Session["id"].ToString();
        Session["id"] = "";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_dealer_give_id_sp ", id);
        txt_dealer_name.Text = dt.Rows[0]["d_name"].ToString();
        txt_dealer_email.Text = dt.Rows[0]["d_email_address"].ToString();
        txt_dealer_location.Text = dt.Rows[0]["d_location"].ToString();
        btn_ok.Text = "Edit";
    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
      User_Property_Tbl_Dealer u = new User_Property_Tbl_Dealer();

       u.d_name =txt_dealer_name.Text;
       u.d_email_address = txt_dealer_email.Text;
       u.d_location = txt_dealer_location.Text;
       u.d_contact = txt_contact_no.Text;

       if (btn_ok.Text == "Add")
       {
           int i = Insert_Logic.Insert_Dealer(u);
           clear();
           if (i == 1)
           {
               lbl_msg.Text = "Successfully Inserted";
               lbl_msg.ForeColor = System.Drawing.Color.Green;
           }
           else
           {
               lbl_msg.Text = "Duplicate Data";
               lbl_msg.ForeColor = System.Drawing.Color.Red;
           }
               
           mpe.Show();
       }
       else
       {
           u.d_id = id;
           int ii = Update_Logic.Update_Dealer(u);
           if (ii == 1)
           {
               lbl_msg.Text = "Updated";
               Response.Redirect("manage_dealer.aspx");
           }
           else
           {
               lbl_msg.Text = "Duplicate Data ...!!";
           }
           mpe.Show();
           

       }

    

       //if (i == 1)
       //    Response.Write("data successfully inserted");
       //else
       //    Response.Write("data successfully  not inserted");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        clear();
    }
}