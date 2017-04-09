<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel=Stylesheet  href="css/StyleSheet2.css">
   
<form id="a" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
  <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
        </li>
    </ul>
</div> 

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner" id="abc">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-edit"></i> Home</h2>
             </div>
            
             <div class="form-group">
                         
                         <br />
                        
                          <asp:TextBox Font-Bold="true" ID="txt_unique_id"  placeholder="Enter Unique Id" 
                             class="form-control2" ToolTip="Enter Unique Id" runat="server" 
                             ontextchanged="txt_unique_id_TextChanged"></asp:TextBox>
                           <asp:TextBox Font-Bold="true" ID="txt_product_name" placeholder="Enter Product Name" class="form-control2" ToolTip="Enter Product Name" runat="server"></asp:TextBox>
    
    
    
    


                           
    <asp:Button ID="Button6" class="btn btn-default" runat="server" Text="Ok" 
            ValidationGroup="v1" onclick="Button6_Click"  />
              
    
                           <br />
                           <br />
    <asp:UpdatePanel runat="server">
    <ContentTemplate>
        <asp:Label ID="error_msg" runat="server" ForeColor="Red"></asp:Label>
    </ContentTemplate>
    <Triggers>
     
    </Triggers>
    </asp:UpdatePanel>


    <center>
    
    </center>
    <asp:TextBox ID="txt_bill_no" class="form-control2" placeholder="Enter Bill No" 
    Font-Bold="true" ToolTip="Enter Bill No" runat="server"></asp:TextBox>
     <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Ok" 
            ValidationGroup="v3" onclick="Button1_Click" />
            
     <asp:UpdatePanel runat="server">
    <ContentTemplate>
        <asp:Label ID="error_msg2" runat="server" ForeColor="Red"></asp:Label>
    </ContentTemplate>
    <Triggers>
     
    </Triggers>
    </asp:UpdatePanel>

    
    <asp:RequiredFieldValidator 
    ControlToValidate="txt_bill_no" ValidationGroup="v3" ErrorMessage="Enter Bill NO" ForeColor="Red" ID="RequiredFieldValidator1" runat="server"></asp:RequiredFieldValidator>

    
    <br />
    <br />    

     <asp:TextBox ID="txt_order_bill_no" Font-Bold="true" class="form-control2" ToolTip="Enter Order No" placeholder="Enter Order No" runat="server">
     </asp:TextBox>
     <asp:Button ID="btn_order_ok" class="btn btn-default" runat="server" Text="Ok" 
            ValidationGroup="v4" onclick="btn_order_ok_Click" />
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:Label ID="error_msg3" runat="server" ForeColor="Red"></asp:Label>
    </ContentTemplate>
    <Triggers>
     
    </Triggers>
    </asp:UpdatePanel>
  
     <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_order_bill_no"
     ErrorMessage="Enter ORder Bill NO" ValidationGroup="v4" ForeColor="Red">

     </asp:RequiredFieldValidator>
    
    

   
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
                       
        <asp:GridView ID="grv_product" runat="server" AutoGenerateColumns="False" 
            onrowcommand="grv_product_RowCommand1">
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
                            <asp:Button ID="Button3" CssClass="btn btn-default" runat="server" Text="Sell" 
                            CommandName="sell"
                                CommandArgument='<%#Eval("p_id") %>' />
                        </ItemTemplate>
                   </asp:TemplateField>

 
                            
                             
            </Columns>

        </asp:GridView> 

    </ContentTemplate>

    <Triggers>
    
            <asp:AsyncPostBackTrigger  ControlID="Button6" EventName="Click"/>
            
    </Triggers>

    </asp:UpdatePanel> 

            </div>

            


    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div>
    </form>    


</asp:Content>

