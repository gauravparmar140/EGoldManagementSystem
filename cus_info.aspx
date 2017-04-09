<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cus_info.aspx.cs" Inherits="_Default" %>
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
                    <a href="#">Customer Information</a>
                </li>
            </ul>
        </div>
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well">
                     <h2><i class="glyphicon glyphicon-edit"></i>Customer Information</h2>
                    </div>
                    <div class="box-content">
                        <form id="form1" runat="server">
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="form-group">
                                        <label>
                                            <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_customer_name" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_customer_name"
                                            ValidationGroup="v" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"
                                            SetFocusOnError="True">*Enter Customer Name</asp:RequiredFieldValidator>
                                        <asp:AutoCompleteExtender ID="AutoCompleteCustomerName" runat="server" TargetControlID="txt_customer_name" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCustomerName"></asp:AutoCompleteExtender>
                                         
                                    </div>

                                </ContentTemplate>
                                <Triggers>
                                </Triggers>
                            </asp:UpdatePanel>
                             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>

                                    <asp:GridView ID="grv_cust_bills" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                        CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                                        onrowcommand="grv_cust_bills_RowCommand" 
                                        onselectedindexchanged="grv_cust_bills_SelectedIndexChanged">
                                        <AlternatingRowStyle BackColor="#CCCCCC" Width="70%"/>
                                        <Columns>
                                            <asp:TemplateField HeaderText="No" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="70px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="c_name" HeaderText="Customer Name" />
                                            <asp:BoundField DataField="Date" HeaderText="Transaction Date" />
                                            <asp:BoundField DataField="total_amount" HeaderText="Total Amount" Visible="false" />
                                            <asp:BoundField DataField="remaining_amount" HeaderText="Remaining Amount" Visible="false" />
                                            <asp:BoundField DataField="bill_no" HeaderText="Bill Number" />
                                            <asp:BoundField DataField="status" HeaderText="Bill Status" />
                           
                            <asp:TemplateField HeaderText="Pending" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Button ID="btn_btn"
                             CommandName="bill" CommandArgument='<%#Eval("bill_no") %>' Text="Pay" runat="server" />
                            
                             </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:TemplateField>
                    




                                        </Columns>

                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />

                                    </asp:GridView>

                                </ContentTemplate>


                                <Triggers>
                                </Triggers>
                            </asp:UpdatePanel>


                            <center>
                            <asp:Button ID="btn_View_bills"  class="btn btn-default" runat="server" Text="View Bills" 
                                ValidationGroup="v" onclick="btn_View_bills_Click" />     
                            <asp:Button ID="btn_cancel"   class="btn btn-danger" runat="server" Text="Cancel" ValidationGroup="v" />     
                       </center>


                            <!-- model popup -->



                            <asp:Label ID="a" Text="" runat="server"> </asp:Label>

                            <asp:ModalPopupExtender ID="mpe" runat="server" PopupControlID="popup"
                                BackgroundCssClass="modalBackground"
                                CancelControlID="Button1" TargetControlID="a">
                            </asp:ModalPopupExtender>

                            <div class="popup_menu" id="popup" runat="server" style="display:none;" >
                                <center>
                <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" 
                        />

            </center>
                            </div>
                            <!--  popup over -->


                        </form>

                    </div>
                </div>
            </div>
            <!--/span-->

        </div>
        <!--/row-->

        <!-- content ends -->

    </div>
</asp:Content>

