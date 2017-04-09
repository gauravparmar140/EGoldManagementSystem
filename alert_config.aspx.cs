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
        txt_alert_date.Text = DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mode = ConfigurationManager.AppSettings["Mode"].ToUpper();
        ConfigurationManager.AppSettings["Scheduled Date"] = DateTime.Now.Date.ToString();
    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "insert_tbl_alert_sp";
        cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@alert_date", Convert.ToString(txt_alert_date.Text));
        cmd.Parameters.Add("@alert_for", Convert.ToByte(ddl_alert_type.SelectedIndex));
        cmd.Parameters.Add("@alert_time", Convert.ToInt32(txt_alert_time.Text));
        Create_Command.Execute_Non_Query(cmd);


    }

}