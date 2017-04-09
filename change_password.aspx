<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<form id="a" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
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
        <div class="box-inner" id="abc">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-edit"></i> Home</h2>
             </div>
            
           
           <div class="form-group">
                      <label>
                         <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_current_password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Enter Current Password" ControlToValidate="txt_current_password" 
                            ValidationGroup="v" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" 
                            SetFocusOnError="True">*Enter Current Password</asp:RequiredFieldValidator>
            </div>  
                         
           <div class="form-group">
                      <label>
                         <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_new_password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter New Password" ControlToValidate="txt_new_password" 
                            ValidationGroup="v" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" 
                            SetFocusOnError="True">*Enter New Password</asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                      <label>
                         <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_confirm_password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="Enter Confirm Password" ControlToValidate="txt_confirm_password" 
                            ValidationGroup="v" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" 
                            SetFocusOnError="True">*Enter Confirm Password</asp:RequiredFieldValidator>
            </div>            

             <center>
                <asp:Button ID="btn_ok" runat="server" class="btn btn-default" Text="Ok" 
                        ValidationGroup="v" onclick="btn_ok_Click"  />
                
                
                <asp:Button ID="btn_cancel" runat="server"  class="btn btn-danger" Text="Cancel"  />

                
                </center>
 



    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="lbl_fake"
    BackgroundCssClass="modalBackground"
    CancelControlID="modal_btn_ok"
    PopupControlID="popup"
    >

    </asp:ModalPopupExtender>
    <asp:Label ID="lbl_fake" runat="server"></asp:Label>
    <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="modal_lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="modal_btn_ok" class="btn btn-default"
              runat="server" Text="OK" CssClass="submit_btn" onclick="modal_btn_ok_Click" />
            </center>
        </div>

            
        


    
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div>
    </div>
    </form> 










</asp:Content>

