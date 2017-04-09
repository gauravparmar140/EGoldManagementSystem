


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_selling.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<head runat="server">
</head>

 
  <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
        </li>
        <li>
            <a href="#">Selling</a>
        </li>
    </ul>
</div>

<div class="row">
    
    <!--/span-->

</div><!--/row-->

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> Manage Selling</h2>

                
            </div>
            <div class="box-content">
                <form id="form1" runat="server">

<asp:ScriptManager ID="ScriptManager2" runat="server">
</asp:ScriptManager>
                    <div class="form-group">
            
    <asp:Label ID="Label1" runat="server" Text="Current Gold Price"></asp:Label>
                        <asp:TextBox ID="txt_current_gold_price" class="form-control" runat="server">

                        </asp:TextBox>

                    </div>

                     
                    <div class="form-group">
                   
                    <label> <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label></label>
    
                         <asp:TextBox ID="txt_customer_name" class="form-control" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_customer_name" ValidationGroup="v" Text="*Enter Customer Name" ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label><asp:Label ID="Label3" runat="server" Text="Mobile No"></asp:Label></label>
     
                        <asp:TextBox ID="txt_mobile_no" class="form-control" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Mobile No" ControlToValidate="txt_mobile_no" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txt_mobile_no" ErrorMessage="Enter Prooper mobile number" 
                                    ValidationExpression="[0-9]{10}"
                                    ValidationGroup="v"
                                    Display="Dynamic"
                                    ForeColor="Red"> 
                                    </asp:RegularExpressionValidator>



                    </div>
                    
                    <div class="form-group">
                          
                          <label><asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label></label>
     
                         <asp:TextBox ID="txt_email_address" class="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Email Address" ControlToValidate="txt_email_address" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                           
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                         ValidationGroup="v" ControlToValidate="txt_email_address" 
                         ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                         ErrorMessage="*Enter Proper Email" ForeColor="#FF3300" SetFocusOnError="true" >
                         </asp:RegularExpressionValidator>
    
                    </div>

                    <div class="form-group">
                         
                         <label> <asp:Label ID="Label5" runat="server" Text="Customer Address"></asp:Label> 
                         </label>
     
                         <asp:TextBox ID="txt_customer_address" class="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Customer Address" ControlToValidate="txt_customer_address" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    
                    
                 
                 <div class="form-group">
                         <label>
                         <asp:Label ID="Label9" runat="server" Text="Purchase Date"></asp:Label>
                         </label>
                         
     
                         <asp:TextBox ID="txt_purchase_date" class="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="v" Text="*Enter Purchase Date" ControlToValidate="txt_purchase_date" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" Font-Bold="True"></asp:RequiredFieldValidator>
                   
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_purchase_date">
                        </asp:CalendarExtender>
                    </div>
                


<center>
<asp:Button ID="btn_ok" runat="server"  class="btn btn-default" Text="Sell Product" ValidationGroup="v" 
                    onclick="btn_ok_Click" ToolTip="Sell Only One Product" /> &nbsp;
<asp:Button ID="btn_cancel" runat="server" class="btn btn-danger" Text="Cancel" />         

</center>               
      
                


                     
                <div class="form-group">
                         <br />
                         <b> <asp:Label ID="Label10" runat="server" Text="Add New Product"></asp:Label>
                         <br />
                         </b>
                         
                         <br />
                         <b> <asp:Label ID="Label11" runat="server" Text="Id"></asp:Label>
                         </b>
                          <asp:TextBox ID="txt_unique_id2" class="form-control" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_unique_id2" ValidationGroup="v1" Text="*Enter Id" Display="Dynamic" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
