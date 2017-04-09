using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCustomerName(string prefixText)
    {
        DataTable dt = new DataTable();
        string query = "select * from tbl_customer where c_name like'" + prefixText + "'";
        string connectionstring = ConfigurationManager.ConnectionStrings["Connect"].ToString();
        SqlConnection con = new SqlConnection(connectionstring);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_customer where c_name like @customer_name+'%'", con);
        cmd.Parameters.AddWithValue("@customer_name", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        List<string> CustomerNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CustomerNames.Add(dt.Rows[i][1].ToString());
        }
        return CustomerNames;
        con.Close();
    }
    protected void btn_View_bills_Click(object sender, EventArgs e)
    {
        if (txt_customer_name.Text == string.Empty)
        {
            RequiredFieldValidator1.Text = "Enter Customer Name";
            RequiredFieldValidator1.ForeColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            string cust_name = txt_customer_name.Text;
            DataTable dtCustomerBillInfo = Select_Logic.select_customer_bill_info("select_customer_bill_info_sp", cust_name);
            dtCustomerBillInfo.Columns.Add("Status");
            dtCustomerBillInfo.Columns.Add("Date");
            if (dtCustomerBillInfo.Rows.Count == 0)
            {
                RequiredFieldValidator1.Text = "No Bills Found";
                grv_cust_bills.DataSource = null;
                grv_cust_bills.DataBind();
            }

            else
            {
                foreach (DataRow dr in dtCustomerBillInfo.Rows)
                {
                    dr["Date"] = Convert.ToDateTime(dr["purchase_date"]).ToString("dd/MM/yyyy");
                    //dt.ToShortTimeString();
                    if (Convert.ToInt32(dr["remaining_amount"]) == 0)
                    {
                        dr["Status"] = "Paid";
                    }
                    else
                    {
                        dr["Status"] = "Pending";
                    }
                }
                dtCustomerBillInfo.Columns.Remove("purchase_date");
                grv_cust_bills.DataSource = dtCustomerBillInfo;
                grv_cust_bills.DataBind();
            }

        }

    }
    protected void grv_cust_bills_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grv_cust_bills_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String billno = e.CommandArgument.ToString();
        if (e.CommandName == "bill") {
            Session["Bill_no_customer_page"] =billno ;
            Response.Redirect("product_selling.aspx");

        }
    }
}