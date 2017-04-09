<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_product.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <form id="Form1" runat="server">
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
            <a href="#">Products</a>
        </li>
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Manage Products</h2>

               
            </div>

            <center>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                     <asp:GridView ID="grv_product" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="grv_product_RowCommand" BackColor="#CCCCCC" BorderColor="#999999" 
                            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                            ForeColor="Black"
                            AllowPaging="True" PageSize="10" PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"
                            Width="100%"
                        EmptyDataText="No Data"
                            
                            >

                    <Columns>
                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>

                    <asp:BoundField DataField="prod_name" HeaderText=" Name" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                    <asp:BoundField DataField="prod_price" HeaderText=" Price" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                    <asp:BoundField DataField="sub_cat_name" HeaderText="Sub Category Name" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="d_name" HeaderText="Dealer Name" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="prod_unique_no" HeaderText="Unique Number" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="prod_description" HeaderText=" Description" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="prod_weight" HeaderText="Weight" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="prod_quality" HeaderText="Quality" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    <asp:BoundField DataField="prod_type" HeaderText="Type" 
                            ItemStyle-HorizontalAlign="Center" >

                    
                    
                    
                    
                       
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                    
                    
                    
                    
                       
                     <asp:TemplateField HeaderText="Delete" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Delete Product" ID="img_delete" runat="server" ImageUrl="~/img/delete.png" CommandName="del"
                                CommandArgument='<%#Eval("p_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Edit" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Edit Product" ID="img_edt" runat="server" ImageUrl="~/img/edit.png" CommandName="edt"
                                CommandArgument='<%#Eval("p_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                   </asp:TemplateField>


                     <asp:TemplateField HeaderText="Status" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Product Sold"  ID="img_act" runat="server" ImageUrl='<%#Eval("prod_status").ToString().Equals("True")?"~/img/green_acti.png":"~/img/green_dece.png" %>'
                                 />
                            <asp:ImageButton ToolTip="Product Not Sold" ID="img_dec" runat="server" ImageUrl='<%#Eval("prod_status").ToString().Equals("False")?"~/img/red_acti.png":"~/img/red_dece.png" %>'
                                 />
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
                <asp:AsyncPostBackTrigger ControlID="grv_product" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="grv_product" EventName="RowCommand" />
            </Triggers>   
                </asp:UpdatePanel>
               
            </center>
            <br />
             &nbsp;&nbsp;<img src="img/red_acti.png" /> = Product Has Been Sold<br />
             &nbsp;&nbsp;   <img src="img/green_acti.png" />= Product Has Not Been Sold yet
            
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    
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
      TargetControlID="lb_1"
       PopupControlID="popup"
       BackgroundCssClass="modalBackground"
       CancelControlID="modal_cancel">


      
      
      
      
      </asp:ModalPopupExtender>   

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</form>    
</asp:Content>

