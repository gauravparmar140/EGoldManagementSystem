using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Update_Logic
/// </summary>
public class Update_Logic
{
	public Update_Logic()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public static int update_status(string pname, string status, string id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = pname;
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@id", id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@status", status));
        return Create_Command.Execute_Non_Query(cmd);

    }


    public static int Update_Dealer(User_Property_Tbl_Dealer up)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update_tbl_dealer_sp";
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(Create_Parameter.Convert_String("@d_id", up.d_id));
        
        cmd.Parameters.Add(Create_Parameter.Convert_String("@d_name", up.d_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@d_email_address", up.d_email_address));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@d_location", up.d_location));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@d_contact_no", up.d_contact));

        return Create_Command.Execute_Non_Query(cmd);
    }



    public static int Update_Category(User_Property_Tbl_Category u)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_category_sp";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@cat_id", u.cat_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@cat_name", u.cat_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@cat_photo", u.cat_photo));

        return Create_Command.Execute_Non_Query(cmd);

    }



    public static int Update_Sub_Category(User_Property_Tbl_Sub_Category u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_sub_category";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@sub_cat_id", u.sub_cat_id));
        
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@cat_id", u.cat_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@sub_cat_name", u.sub_cat_name));

        return Create_Command.Execute_Non_Query(cmd);

    }





    public static int Update_Product(User_Property_Tbl_Product u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_product_sp";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@p_id", u.p_id));
        
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@d_id", u.d_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@sub_cat_id", u.sub_Cat_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_description", u.prod_description));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_quality", u.prod_quality));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_type", u.prod_type));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_weight", u.prod_weight));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_unique_no", u.prod_unique_no));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_name", u.prod_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@product_purchase_date", u.purchase_date));


        return Create_Command.Execute_Non_Query(cmd);
    }


    public static int Update_Customer(User_Property_Tbl_Customer u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_customer";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@c_id", u.c_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_name", u.c_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_mobile_no", u.c_mobile_no));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_email_address", u.c_email_address));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@c_address", u.c_address));

        return Create_Command.Execute_Non_Query(cmd);
    }




    public static int Update_Stock(User_Property_Tbl_Stock u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_stock_sp";


        cmd.Parameters.Add(Create_Parameter.Convert_Int("@s_id",u.s_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@sub_cat_id", u.sub_cat_id)); 

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@current_stock", u.current_stock));
         cmd.Parameters.Add(Create_Parameter.Convert_String("@last_update_date", u.l_date)); 

        return Create_Command.Execute_Non_Query(cmd);
    }
    
        


    public static int Update_Old_Intake(User_Property_Tbl_Old_Intake u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_old_intake_sp";
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@old_id", u.old_id));
        
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@s_cat_id", u.s_cat_id));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_description", u.prod_description));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@prod_weight", u.prod_weight));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@prod_price", u.prod_price));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_type", u.prod_type));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@intake_date", u.in_date));
        return Create_Command.Execute_Non_Query(cmd);
    }




    public static int Update_Temp_Selling(User_Property_Tbl_Temp_Selling u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_temp_selling_sp";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@t_id", u.t_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@p_id", u.p_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@c_id", u.c_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@prod_price", u.prod_price));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", u.bill_no));



        return Create_Command.Execute_Non_Query(cmd);
    }



    public static int Update_Selling(Userr_Property_Tbl_Selling u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_selling_sp";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@s_id", u.s_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@c_id", u.c_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", u.bill_no));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@total_amount", u.total_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@remaining_amount", u.remaining_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Date("@purchase_date", u.purchase_date));

        return Create_Command.Execute_Non_Query(cmd);
    }




    public static int Update_Order(User_Property_Tbl_Order u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_order_sp";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@product_name", u.product_name));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@order_id", u.order_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@sub_cat_id", u.sub_cat_id));
        
        cmd.Parameters.Add(Create_Parameter.Convert_String("@book_name", u.book_name));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@design_no", u.design_no));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@prod_weight", u.prod_weight));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@o_type", u.o_type));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@order_complete_date", u.order_complete_date));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@order_quality", u.order_quality));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@order_date", u.order_date));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@product_name", u.product_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@product_price", u.product_price));

        return Create_Command.Execute_Non_Query(cmd);
    }



    public static int Update_Order_Temp_Selling(User_Property_Tbl_Order_Temp_Selling u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_order_temp_selling";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@t_id", u.t_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@product_name", u.product_name));
        
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@total_amount", u.total_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", u.bill_no));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@c_id", u.c_id));


        return Create_Command.Execute_Non_Query(cmd);
    }







    public static int Update_Order_Selling(User_Property_Tbl_Order_Selling u)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_tbl_order_selling_sp";


        cmd.Parameters.Add(Create_Parameter.Convert_Int("@o_id", u.o_id));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@total_paymeny", u.total_payment));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", u.bill_no));
        cmd.Parameters.Add(Create_Parameter.Convert_Date("@paid_amount", u.paid_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Date("@remaining_amount", u.remaininig_amount));


        return Create_Command.Execute_Non_Query(cmd);
    }


    public static int deduct_stock(string sub_cat_id, string stock)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_stock";

        cmd.Parameters.Add(Create_Parameter.Convert_Int("@sub_cat_id",sub_cat_id ));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@current_stock", stock));

        return Create_Command.Execute_Non_Query(cmd);



    }

    //used in update the bill amount from the home page
    public static int update_remaining_amount(string bill,string remaining_amount) { 
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText="update_remaining_bill";
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no",bill));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@remaining_amount",remaining_amount));

        return Create_Command.Execute_Non_Query(cmd);

    }



    public static int update_password(string user_name, string password)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_password";
        cmd.Parameters.Add(Create_Parameter.Convert_String("@user_name", user_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@new_password", password));

        return Create_Command.Execute_Non_Query(cmd);

    }


    public static int update_user_data(string u_name_session , string u_name, string u_address, string u_shop_name , string u_photo)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_user_data";


        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_name_session", u_name_session));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_name", u_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_address", u_address));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_shop_name", u_shop_name));
        cmd.Parameters.Add(Create_Parameter.Convert_String("@u_photo", u_photo));
        return Create_Command.Execute_Non_Query(cmd);

    }


    public static int update_amount_order(string paid_amount, string remaining_amount, string bill_no)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "update_amount_order";


        cmd.Parameters.Add(Create_Parameter.Convert_Int("@paid_amount", paid_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@remaining_amount", remaining_amount));
        cmd.Parameters.Add(Create_Parameter.Convert_Int("@bill_no", bill_no));


        return Create_Command.Execute_Non_Query(cmd);

    }





}