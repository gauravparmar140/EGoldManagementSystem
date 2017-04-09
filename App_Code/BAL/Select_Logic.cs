using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Select_Logic
/// </summary>
public class Select_Logic
{
	public Select_Logic()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    public static DataTable get_data_crystal(string pname, string bill)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", bill));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable get_data_with_one_para(string pname)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        return Create_Command.Execute_Query(cmd);
    }



    public static DataTable get_data_with_two_para(string pname, string id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@id", id));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable get_data_with_three_para(string pname,string id , string id2)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_name",id ));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_mobile_no", id2));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable get_data_with_three_para2(string pname, string id, string id2)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@sub_cat_id", id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_id", id2));
        return Create_Command.Execute_Query(cmd);
    }


    public static DataTable search_product(string pname,string prod_unique_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_unique_no", prod_unique_no));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable search_product2(string pname, string prod_name)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add("@prod_name", prod_name);
        return Create_Command.Execute_Query(cmd);
    }



    public static DataTable Find_Sub_Category(String pname, String sub_cat_name)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@sub_cat_name", sub_cat_name));
        return Create_Command.Execute_Query(cmd);
    }


    public static DataTable Find_Stock(String pname, String sub_cat_id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@sub_cat_id", sub_cat_id));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable Find_Stock_id(String pname, String sub_cat_id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@sub_cat_id", sub_cat_id));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable Find_Selling_Data(String pname, String cus_id,String  bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@cus_id", cus_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@bill_no", bill_no));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable Find_Total_Payment(String pname, String cus_id, String bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@cus_id", cus_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@bill_no", bill_no));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable Find_Stock_Information(String pname, String id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@p_id", id));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable find_remaining_customer_Data(String pname, String bill_no)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_String("@bill_no",bill_no));
        return Create_Command.Execute_Query(cmd);
    }



    // this procedure is used for finding customer who has not paid their bill used in  customer_pending_amount.aspx page
    public static DataTable find_customer_pending_bill() { 
        SqlCommand cmd=new SqlCommand();
        cmd.CommandText = "customer_remaining_amount";
        return Create_Command.Execute_Query(cmd);
    }



    public static DataTable  selling_data()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "tbl_selling_all_data_sp";
        return Create_Command.Execute_Query(cmd);
    }

    
    //used in login page
    public static DataTable Login(String username,String password){
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(Create_Parameter.Convert_String("@username",username));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@password", password));

        cmd.CommandText = "tbl_user_login";

        return Create_Command.Execute_Query(cmd);
        
        }


    
   

    //load user data in home page
    public static DataTable find_user_data(string @u_name )
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "find_user_data";
        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_name", u_name));
        return Create_Command.Execute_Query(cmd);

    }


    //find total amount for those , who has select more than one orders
    public static DataTable select_total_amount_in_order_selling(string bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select_total_amount_in_order_selling";
        cmd.Parameters.Add(Create_Parameter.Convert_String("@bill_no",bill_no));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable load_customer_data_new_order(string bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "load_customer_data_new_order";
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", bill_no));
        return Create_Command.Execute_Query(cmd);
    }

    public static DataTable select_data_order_selling  (string bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select_data_order_selling";
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", bill_no));
        return Create_Command.Execute_Query(cmd);
    }
    //find order id
    public static DataTable find_order_id()
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "find_order_id";
         return Create_Command.Execute_Query(cmd);
     }


    //in manage order.axps 
    public static DataTable load_order_data()
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "load_order_data";
         return Create_Command.Execute_Query(cmd);
     }
    
    
    
    //customer who has not paid total amount of the order
     public static DataTable load_order_remaining_amount()
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "load_order_remaining_amount";
         return Create_Command.Execute_Query(cmd);
     }



     public static DataTable find_incomplete_order()
     {
         SqlCommand cmd = new SqlCommand();

         cmd.CommandText = "find_incomplete_order_sp";

         return Create_Command.Execute_Query(cmd);

     }
     public static DataTable completed_orders()
     {
         SqlCommand cmd = new SqlCommand();

         cmd.CommandText = "completed_orders";

         return Create_Command.Execute_Query(cmd);

     }


    //fill remaining amount in order //update remaininig amount
     public static DataTable fill_remaining_amoung_order(string @bill_no )
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "fill_remaining_amoung_order";
         cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", bill_no));
         return Create_Command.Execute_Query(cmd);
     }

       
    //forgot password
     public static DataTable select_data_tbl_user(string u_name)
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "select_data_tbl_user";
         cmd.Parameters.Add(Create_Parameter.Convert_String("@u_name", u_name));
         return Create_Command.Execute_Query(cmd);
     }

     public static DataTable select_tbl_product_selling_from_to(string from1,string to1)
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "select_tbl_product_selling_from_to";
         cmd.Parameters.Add(Create_Parameter.Convert_String("@from1", from1));
         cmd.Parameters.Add(Create_Parameter.Convert_String("@to1", to1));
         return Create_Command.Execute_Query(cmd);
     }


     public static DataTable select_customer_bill_info  (string pname, string cust_name)
     {
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = pname;
         cmd.Parameters.Add(Create_Parameter.Convert_String("@customer_name", cust_name));
           return Create_Command.Execute_Query(cmd);
     }




}
