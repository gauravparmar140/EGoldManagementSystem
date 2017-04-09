    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_selling_data.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<head runat="server"></head>
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
         
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
    
    <div class="box-inner">
                    <div class="box-header well" data-original-title=""> 
                        <h2>
                            <i class="glyphicon glyphicon-edit"></i>&nbsp;&nbsp;&nbsp;&nbsp; ALL Selling</h2>
                    </div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="From"></asp:TextBox> 
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1">
        </asp:CalendarExtender>  
        <asp:TextBox ID="TextBox2" runat="server" placeholder="To"></asp:TextBox>
        <asp:CalendarExtender
            ID="CalendarExtender2" runat="server" TargetControlID="TextBox2">
        </asp:CalendarExtender>
        <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click"/>

<asp:UpdatePanel runat="server" ID="a">
<ContentTemplate>

</ContentTemplate>

<Triggers>
</Triggers>
</asp:UpdatePanel>

    <asp:GridView ID="grd_selling" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                        CellSpacing="2" HorizontalAlign="Left" BackColor="#CCCCCC" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" ForeColor="Black"
                        width="100%"
                        AllowPaging="True" PageSize="10" PageIndex="1" OnPageIndexChanging="gridview_PageIndexChanging"

                        >
            <Columns>
                <asp:BoundField DataField="c_name" HeaderText="Name" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                <asp:BoundField DataField="c_mobile_no" HeaderText="Mobile No" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                                  
                                           
                
                <asp:BoundField DataField="dt_purchase_date" HeaderText="Purchased Date" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                
                <asp:BoundField DataField="sub_cat_name" HeaderText="Sub Category" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                
                <asp:BoundField DataField="prod_name" HeaderText="Product Name" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                
                <asp:BoundField DataField="prod_price" HeaderText="Price" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                

                <asp:BoundField DataField="bill_no" HeaderText="Bill No" 
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>          
                

                <asp:BoundField DataField="total_amount"  HeaderText="Amount"
                                        ItemStyle-HorizontalAlign="Center" >
                                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
                <asp:BoundField DataField="remaining_amount" HeaderText="Remaining Amount" 
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
    <br />
    
    <!--/span-->

</div><!--/row-->
    
 <br />
 <center><asp:Button  ID="btn_generate_report" runat="server" Text="Generate Report" 
                onclick="btn_generate_report_Click"/>
                </center>
    <!-- content ends -->
    </div><!--/#content.col-md-0-->
    

</form>    

</asp:Content>

