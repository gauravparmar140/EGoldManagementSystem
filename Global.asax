<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Session["user_name"] = ""; 
        
        
        Session["id"] = "";
        Session["cus_id"] = "";
        Session["unique_id"] = "";
        Session["bill_no"] = "";

        Session["admin_id"] = "1";
        Session["admin_name"] = "";
        Session["remaining_amount_customer"] = "";
        Session["order_bill_no"] = "";
        Session["error_product_selling_page"] = "";
        Session["Bill_no_customer_page"]="";
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
