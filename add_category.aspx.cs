using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        mpe.Hide();
        
        
        if (Session["id"] != "")
        {
            fetch_data();
        }

       

    }
    public void fetch_data()
    {
       
        id = Session["id"].ToString();
        Session["id"] = "";
        DataTable dt = Select_Logic.get_data_with_two_para("select_tbl_category_give_id_sp", id);
        
        txt_category_name.Text = dt.Rows[0]["cat_name"].ToString();
        btn_ok.Text = "Edit";
    }



    protected void btn_ok_Click(object sender, EventArgs e)
    {
         
        User_Property_Tbl_Category u = new User_Property_Tbl_Category();

        u.cat_name = txt_category_name.Text;


        if (fl_category_photo.FileName != "")
        {
            if (fl_category_photo.PostedFile.ContentLength <= 512000)
            {
                string ext = Path.GetExtension(fl_category_photo.FileName).ToLower();

                if (ext == ".jpg" || ext == ".png" || ext == ".gif")
                {
                    Random r = new Random();

                    string f_nm = Path.GetFileNameWithoutExtension(fl_category_photo.FileName);

                    f_nm = f_nm + "_" + r.Next() + ext;

                    fl_category_photo.SaveAs(Server.MapPath("~/Upload/" + f_nm));
                    u.cat_photo = "~/Upload/" + f_nm;
                }
                else
                {
                    lbl_photo_msg.Text = "Invalid Photo Type";
                    lbl_photo_msg.Visible = true;
                    return;
                }
            }
            else
            {
                lbl_photo_msg.Text = "Photo Size is To Big";
                lbl_photo_msg.Visible = true;
                return;
            }
        }
        else
            u.cat_photo = "";

        //used when insertion of data
        if (btn_ok.Text == "Add")
        {
            int i = Insert_Logic.Insert_Category(u);
            clear();

            if (i == 1)
            {
                {
                    lbl_msg.Text = "Successfully Inserted Data";
                    lbl_msg.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                lbl_msg.Text = "Data Insertion Failed";
                lbl_msg.ForeColor = System.Drawing.Color.Red;
            }
            mpe.Show();
        }
            
            
        //used when update the category data

        else
        {
            u.cat_id = id;
            
            int ii = Update_Logic.Update_Category(u);
            if (ii == 1)
                Response.Redirect("manage_category.aspx");
            else
                {
                    lbl_msg.Text = "error";
                    mpe.Show();
                }
    
            
        }

        
    }
    private void clear() {
        txt_category_name.Text = "";
    }
}