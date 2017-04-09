<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_pass.aspx.cs" Inherits="forgot_pass" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<html>
<head runat="server">
<style>


*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
  -webkit-box-sizing:border-box;
  font-family:arial;
}
body{background:url(img/back@login.jpg),#FF9000}
h1{
  color:#AAA173;
  text-align:center;
  font-faimly:icon;
}

.login-form{
  width:350px;
  padding:40px 30px;
  background:rgba(235,235,205,0.7);
  border-radius:4px;
  -moz-border-radius:4px;
  -webkit-border-radius:4px;
  margin:50px auto;
}
.form-group{
  position: relative;
  margin-bottom:15px;
}
.form-control{
  width:100%;
  height:50px;
  border:none;
  padding:5px 7px 5px 15px;
  background:#fffd;
  color:#666;
  border:2px solid #E0D68F;
  border-radius:4px;
  -moz-border-radius:4px;
  -webkit-border-radius:4px;
}
.form-control:focus, .form-control:focus + .fa{
  border-color:#10CE88;
  color:#10CE88;
}
.form-group .fa{
  position: absolute;
  right:15px;
  top:17px;
  color:#999;
}
.log-status.wrong-entry {
  -webkit-animation: wrong-log 0.3s;
  -moz-animation: wrong-log 0.3s;
  -ms-animation: wrong-log 0.3s;
  animation: wrong-log 0.3s;
}
.log-status.wrong-entry .form-control, .wrong-entry .form-control + .fa {
  border-color: #ed1c24;
  color: #ed1c24;
}
@keyframes wrong-log {
  0% { left: 0px;}
  20% {left: 15px;}
  40% {left: -15px;}
  60% {left: 15px;}
  80% {left: -15px;}
  100% {left: 0px;}
}
@-ms-keyframes wrong-log {
  0% { left: 0px;}
  20% {left: 15px;}
  40% {left: -15px;}
  60% {left: 15px;}
  80% {left: -15px;}
  100% {left: 0px;}
}
@-moz-keyframes wrong-log {
  0% { left: 0px;}
  20% {left: 15px;}
  40% {left: -15px;}
  60% {left: 15px;}
  80% {left: -15px;}
  100% {left: 0px;}
}
@-webkit-keyframes wrong-log {
  0% { left: 0px;}
  20% {left: 15px;}
  40% {left: -15px;}
  60% {left: 15px;}
  80% {left: -15px;}
  100% {left: 0px;}
}
.log-btn{
  background:#0AC986;
  dispaly:inline-block;
  width:100%;
  font-size:16px;
  height:50px;
  color:#fff;
  text-decoration:none;
  border:none;
  border-radius:4px;
  -moz-border-radius:4px;
  -webkit-border-radius:4px;
}
.log-btn hover
{
    color:Red;
    }
.link{
  text-decoration:none;
  color:#9D8E79;
  display:block;
  text-align:right;
  font-size:12px;
  margin-bottom:15px;
}
.link:hover{
  text-decoration:underline;
  color:#8C91FF;
}
.alert{
  display:none;
  font-size:12px;
  color:#f00;
  float:left;
}


</style>
</head>
<body style="background:url(img/back@login.jpg),#FF9000">

 <form id="form1" runat="server">    <div class="navbar navbar-default"  style="height:100px">
    
            <img src="img/main_logo.png" style="height:100%; width:50%;margin-left:30%"/>
    
            
             

        </div>
     

   

     
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

   <div class="row">
			
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <h1><center><span style="font-size:larger; font-weight:bold;color:RED">
                            Forgot Password
                          </span>
                          </h1>
                          </center>

                          <br />
                          <br />
                          <div class="panel-body">
                          <div style="float:left;margin-left:100px;width:70%">
                          
                          
                  
                  

               
                   
          
                  <center>
                      <span style="color:Blue;font-size:large;font-weight:bold"> Enter Email Id</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="txt_email" class="form-control" style="width:50%" runat="server"></asp:TextBox>
                      <br />
                     <asp:Button ID="Button1" runat="server" class="log-btn" Text="Send Password" onclick="Button1_Click" ValidationGroup="v"/>	
     

                      

                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter Email Address" ControlToValidate="txt_email" 
                            Display="Dynamic" ForeColor="Red" ValidationGroup="v"></asp:RequiredFieldValidator>
                           
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ErrorMessage="Invalid Email Id" ControlToValidate="txt_email" 
                            Display="Dynamic" ForeColor="Red" ValidationGroup="v"  
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>



            
            </center>

                 <asp:label ID="lbl_error" runat="server" ></asp:label>

     </div>
   <asp:Label ID="lb_1" runat="server" Text=""></asp:Label>

  <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
  PopupControlID="popup" BackgroundCssClass="modalBackground"
  CancelControlID="btn_ok"
  TargetControlID="lb_1"
  >

  </asp:ModalPopupExtender>
      
                     <div class="popup_menu" id="popup" runat="server">
                                <center>
                                    <asp:Label ID="lab_msg" runat="server" Text=""></asp:Label><br />
                                    <asp:Button ID="btn_ok" runat="server" Text="Ok" />
                                </center>
                     </div>
          
       
 </form>

</body>
</html>