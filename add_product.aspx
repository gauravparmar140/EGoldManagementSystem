<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head runat="server">
       <script type="text/javascript" src="css/style.css"> </script>
        <link href="css/StyleSheet.css" rel="Stylesheet" />
       
    </head> 
    <form id="Form1" role="form" runat="server" >
      <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
       </ajaxToolkit:ToolkitScriptManager>
 <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
   
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
        </li>
        <li>
            <a href="#">Products</a>
        </li>
    </ul>
</div>


<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" >
                <h2><i class="glyphicon glyphicon-edit"></i> Add Products</h2>

                
            </div>
            <div class="box-content">

               
       
                        
                           <div class="form-group">
                       <label>
                            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_product_name" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Product Name" ControlToValidate="txt_product_name" ForeColor="#FF3300" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     </div>

                     
                     <div class="form-group">
                       <label><asp:Label ID="Label8" runat="server" Text="Sub-Category Name"></asp:Label>
                       </label>
                       <asp:DropDownList class="form-control" ID="ddl_sub_category_name" runat="server" AutoPostBack="true"
                             onselectedindexchanged="ddl_sub_category_name_SelectedIndexChanged">
                       <asp:ListItem>--Select--</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                        </asp:DropDownList>

         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddl_sub_category_name" ValidationGroup="v" Text="*Select Sub-Category" Font-Bold="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                     
                     <div class="form-group">

                       <label><asp:Label ID="Label10" runat="server" Text="Product Unique Id"></asp:Label>
                       </label>
             
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate> 
                        <asp:TextBox ID="txt_generate_unique_no" class="form-control" runat="server"></asp:TextBox>
                 </ContentTemplate>
                 <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="ddl_sub_category_name" EventName="SelectedIndexChanged"/>
                 </Triggers>
             </asp:UpdatePanel>
                       
                      
                   
                    </div>


                    
                    <div class="form-group">
                       <label><asp:Label ID="Label11" runat="server" Text="Current Gold Price"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_current_gold_price" class="form-control" runat="server"></asp:TextBox>
                     <asp:Label ID="error_current_gold_price" runat="server" Text=""></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Gold Price" ControlToValidate="txt_current_gold_price" ValidationGroup="v" ForeColor="Red" Font-Bold="True" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     
                     
                     
                     
                     </div>



                    <div class="form-group">
                       <label><asp:Label ID="Label7" runat="server" Text="Product Weight"></asp:Label>
                        </label>
                        <asp:TextBox ID="txt_weight" class="form-control" runat="server"></asp:TextBox>
                        <asp:Label ID="error_product_weight" runat="server" Text=""></asp:Label>
                            


                
                    
                     <div class="form-group">
                       <label><asp:Label ID="Label9" runat="server" Text="Dealer Name"></asp:Label>
                       </label>
                         <asp:DropDownList class="form-control" ID="ddl_dealer_name" runat="server">
                         <asp:ListItem>--Select--</asp:ListItem>
                         <asp:ListItem>1</asp:ListItem>
                        </asp:DropDownList>
                         
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select Dealer Name" ControlToValidate="ddl_dealer_name" ValidationGroup="v" InitialValue="--Select--" Display="Dynamic" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                     </div>

                     
                    

                    <div class="form-group">
                       <label>
                       <asp:Label ID="Label2" runat="server" Text="Product Description"></asp:Label>
                       </label>
                       <asp:TextBox ID="txt_product_description" class="form-control" runat="server"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Description" ControlToValidate="txt_product_description" ValidationGroup="v" SetFocusOnError="True" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                     
                                        
                    <div class="form-group">
                       <label>
                       <asp:Label ID="Label5" runat="server" Text="Product Quality"></asp:Label>
                       </label>
                          <asp:DropDownList  class="form-control" ID="ddl_product_quality"  runat="server">
                             <asp:ListItem>--Select--</asp:ListItem>
                             <asp:ListItem>24K</asp:ListItem>
                             <asp:ListItem>22K</asp:ListItem>
                             <asp:ListItem>20K</asp:ListItem>
                             <asp:ListItem>18K</asp:ListItem>
                        </asp:DropDownList>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddl_product_quality" InitialValue="--Select--" ValidationGroup="v" Text="*Select Product Quality" Font-Bold="True" Display="Dynamic" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                       <asp:Label ID="Label4" runat="server" Text="Purchase Date"></asp:Label>
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
                            TargetControlID="txt_purchase_date">
                          </ajaxToolkit:CalendarExtender>

                       <asp:TextBox ID="txt_purchase_date" class="form-control" runat="server"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatora" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Purchase Date" ValidationGroup="v" ControlToValidate="txt_purchase_date" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
   
        </div>

           


         
                <center>
                <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="Add" 
                        ValidationGroup="v" onclick="Button1_Click" />
                
                
                <asp:Button ID="Button2" runat="server"  class="btn btn-danger" Text="Cancel"  />

                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                </center>
 
 <!-- modal -->




 


 <!-- over -->


                


            </div>
                
        </div>
           <asp:Label ID="lb_1" runat="server" Text=""></asp:Label>
<ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
TargetControlID="lb_1"
CancelControlID="btn_ok"
PopupControlID="popup"
BackgroundCssClass="modalBackground"


>
  </ajaxToolkit:ModalPopupExtender>
        <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="btn_ok" runat="server" class="btn btn-default" Text="OK" CssClass="submit_btn" 
                    onclick="btn_ok_Click"/>
            </center>
        </div>


    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0--> 
   
</form>  
</asp:Content>

