<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_sub_category.aspx.cs" Inherits="Default2" %>

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
            <a href="add_category.aspx">Category</a>
        </li>
        <li>
            <a href="#"> Sub-Category</a>
        </li>
    </ul>
</div>

 

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <i class="glyphicon glyphicon-edit"></i> Add Sub-Category

                
            </div>
            <div class="box-content">
                <form role="form" runat="server" action="">
                 
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </asp:ToolkitScriptManager >   


                <div class="form-group">
                       <label>
                       <asp:Label ID="Label6" runat="server" Text="Select Category"></asp:Label>
                       </label>
                            <asp:DropDownList class="form-control" ID="ddl_sub_category" runat="server">
                            </asp:DropDownList>
                              
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                           ErrorMessage="RequiredFieldValidator" Text="*Select Category" 
                           ControlToValidate="ddl_sub_category" ValidationGroup="v" Font-Bold="True" 
                           ForeColor="Red" SetFocusOnError="True" InitialValue="--Select Category--"></asp:RequiredFieldValidator>
                          
                    </div>
                  
                 
                 


     <label>
     <asp:Label ID="Label2" runat="server" Text="Sub-Category Name"></asp:Label>  
     </label>
                         <asp:TextBox ID="txt_sub_category_name" class="form-control" runat="server"></asp:TextBox>
                  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Sub-Category Name" ControlToValidate="txt_sub_category_name" ValidationGroup="v" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                    <center>
                    <asp:Button ID="btn_ok"  runat="server" class="btn btn-default" Text="Add" 
                            ValidationGroup="v" onclick="btn_ok_Click" />
                    <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger" Text="Cancel" ValidationGroup="v" />
                    </center>


                   <!-- modal -->

 <asp:ModalPopupExtender
 TargetControlID="lbl_msg" 
 BackgroundCssClass="modalBackground"
 CancelControlID="Button1"
 PopupControlID="popup"
 ID="ModalPopupExtender1" runat="server">
 </asp:ModalPopupExtender >
                    <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" 
                    />
            </center>
        </div>
        <!-- modal over -->



                   </form>

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
     
</asp:Content>

