<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_category.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form runat="server">
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
            <a href="#">Category</a>
        </li>
       
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Manage Category</h2>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="grv_cat" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="grv_cat_RowCommand" AllowPaging="true" PageSize="6"
                     PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
                    ForeColor="Black"
                    CellPadding="1"
                    >

                    <Columns>
                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="cat_name" HeaderText="Category Name" 
                            ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                       <asp:TemplateField HeaderText="Category Photo" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("cat_photo") %>' Height="70" Width="70" ></asp:Image>
                        </ItemTemplate>
                           <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Delete" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Delete Category" ID="img_delete" runat="server" ImageUrl="~/img/delete.png" CommandName="del"
                                CommandArgument='<%#Eval("cat_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Edit" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ToolTip="Edit Category" ID="img_edt" runat="server" ImageUrl="~/img/edit.png" CommandName="edt"
                                CommandArgument='<%#Eval("cat_id") %>' />
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                   </asp:TemplateField>


                     <asp:TemplateField HeaderText="Status" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ID="img_act" ToolTip="Change To True" runat="server" ImageUrl='<%#Eval("cat_status").ToString().Equals("True")?"~/img/green_acti.png":"~/img/green_dece.png" %>'
                                 />
                            <asp:ImageButton ID="img_dec" ToolTip="Change To False" runat="server" ImageUrl='<%#Eval("cat_status").ToString().Equals("False")?"~/img/red_acti.png":"~/img/red_dece.png" %>'
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
                <asp:AsyncPostBackTrigger ControlID="grv_cat" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="grv_cat" EventName="RowCommand" />
            </Triggers>

            </asp:UpdatePanel> 

        </div>
    </div>
    <!--/span-->

</div><!--/row-->

 

    <!-- content ends -->
    </div><!--/#content.col-md-0-->

     
  <asp:Label ID="lb_1" runat="server" Text=""></asp:Label>
 <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
 PopupControlID="popup"
 TargetControlID="lb_1"
 BackgroundCssClass="modalBackground"
 CancelControlID="modal_cancel">
 </asp:ModalPopupExtender>
        
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
					 	<asp:Button class="btn btn-default" ID="modal_ok" Text="Ok"  runat="server" 
                            onclick="modal_ok_Click"/>
                         <asp:Button class="btn btn-danger" ID="modal_cancel" Text="Cancel"  runat="server"/>
				</center>
			</div>
	    </div>


</form>    
</asp:Content>

