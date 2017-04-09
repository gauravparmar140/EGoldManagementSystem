<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_order.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<head runat="server"></head>
 
 <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
        </li>
        <li>
            <a href="#">Order</a>
        </li>
    </ul>
</div>
 


<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Take Order</h2>

                
            </div>

            <div class="box-content">
                <form  action="" runat="server" role="form">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                     <div class="form-group">
                       
                       <label><asp:Label ID="Label8" runat="server" Text="Sub-Category"></asp:Label>
                       </label>
                       <asp:DropDownList class="form-control" ID="ddl_sub_category_name" runat="server"> 
                          <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>


                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select Sub  Category" ControlToValidate="ddl_sub_category_name" InitialValue="--Select--" ValidationGroup="v" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                     </div>

                    <div class="form-group">
                       <label><asp:Label ID="Label13" runat="server" Text="Product Name"></asp:Label></label>
                       
                       <asp:TextBox ID="txt_product_name" class="form-control" runat="server"></asp:TextBox>
                      
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15"
                                 runat="server" ErrorMessage="Enter Product Name" 
                                 ControlToValidate="txt_product_name"
                                  SetFocusOnError="True" 
                                  ForeColor="#FF3300"
                                   Display="Dynamic"
                                    Font-Bold="True" Text="*Enter Product Name" ValidationGroup="v"></asp:RequiredFieldValidator>
                     </div>
                   
                     
                    <div class="form-group">
                       <label><asp:Label ID="Label9" runat="server" Text="Customer Name"></asp:Label></label>
                       
                       <asp:TextBox ID="txt_customer_name" class="form-control" runat="server"></asp:TextBox>
                      
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_customer_name" SetFocusOnError="True" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True" Text="*Enter Customer Name" ValidationGroup="v"></asp:RequiredFieldValidator>
                     </div>
                     
                     <div class="form-group">
                       <label><asp:Label ID="Label10" runat="server" Text="Customer Mobile  No"></asp:Label></label>

                       <asp:TextBox ID="txt_customer_mobile_no" class="form-control" runat="server"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" Text="*Enter Customer Mobile No" ControlToValidate="txt_customer_mobile_no" ValidationGroup="v"></asp:RequiredFieldValidator>
                     </div>
                     

                     
                     <div class="form-group">
                       <label><asp:Label ID="email_address" runat="server" Text="Customer Email Address"></asp:Label></label>

                       <asp:TextBox ID="txt_email_address" class="form-control" runat="server"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" Font-Bold="True" Text="*Enter Customer Email Address" ControlToValidate="txt_email_address" SetFocusOnError="True" ForeColor="#FF3300" ValidationGroup="v"></asp:RequiredFieldValidator>
                    </div>
                    
                     
                     <div class="form-group">
                       <label><asp:Label ID="Label11" runat="server" Text="Customer Address"></asp:Label></label>

                       <asp:TextBox ID="txt_customer_address" class="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Customer Address" ControlToValidate="txt_customer_address" SetFocusOnError="True" ValidationGroup="v" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                     </div> 



                    <div class="form-group">
                       <label><asp:Label ID="Label2" runat="server" Text="Book No"></asp:Label></label>
                       <asp:TextBox ID="txt_book_no" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" SetFocusOnError="True" ControlToValidate="txt_book_no" ForeColor="#FF3300" Font-Bold="True" Text="*Enter Book No"></asp:RequiredFieldValidator>
                    </div>
                     
                    
                    <div class="form-group">
                       <label><asp:Label ID="Label3" runat="server" Text="Design No"></asp:Label></label>
                       <asp:TextBox ID="txt_design_no" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Add Design No" ValidationGroup="v" ControlToValidate="txt_design_no" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
   
                    </div>
                    
                   
                    <div class="form-group">
                       <label><asp:Label ID="Label5" runat="server" Text="Product Weight"></asp:Label>
                       </label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                       <asp:TextBox ID="txt_prod_weight" class="form-control" runat="server" ></asp:TextBox>
                       </ContentTemplate>
                       </asp:UpdatePanel>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Add Product Weight" ValidationGroup="v" ControlToValidate="txt_prod_weight" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
   

                    </div>
                    
                     <div class="form-group">
                       <label>
                       <asp:Label ID="Label1" runat="server" Text="Order Date"></asp:Label>
                       </label>
                       <asp:TextBox ID="txt_order_date" class="form-control" runat="server"></asp:TextBox>
                         <asp:CalendarExtender ID="CalendarExtender1" runat="server"
                         TargetControlID="txt_order_date"
                         >
                         </asp:CalendarExtender> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Order Date" ValidationGroup="v" ControlToValidate="txt_order_date" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
   
                    </div>

                    <div class="form-group">
                       <label>
                       <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
                       </label>
                       <asp:DropDownList class="form-control" ID="ddl_order_type" runat="server"> 
                          <asp:ListItem>--Select--</asp:ListItem>
                          <asp:ListItem>Gold</asp:ListItem>
                          <asp:ListItem>Silver</asp:ListItem>
                          <asp:ListItem>Platinum</asp:ListItem>
                        </asp:DropDownList>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select  Ornament Type" ControlToValidate="ddl_order_type" InitialValue="--Select--" ValidationGroup="v" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="form-group">
                       
                       <label>
                            <asp:Label ID="Label7" runat="server" Text="Quality"></asp:Label>
                       </label>
                       
                       <asp:DropDownList  class="form-control" ID="ddl_order_quality" runat="server"> 
                          <asp:ListItem>--Select--</asp:ListItem>
                          <asp:ListItem>22k</asp:ListItem>
                          <asp:ListItem>18k</asp:ListItem>
                       </asp:DropDownList>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select  Ornament Quality" ControlToValidate="ddl_order_quality" InitialValue="--Select--" ValidationGroup="v" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>

                    </div>
                    
                     
                     <div class="form-group">
                       <label>
                       <asp:Label ID="Label6" runat="server" Text="Completion Date"></asp:Label>
                       </label>
                       <asp:TextBox ID="txt_order_complete_date" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Order Completion Date" ValidationGroup="v" ControlToValidate="txt_order_complete_date" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                       
                         <asp:CalendarExtender ID="CalendarExtender2" runat="server"
                         TargetControlID="txt_order_complete_date"
                         >
                         </asp:CalendarExtender> 
                    </div>
                    


                      <div class="form-group">
                           <label>
                           <asp:Label ID="lbl_prod_price" runat="server" Text="Product Price"></asp:Label>
                           </label>
                           <asp:TextBox ID="txt_product_price" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Product Price" Text="*Enter Producr Price" ValidationGroup="v" ControlToValidate="txt_product_price" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                      </div>
                  
                  
                       


                <center>
                    <asp:Button ID="Button1" runat="server" class="btn btn-default"  Text="Ok" 
                        ValidationGroup="v" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Cancel" ValidationGroup="v" />
                </center>
 
 <!-- Modal Start-->
                <asp:ModalPopupExtender ID="ModalPopupExtender1" 
                BackgroundCssClass="modalBackgrount"
                runat="server" PopupControlID="popup"
                CancelControlID="btn_ok" TargetControlID="Lbl">

                </asp:ModalPopupExtender>
                <asp:Label ID="Lbl" runat="server"> </asp:Label>
                <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="btn_ok" runat="server" Text="OK" CssClass="submit_btn" 
                    />
            </center>
        </div>


 <!-- Modal End-->



                 </form>

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
 


</asp:Content>

