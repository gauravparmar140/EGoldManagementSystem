using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
public partial class _Default : System.Web.UI.Page
{
 public static string bill_no = "";
    
    protected void Page_Load(object sender, EventArgs e)
 {

     if (Session["username"] == "")
     {
         Response.Redirect("LoginPage.aspx");
     }
       
        if (Session["bill_no"] != "")
        {
            bill_no = Session["bill_no"].ToString();
            get_bill();
        }
        else
        {
            Response.Redirect("home.aspx");
            
        }
    }

    private void get_bill() {
      if (Session["admin_id"] != "")
        {
            DataTable dt = Select_Logic.get_data_crystal("select_bill_no_sp", bill_no);

            if (dt.Rows.Count > 0)
            {
                ReportDocument data = new ReportDocument();
                Bill_Data bs = new Bill_Data();
                data.Load(Server.MapPath("CrystalReport.rpt"));//crystal report will be loaded in report document
                data.SetDataSource(dt);//all data will be filled in report from data table
                crv_bill.ReportSource = data;//assign data in crystal report
             }
            } 
        }
    }
