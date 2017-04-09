<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customer_pending_amount_order.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="Form1" runat="server"> 
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


    <div class="box-inner">
                    <div class="box-header well" data-original-title=""> 
                        <h2>
                            <i class="glyphicon glyphicon-edit"></i>&nbsp;&nbsp;&nbsp;&nbsp;Customer With Remaining Amount</h2>
                    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                        CellSpacing="2" ForeColor="Black"
                        AllowPaging="True" PageSize="10" PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"
                        width="100%"
                        >
            <Columns>
                <asp:BoundField DataField="c_name" HeaderText="Customer Name" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                <asp:BoundField DataField="c_mobile_no" HeaderText="Customer Mobile No" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                                  
                                  
                <asp:BoundField DataField="total_amount"  HeaderText="Total Amount"
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
                <asp:BoundField DataField="remaininig_amount" HeaderText="Remaining Amount" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                
                <asp:BoundField DataField="bill_no" HeaderText="Bill No" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                <asp:BoundField DataField="order_Date" HeaderText="Order Date" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                
              <asp:BoundField DataField="order_complete_date" HeaderText="Order Complete Date" 
                                        ItemStyle-HorizontalAlign="Center" >
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
    </div>
    </div>
    <!--/span-->

</div><!--/row-->

 

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</form>    
</asp:Content>

