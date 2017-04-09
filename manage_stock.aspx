<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="manage_stock.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="content" class="col-lg-10 col-sm-10">
        <!-- content starts -->
        <div>
            <ul class="breadcrumb">
                <li><a href="home.aspx">Home</a> </li>
                <li><a href="#">Stock</a> </li>
            </ul>
        </div>
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well" data-original-title="">
                        <h2>
                            <i class="glyphicon glyphicon-edit"></i>Manage Stock</h2>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="grv_stock" runat="server" AutoGenerateColumns="False" 
                                onrowcommand="grv_stock_RowCommand" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                                CellSpacing="2" ForeColor="Black" 
                                AllowPaging="True" PageSize="10" PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"
                                Width="60%"
                                EmptyDataText="No Data"
                                >
                                <Columns>
                                    <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="70px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="sub_cat_name" HeaderText="Sub-Category Name" ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="current_stock " HeaderText="Stock" ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="dt_purchase_date" HeaderText="Last Update Date" ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                  
                                  
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
                                <asp:AsyncPostBackTrigger ControlID="grv_stock" EventName="PageIndexChanging" />
                                <asp:AsyncPostBackTrigger ControlID="grv_stock" EventName="RowCommand" />
                        </Triggers>

                    </asp:UpdatePanel>
                    
                </div>
            </div>
            <!--/span-->
        </div>
        <!--/row-->
        <!-- content ends -->
    </div>
    <!--/#content.col-md-0-->
    </form>
</asp:Content>
