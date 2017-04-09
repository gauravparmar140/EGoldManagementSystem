<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order_selling.aspx.cs" Inherits="_Default" %>

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
            <a href="#">Orders</a>
        </li>
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Order Selling</h2>
                </div>
          
                
               <br />

                   <div class="form-group">
                     
                       <asp:LinkButton PostBackUrl="~/add_order.aspx" ID="LinkButton1" runat="server" 
                           Text="Enter New Order" onclick="LinkButton1_Click">New Order</asp:LinkButton>

                     </div>
                   

                   
                    <div class="form-group">
                         <asp:Label ID="lbl" runat="server"  Text="Total Amount"></asp:Label>
                         <asp:TextBox ID="txt_total_amount" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    
                    
                    <div class="form-group">
                         <asp:Label ID="Label1" runat="server"   Text="Paid Amount"></asp:Label>
                         <asp:TextBox ID="txt_paid_amount" class="form-control" runat="server"></asp:TextBox>
                    </div>
                     
                     
                    <center>
                         <asp:Button id="btn_add_order" runat="server"  Text="Generate Bill" 
                             class="btn btn-default" onclick="btn_add_order_Click"/>
                         <asp:Button id="btn_order_cancel" runat="server" Text="Cancel" class="btn btn-danger"/>
                    </center>
             <!-- modal-->  
 <asp:Label id="a" Text="" runat="server"> </asp:Label>
     <asp:ModalPopupExtender ID="mpe" BackgroundCssClass="modalBackground"
     
     
     TargetControlID="a" 
     runat ="server" PopupControlID="popup" CancelControlID="Button1">
     </asp:ModalPopupExtender>


 <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" 
                      />
            </center>
 </div>

            </div>


            
            
        </div>
    </div>
    <!--/span-->

</div><!--/row-->


 

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</form>   
</asp:Content>

