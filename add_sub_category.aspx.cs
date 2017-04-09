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

        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        if (!IsPostBack)
        {
            Bind_Category();
        }
        if (Session["id"] != "")
        {
            fetch_data();
        }

    }


    private void fetch_data() { 
        id=Session["id"].ToString();
        Session["id"] = "";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_sub_category_give_id", id);

        ddl_sub_category.SelectedValue=dt.Rows[0]["cat_id"].ToString();
        Bind_Category();


        txt_sub_category_name.Text = dt.Rows[0]["sub_cat_name"].ToString();
        btn_ok.Text = "Edit";
    }

    public void Bind_Category() {

        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_category_sp");
        ddl_sub_category.DataSource = dt;
        ddl_sub_category.DataTextField = "cat_name";
        ddl_sub_category.DataValueField = "cat_id";
        ddl_sub_category.DataBind();
        ddl_sub_category.Items.Insert(0, "--Select Category--");
    }

    protected string find_sub_cat_id() { 
   
        DataTable dt=Select_Logic.Find_Sub_Category("select_tbl_sub_category_give_name",txt_sub_category_name.Text);
        string id=dt.Rows[0]["sub_cat_id"].ToString();
        return id; 
    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
        User_Property_Tbl_Sub_Category u = new User_Property_Tbl_Sub_Category();


        u.cat_id = ddl_sub_category.SelectedValue.ToString();
        u.sub_cat_name = txt_sub_category_name.Text;

       

        //insert data in sub category table
        if (btn_ok.Text == "Add")
        {


            int i = Insert_Logic.Insert_Sub_Category(u);

            //For Stock
            User_Property_Tbl_Stock s = new User_Property_Tbl_Stock();
            s.current_stock = "0";
            s.sub_cat_id = find_sub_cat_id();
            s.l_date = DateTime.Now.ToShortDateString();
            Insert_Logic.Insert_Stock(s);    

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
        }
        else
        {
            //update details about sub category
            u.sub_cat_id = id;
            int ii = Update_Logic.Update_Sub_Category(u);
            if (ii == 1)
            {
                Response.Redirect("manage_sub_category.aspx");
            }
            else
                lbl_msg.Text = "Error";

        }


        ModalPopupExtender1.Show();
    }
}