using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;

public partial class bill_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("LoginPage.aspx");
        }
        else 
        {
            get_bill_data();

            }                        
            
        
        }
    public void get_bill_data() {

        string bill_no = Session["order_bill_no"].ToString();
        DataTable dt = Select_Logic.select_data_order_selling(bill_no);
        if (dt.Rows.Count > 0)
        {
            ReportDocument data = new ReportDocument();
            DataSet1_order_s s = new DataSet1_order_s();
            data.Load(Server.MapPath("crystal_order.rpt"));//crystal report will be loaded in report document
            data.SetDataSource(dt);//all data will be filled in report from data table
            CrystalReportViewer1.ReportSource = data;//assign data in crystal report
        }
    }

    }
