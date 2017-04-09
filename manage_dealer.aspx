<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_dealer.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 
 
 <form id="Form1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
 </asp:ScriptManager>
  


  <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a>
        </li>
        <li>
            <a href="#">Dealer</a>
        </li>
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Manage Dealer</h2>
          
                
               
            </div>

              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="grv_dealer" runat="server" AutoGenerateColumns="False" 
                            onrowcommand="grv_dealer_RowCommand" AllowSorting="True" 
                             BorderStyle="Solid" BorderWidth="3px"
                              EmptyDataText="No Data" 
                              BackColor="#CCCCCC" BorderColor="#999999" ForeColor="Black"
                          AllowPaging="True" PageIndex="1" 
                            OnPageIndexChanging="gridview_PageIndexChanging" CellPadding="0"  
                            Width="100%"
                            PageSize="10"
                            >
                            
                            <Columns>
                                 <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                                 </asp:TemplateField>
                                 
                                 <asp:BoundField DataField="d_name" HeaderText="Dealer Name" 
                                     ItemStyle-HorizontalAlign="Center" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="d_email_address" HeaderText="Dealer Email" 
                                     ItemStyle-HorizontalAlign="Center" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="d_contact_no" HeaderText="Contact No" 
                                     ItemStyle-HorizontalAlign="Center" >

                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>

                               <asp:TemplateField  HeaderText="Delete" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:ImageButton ToolTip="Delete" ID="img_delete" runat="server" ImageUrl="~/img/delete.png" CommandName="del"
                                                CommandArgument='<%#Eval("d_id") %>' />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="70px" />
                              </asp:TemplateField>

                    
                                <asp:TemplateField HeaderText="Edit" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:ImageButton  ToolTip="Edit" ID="img_edt" runat="server" ImageUrl="~/img/edit.png" CommandName="edt"
                                                CommandArgument='<%#Eval("d_id") %>' />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="70px" />
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Status" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="img_act" ToolTip="Change to True" runat="server" ImageUrl='<%#Eval("d_status").ToString().Equals("True")?"~/img/green_acti.png":"~/img/green_dece.png" %>'
                                        CommandName="act" CommandArgument='<%#Eval("d_id") %>' />
                                    <asp:ImageButton ID="img_dec" runat="server"
                                    ToolTip="Change to False"
                                     ImageUrl='<%#Eval("d_status").ToString().Equals("False")?"~/img/red_acti.png":"~/img/red_dece.png" %>'
                                        CommandName="dec" CommandArgument='<%#Eval("d_id") %>' />
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
            
                        <asp:AsyncPostBackTrigger ControlID="modal_ok" EventName="Click" />
          
                    </Triggers>
            </asp:UpdatePanel>
            
        </div>
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
 TargetControlID="lb_1"
 PopupControlID="popup"
 CancelControlID="modal_cancel"
 BackgroundCssClass="modalBackground"
 >
 </asp:ModalPopupExtender>
    





</form>    
</asp:Content>


