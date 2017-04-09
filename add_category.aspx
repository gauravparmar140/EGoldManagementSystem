<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 
  <form id="Form1"  runat="server" action="">
                  
   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
     </asp:ToolkitScriptManager>


 <div id="content" class="col-lg-10 col-sm-10">
  


            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="home.aspx">Home</a>
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
                <h2><i class="glyphicon glyphicon-edit"></i> Add Category</h2>

                
            </div>
            <div class="box-content">
                 

     
                
                <div class="form-group"> 
                 
                <label>
                <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>  
                </label>
                <asp:TextBox ID="txt_category_name" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_category_name" Text="* Enter Category" ValidationGroup="v" Font-Bold="True" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                         
                 <label>
                 <asp:Label ID="Label1" runat="server" Text="Category Photo"></asp:Label> 
                 </label>
                 <asp:FileUpload  ID="fl_category_photo" runat="server" />
                 <asp:Label ID="lbl_photo_msg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                 </div>


                    <center>
                    <asp:Button ID="btn_ok" runat="server" class="btn btn-default" Text="Add" 
                            ValidationGroup="v" onclick="btn_ok_Click" />
                    <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger" Text="Cancel" ValidationGroup="v" />
                    </center>
                   
<!-- model popup -->

 <asp:Label id="a" Text="" runat="server"> </asp:Label>
     <asp:ModalPopupExtender ID="mpe" BackgroundCssClass="modalBackground"
     
     
     TargetControlID="a" 
     runat ="server" PopupControlID="popup" CancelControlID="Button1">
     </asp:ModalPopupExtender>


 <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" 
                    onclick="btn_ok_Click" />
            </center>
 </div>
<!--  popup over -->



            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
    </form>
</asp:Content>

