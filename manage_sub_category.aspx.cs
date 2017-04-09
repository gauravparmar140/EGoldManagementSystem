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
            bind_Sub_Category();
        }
        
    }

    private void bind_Sub_Category()
    {

        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_sub_category_manage_sp");
        grv_sub_cat.DataSource = dt;
        grv_sub_cat.DataBind();
    }



    protected void grv_sub_cat_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        User_Property_id.id = e.CommandArgument.ToString();

        if (e.CommandName == "del")
        {
            ModalPopupExtender1.Show();
        }


        if (e.CommandName == "edt")
        {
            Session["id"] = User_Property_id.id;
            Response.Redirect("add_sub_category.aspx");
        }


        


    }
    protected void modal_ok_Click(object sender, EventArgs e)
    {
        Delete_Logic.Delete_data("delete_tbl_sub_category_sp", User_Property_id.id);
        bind_Sub_Category();

    }
    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grv_sub_cat.PageIndex = e.NewPageIndex;
        bind_Sub_Category();
        grv_sub_cat.DataBind();

    }

}