<center>
     <asp:Button ID="Button3" class="btn btn-default" runat="server" Text="Add New Product" 
            ValidationGroup="v1" onclick="Button3_Click"  />

    <asp:Button ID="Button4" runat="server"  class="btn btn-danger" Text="Cancel" />
    </center> 
                         <br />
    
      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
                       
        <asp:GridView ID="grv_view_prod" runat="server" AutoGenerateColumns="False" 
            onrowcommand="grv_view_prod_RowCommand">
            <Columns>
                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="prod_price" HeaderText="Product Price" />
                    <asp:BoundField DataField="prod_weight" HeaderText="Product Weight" />
                    <asp:BoundField DataField="prod_quality" HeaderText="Product Quality" />
                    <asp:BoundField DataField="prod_type" HeaderText="Product Type" />
                    <asp:BoundField DataField="d_name" HeaderText="Dealer Name" />
                    <asp:BoundField DataField="prod_unique_no" HeaderText="Unique No" />  
                        <asp:TemplateField HeaderText="Sell" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Button ID="asd" CssClass="btn btn-default" runat="server" Text="Sell" 
                            CommandName="sell"
                                CommandArgument='<%#Eval("p_id") %>' />
                        </ItemTemplate>
                   </asp:TemplateField>
      
                             
            </Columns>

        </asp:GridView> 

    </ContentTemplate>

    <Triggers>
    
            
                <asp:AsyncPostBackTrigger ControlID="grv_view_prod" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="grv_view_prod" EventName="RowCommand" />
            
    </Triggers>

    </asp:UpdatePanel> 
 
   
</div>
<br />  
<br />  
<br />  
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" class="btn btn-dafault" Text="View Selected Products" />
<br />  
<br />  

    <asp:Label Text="Final Products" runat="server">
    </asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
                       
        <asp:GridView ID="grv_prod_selling" runat="server" AutoGenerateColumns="False" 
            onrowcommand="grv_prod_selling_RowCommand" 
            onselectedindexchanged="grv_prod_selling_SelectedIndexChanged">
            <Columns>
                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="selling_price" HeaderText="Selling Price" />
                    <asp:BoundField DataField="prod_unique_no" HeaderText="Product Unique No." />
                    
                     <asp:TemplateField HeaderText="Delete" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ID="img_delete" runat="server" ImageUrl="~/img/delete.png" CommandName="del"
                                CommandArgument='<%#Eval("t_id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>        
                             
            </Columns>

        </asp:GridView> 

    </ContentTemplate>

    <Triggers>
    
            
                <asp:AsyncPostBackTrigger ControlID="grv_prod_selling" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="grv_prod_selling" EventName="RowCommand" />
            
    </Triggers>

    </asp:UpdatePanel> 


       
      Generation Of Bill
        <div class="form-group">
                         <label>
                         <asp:Label ID="Label6" runat="server" Text="Total Amount"></asp:Label>
                         </label>
                         
     
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
                                <asp:TextBox ID="txt_total_amount" class="form-control" runat="server"></asp:TextBox>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="grv_prod_selling" EventName="RowCommand"/>
        </Triggers>
        </asp:UpdatePanel>
     
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="p" Text="*Enter Total Amount" ControlToValidate="txt_total_amount" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" Font-Bold="True"></asp:RequiredFieldValidator>
                    
         </div>
                         
                <div class="form-group">
                         <label>
                         <asp:Label ID="Label7" runat="server" Text="Current Pay"></asp:Label>
     
                         </label>
                         <asp:TextBox ID="txt_current_pay" class="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="p" Text="*Enter Current Pay" ControlToValidate="txt_current_pay" SetFocusOnError="True" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    
                </div>

                
                <div class="form-group">

                <asp:Label ID="amount_error" runat="server" Text=""> 
                </asp:Label>

                 </div>
                 &nbsp;<asp:Button ID="btn_generate_bill" class="btn btn-default" runat="server" Text="Generate bill" 
                    onclick="btn_generate_bill_Click" />



                    <asp:Label id="a" Text="" runat="server"> </asp:Label>
                    <asp:ModalPopupExtender ID="mpe" BackgroundCssClass="modalBackground"
                    TargetControlID="a" 
                    runat ="server" PopupControlID="popup" CancelControlID="Button1">
                    </asp:ModalPopupExtender>
                    
                    <div class="popup_menu" id="popup" runat="server">
                    <center>
                    <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                    <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn"/>
                    </center>
                    </div>
                    <!--  popup over -->


       </form>

    
   

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div>
 

</asp:Content>

