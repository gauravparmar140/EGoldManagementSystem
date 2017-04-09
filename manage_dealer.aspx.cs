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
            bind_Dealer();
    }

    private void bind_Dealer() {

        DataTable dt = Select_Logic.get_data_with_one_para("select_tbl_dealer_sp");
        grv_dealer.DataSource = dt;
        grv_dealer.DataBind();
    
    }

   


    protected void grv_dealer_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        User_Property_id.id = e.CommandArgument.ToString();


        if (e.CommandName == "del")
        {
            ModalPopupExtender1.Show();
        }
        

        if (e.CommandName == "edt")
        {
            Session["id"] = User_Property_id.id;
            Response.Redirect("add_dealer.aspx");
        }


        string status = "";
        if (e.CommandName == "act" || e.CommandName == "dec")
        {
            if (e.CommandName == "act")
            {
                status = "1";
            }
            else
            {
                status = "0";
            }
            Update_Logic.update_status("update_status_tbl_dealer_sp", status, User_Property_id.id);
            bind_Dealer();


        }






    }
    protected void modal_ok_Click(object sender, EventArgs e)
    {
        Delete_Logic.Delete_data("delete_tbl_dealer_sp", User_Property_id.id);
        bind_Dealer();
        ModalPopupExtender1.Hide();
    }

    protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        bind_Dealer();
        grv_dealer.PageIndex = e.NewPageIndex;
          grv_dealer.DataBind();

    }
 

}