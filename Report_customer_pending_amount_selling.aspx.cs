using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = Select_Logic.find_customer_pending_bill();
        if (dt.Rows.Count > 0)
        {
            ReportDocument data = new ReportDocument();
            Customer_Pending_Amount_selling s = new Customer_Pending_Amount_selling();
            data.Load(Server.MapPath("Report_Customer_Pending_Amount_Selling.rpt"));//crystal report will be loaded in report document
            data.SetDataSource(dt);//all data will be filled in report from data table
            CrystalReportViewer1.ReportSource = data;//assign data in crystal report
        }
         
    }
}