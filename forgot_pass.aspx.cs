using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

public partial class forgot_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.CssClass = "btn btn-default";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_email.Text != "")
            {
                DataTable dt = Select_Logic.select_data_tbl_user(txt_email.Text);
                if (txt_email.Text != "")
                {
                    if (dt.Rows.Count == 1)
                    {
                        MailMessage mm = new MailMessage();
                        mm.To.Add(dt.Rows[0]["u_name"].ToString());
                        mm.From = new MailAddress("YourEmailAddress");
                        mm.Subject = "Forgot Password";
                        mm.Body = "Your Password is:" + dt.Rows[0]["u_password"].ToString();

                        SmtpClient sc = new SmtpClient();
                        sc.EnableSsl = true;
                        sc.Host = "smtp.gmail.com";
                        sc.Port = 587;
                        sc.Credentials = new NetworkCredential("YourEmailAddress", "Your Password");
                        ServicePointManager.ServerCertificateValidationCallback =
                                delegate(object s, X509Certificate certificate,
                                         X509Chain chain, SslPolicyErrors sslPolicyErrors)
                                { return true; };

                        sc.Send(mm);
                        mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                        Response.Redirect("Loginpage.aspx");

                    }
                }
            }
        }
        catch (Exception ex)
        {
            lbl_error.Text = "Error";
        }
    }
}