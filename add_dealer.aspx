<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_dealer.aspx.cs" Inherits="Default2" %>

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
            <a href="#">Dealer</a>
        </li>
    </ul>
</div>
 

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" >
                <Center>
                <i class="glyphicon glyphicon-edit"></i>&nbsp;Add Dealer Data
                </Center>
                
            </div>
            <div class="box-content">
                <form id="form1" runat="server">
                    

  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
  </asp:ToolkitScriptManager>

  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>

                    <div class="form-group">
                      <label>
                         <asp:Label ID="Label1" runat="server" Text="Dealer Name"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_dealer_name" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_dealer_name" 
                            ValidationGroup="v" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" 
                            SetFocusOnError="True">*Enter Dealer Name</asp:RequiredFieldValidator>
                     </div>

                     <div class="form-group">
                      <label>
                         <asp:Label ID="Label3" runat="server" Text="Dealer Email Address"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_dealer_email" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_dealer_email" 
                             ValidationGroup="v" Font-Bold="True" ForeColor="#FF3300" SetFocusOnError="True" Display="Dynamic"> *Enter Email Address</asp:RequiredFieldValidator>
                         
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                             ValidationGroup="v" ControlToValidate="txt_dealer_email" 
                             ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                             ErrorMessage="*Enter Proper Email" ForeColor="#FF3300" SetFocusOnError="true"  Display="Dynamic">
                             </asp:RegularExpressionValidator>
                     </div>

                     
                    
                    <div class="form-group">
                              <label for="exampleInputEmail1">
                              <asp:Label ID="Label2" runat="server" Text="Dealer Location"></asp:Label>
                              </label>
                              <asp:TextBox ID="txt_dealer_location" class="form-control" runat="server" 
                                  TextMode="MultiLine"></asp:TextBox>

                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                  ErrorMessage="RequiredFieldValidator" ValidationGroup="v" 
                                  Text="*Enter Dealer Location" ControlToValidate="txt_dealer_location" 
                                  Display="Dynamic" 
                                  Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                      <label>
                         <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                      </label>
                        <asp:TextBox ID="txt_contact_no" class="form-control" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            runat="server" ErrorMessage="Enter Contact Number" ValidationGroup="v" 
                            ControlToValidate="txt_contact_no" Text="*Enter Contact No" Font-Bold="True" 
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>

                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txt_contact_no" ErrorMessage="Enter Prooper mobile number" 
                                    ValidationExpression="[0-9]{10}"
                                    ValidationGroup="v"
                                    Display="Dynamic"
                                    ForeColor="Red"> 
                                    </asp:RegularExpressionValidator>





                     </div>

  </ContentTemplate>
  <Triggers>
  
  </Triggers>
  </asp:UpdatePanel>


                        <center>
                            <asp:Button ID="btn_ok"  class="btn btn-default" runat="server" Text="Add" 
                                ValidationGroup="v" onclick="btn_ok_Click" />     
                            <asp:Button ID="btn_cancel"   class="btn btn-danger" runat="server" Text="Cancel" ValidationGroup="v" />     
                       </center>
                
                              
<!-- model popup -->

     

<asp:Label id="a" Text="" runat="server"> </asp:Label>
 
  <asp:ModalPopupExtender ID="mpe" runat="server" PopupControlID="popup"
  BackgroundCssClass="modalBackground"
   CancelControlID="Button1" TargetControlID="a">
  </asp:ModalPopupExtender>

 <div class="popup_menu" id="popup" runat="server">
            <center>
                <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" onclick="Button1_Click"  
                        />

            </center>
 </div>
<!--  popup over -->


                </form>

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
     
 </div>
  
</asp:Content>

