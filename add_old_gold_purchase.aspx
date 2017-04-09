<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_old_gold_purchase.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
   
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
        </li>
        <li>
            <a href="#">Old Gold </a>
        </li>
    </ul>
</div>


<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" >
                <h2><i class="glyphicon glyphicon-edit"></i> Add Old Gold Data</h2>

                
            </div>
            <div class="box-content">
                <form id="Form1" role="form" runat="server" action="">
 
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </asp:ToolkitScriptManager>
                   <div class="form-group">
                   
                    <label> <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label></label>
    
                         <asp:TextBox ID="txt_customer_name" class="form-control" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_customer_name" ValidationGroup="v" Text="*Enter Customer Name" ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label><asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label></label>
     
                        <asp:TextBox ID="txt_customer_mobile_no" class="form-control" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Mobile No" ControlToValidate="txt_customer_mobile_no" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
                    </div>
                    
                    <div class="form-group">
                          
                          <label><asp:Label ID="Label5" runat="server" Text="Email Address"></asp:Label></label>
     
                         <asp:TextBox ID="txt_email_address" class="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Email Address" ControlToValidate="txt_email_address" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                         
                         <label> <asp:Label ID="Label8" runat="server" Text="Customer Address"></asp:Label> 
                         </label>
     
                         <asp:TextBox ID="txt_customer_address" class="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Customer Address" ControlToValidate="txt_customer_address" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    
                    
                    <div class="form-group">
                    
                    </div>
                   <div class="form-group">
                       <label><asp:Label ID="Label11" runat="server" Text="Sub-Category Name"></asp:Label>
                       </label>
                       <asp:DropDownList class="form-control" ID="ddl_sub_category_name" runat="server">
                       <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>

         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddl_sub_category_name" ValidationGroup="v" Text="*Select Sub-Category" Font-Bold="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                  
                      
                     <div class="form-group">
                       <label><asp:Label ID="Label10" runat="server" Text="Product_description">
                       </asp:Label>
                       </label>
                       
                        
                       <asp:TextBox ID="txt_prod_description" class="form-control" runat="server"></asp:TextBox>

     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Product Description" ControlToValidate="txt_prod_description" ValidationGroup="v" ForeColor="Red" Font-Bold="True" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>


                      
                     
                    <div class="form-group">
                       <label><asp:Label ID="Label7" runat="server" Text="Product Weight"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_weight" class="form-control" runat="server"></asp:TextBox>
                     
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Weight" ControlToValidate="txt_weight" ValidationGroup="v" ForeColor="Red" Font-Bold="True" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>
                                          
                    <div class="form-group">
                       <label><asp:Label ID="Label2" runat="server" Text="Product Price"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_prod_price" class="form-control" runat="server"></asp:TextBox>
                     
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Product Price" ControlToValidate="txt_prod_price" ValidationGroup="v" ForeColor="Red" Font-Bold="True" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>

                                         <div class="form-group">
                       <label><asp:Label ID="Label3" runat="server" Text="purchase_date"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_purchase_date" class="form-control" runat="server"></asp:TextBox>
                     
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Product Price Purchase Date" ControlToValidate="txt_purchase_date" ValidationGroup="v" ForeColor="Red" Font-Bold="True" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>


                       <div class="form-group">
                       <label><asp:Label ID="Label6" runat="server" Text="Product Type"></asp:Label>
                       </label>
                            <asp:DropDownList  class="form-control" ID="ddl_product_type" runat="server">
                             <asp:ListItem>--Select--</asp:ListItem>
                             <asp:ListItem>Gold</asp:ListItem>
                             <asp:ListItem>Silver</asp:ListItem>
                             <asp:ListItem>Platinum</asp:ListItem>
                          </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddl_product_type" InitialValue="--Select--" ValidationGroup="v" Text="*Select Product Type" SetFocusOnError="True" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                     
                    </div>

                    <div class="form-group">
                       
                       <label>
                            <asp:Label ID="Label12" runat="server" Text="Quality"></asp:Label>
                       </label>
                       
                               <asp:DropDownList  class="form-control" ID="ddl_order_quality" runat="server"> 
                                  <asp:ListItem>--Select--</asp:ListItem>
                                  <asp:ListItem>22k</asp:ListItem>
                                  <asp:ListItem>18k</asp:ListItem>
                               </asp:DropDownList>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select  Ornament Quality" ControlToValidate="ddl_order_quality" InitialValue="--Select--" ValidationGroup="v" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                    </div>


                    
 

                    
                                         
                 
                    
              
                 
                <center>
                <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="Add" 
                        ValidationGroup="v" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server"  class="btn btn-danger" Text="Cancel"  />
                </center>

                

        <!-- modal start  -->
 <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground"
 PopupControlID="popup" CancelControlID="btn_ok" TargetControlID="lbl">
 </asp:ModalPopupExtender>
        <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label runat="server" ID="lbl"></asp:Label>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="btn_ok" runat="server" Text="OK" CssClass="submit_btn"/>
            </center>
        </div>
	<!-- modal over -->



                 </form>

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0--> 



</asp:Content>

