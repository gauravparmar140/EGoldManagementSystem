using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        
        if (!IsPostBack)
        {
            bind_product();
        }
         
        

    }
    private void bind_product()
    {
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_category_sp");
        grv_cat.DataSource = dt;
        grv_cat.DataBind();
    }

   

    protected void grv_cat_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        User_Property_id.id = e.CommandArgument.ToString();

        if (e.CommandName == "del")
        {
            ModalPopupExtender1.Show();
        }


        if (e.CommandName == "edt")
        {
            Session["id"] = User_Property_id.id;
            Response.Redirect("add_category.aspx");
        }

         




    }
    protected void modal_btn_yes_Click(object sender, EventArgs e)
    {
        string display = "Pop-up!";
            ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
    }
    protected void modal_ok_Click(object sender, EventArgs e)
    {
        String id = User_Property_id.id;
        Delete_Logic.Delete_data("delete_tbl_category_sp", User_Property_id.id);
            bind_product();
    }

    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grv_cat.PageIndex = e.NewPageIndex;
        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_category_sp");
        grv_cat.DataSource = dt;
        grv_cat.DataBind(); 

    }

}