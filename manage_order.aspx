<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_order.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="a" runat="server">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<div id="content" class="col-lg-10 col-sm-10">
  


            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a>
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
                <h2><i class="glyphicon glyphicon-edit"></i> Manage Order Details</h2>

     
                
            </div>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:GridView ID="grv_order" runat="server" AutoGenerateColumns="False" 
            onrowcommand="grv_order_RowCommand"  BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" 
            CellSpacing="5" ForeColor="Black" width="100%"
            AllowPaging="True" PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"
                        EmptyDataText="No Data"
            >
                                <Columns>
                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    
                    <asp:BoundField DataField="design_no" HeaderText="Design Number" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    
                    
                    <asp:BoundField DataField="sub_cat_name" HeaderText="Sub Category" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    
                    
                    
                    
                    <asp:BoundField DataField="prod_weight" HeaderText="  Weight" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                        <asp:BoundField DataField="order_date" HeaderText="Order Date" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                    <asp:BoundField DataField="order_complete_date" HeaderText="  Completion Date" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                    <asp:BoundField DataField="c_name" HeaderText="Customer Name" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                     
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                    <asp:BoundField DataField="prod_weight" HeaderText="Product Weight" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                  
                    
                    <asp:TemplateField HeaderText="Delete" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Delete Order" ID="img_delete" runat="server" ImageUrl="~/img/delete.png" CommandName="del"
                                CommandArgument='<%#Eval("order_id") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Edit" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ID="img_edt" runat="server" ToolTip="Edit Order" ImageUrl="~/img/edit.png" CommandName="edt"
                                CommandArgument='<%#Eval("order_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                   </asp:TemplateField>


                     <asp:TemplateField HeaderText="Status" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Change Order Status to True" ID="img_act" runat="server" ImageUrl='<%#Eval("order_status").ToString().Equals("True")?"~/img/green_acti.png":"~/img/green_dece.png" %>'
                                CommandName="act" CommandArgument='<%#Eval("order_id") %>' />
                            <asp:ImageButton 
                            ToolTip="Change Order Status to False"
                            ID="img_dec" runat="server" ImageUrl='<%#Eval("order_status").ToString().Equals("False")?"~/img/red_acti.png":"~/img/red_dece.png" %>'
                                CommandName="dec" CommandArgument='<%#Eval("order_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>

                </Columns>

                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>

    </ContentTemplate>

                       
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="grv_order" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="grv_order" EventName="RowCommand" />
            </Triggers>


    </asp:UpdatePanel>
             
        </div>
                <center>
                    <img src="img/green_acti.png" /> = Order Completed Successfully
                    <img src="img/red_acti.png" />   = Pending Order
                </center>       
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->






    <asp:Label ID="lb_1" runat="server" Text=""></asp:Label>

    <div class="popup_menu" runat="server"
        id="popup">
			<div>		
				<center>
        			 	<h3>Do You Really Want to Delete this Item ?
                        </h3>
				</center>
			</div>
			
			<div>		
				<center>
					 	<asp:Button class="btn btn-default" ID="modal_ok" Text="Ok"  runat="server" onclick="modal_ok_Click" 
                             />
                         <asp:Button class="btn btn-danger" ID="modal_cancel" Text="Cancel"  runat="server"/>
				</center>
			</div>
	    </div>

    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
     PopupControlID="popup"
 TargetControlID="lb_1"
 BackgroundCssClass="modalBackground"
 CancelControlID="modal_cancel">
    </asp:ModalPopupExtender>





</form>
</asp:Content>

