<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

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
            <a href="home.aspx">Home</a>
        </li>
         
    </ul>
        </div>
     

<div class="row">
    <div class="box col-md-12">
    <div class="box-inner"> 
    <div class="box-header well" data-original-title="">
                        <h2>
                            <i class="glyphicon glyphicon-edit"></i>Profile</h2>
    </div>
                     
        <br />
        <br />
            


            

            
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div>
                        <div style="width:50%;float:left">
                             <center>
                                 <h4>
                                     <asp:Label ID="Label1" runat="server" Text="User Name" ></asp:Label>
                                 </h4>
                            </center>
                        </div>   
                       
                    <div style="width:50%;float:left">   
                        <asp:TextBox ID="txt_user_name"  runat="server"></asp:TextBox>
                    </div>    
                        
                    <div style="clear:both">
                    </div>

                 </div>
            
            <br />

              

             <div>

                    <div style="width:50%;float:left">
                       <center>
                        <h4>
                            <asp:Label ID="Label2" runat="server" Text="Address" ></asp:Label>
                        </h4>
                        </center>
                    </div>   
                       
                    <div style="width:50%;float:left">   
                        <asp:TextBox ID="txt_address"  runat="server"></asp:TextBox>
                    </div>    
                        
                    <div style="clear:both">
                    </div>

            </div>
            <div>
                     <div style="width:50%;float:left">
                    <center>
                        <h4>
                            <asp:Label ID="Label3" runat="server" Text="Shop Name" ></asp:Label>
                        </h4>
                        </center>
                    </div>   


            <br />
              <div style="width:50%;float:left">   
                        <asp:TextBox ID="txt_shop_name"  runat="server"></asp:TextBox>
                    </div>    
                        
                    <div style="clear:both">
                    </div>

            </div>

                </ContentTemplate>


                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btn_ok" EventName="Click"/>
                </Triggers>
                </asp:UpdatePanel>  
            
           
           
                       
                  
            
            <br />
            <br />
       <center>
                
                <asp:Button ID="btn_edit" runat="server" class="btn btn-success" Text="Edit" 
                        ValidationGroup="v" onclick="btn_edit_Click"   />
                &nbsp;

                
                <asp:Button ID="btn_ok" runat="server" class="btn btn-default" Text="Ok" 
                        ValidationGroup="v" onclick="btn_ok_Click"   />
                
                &nbsp;
                <asp:Button ID="btn_cancel" runat="server"  class="btn btn-danger" 
                    Text="Cancel" onclick="btn_cancel_Click"  />

                
        </center>
 




    </div>
    </div>
    <!--/span-->

</div><!--/row-->

 
    <!-- content ends -->
    </div><!--/#content.col-md-0-->

      <asp:Label ID="lb_1" runat="server" Text=""></asp:Label>
    
 
 <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
     TargetControlID="lb_1"
     CancelControlID="modal_ok_btn"
     PopupControlID="popup"
     BackgroundCssClass="modalBackground">
</asp:ModalPopupExtender>

        <div class="popup_menu" id="popup" runat="server">
            <center>
            <asp:Label ID="modal_msg_lbl" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="modal_ok_btn" runat="server" Text="OK" CssClass="submit_btn" 
                    />
            </center>
        </div>






</form>  
</asp:Content>

