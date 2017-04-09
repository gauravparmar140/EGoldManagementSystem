<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
</head>
<style>*{
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
  width:400px;
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
  height:40px;
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
<head>
    <title>Ambika Jewellers</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="Stylesheet" href="css/StyleSheet.css" />
</head>
<body>
    <form id="gorm" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <img src="img/main_logo.png" style="height: 100%; width: 50%; margin-left: 30%" />
    <div class="login-form">
        <h1>
            Login</h1>
        <br />
        <div class="form-group">
            
            
                <asp:TextBox ID="txt_user_name" class="form-control" runat="server" placeholder="Username">
                </asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txt_user_name" ID="RequiredFieldValidator1"
                runat="server" ValidationGroup="v" ErrorMessage="*Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            <i class="fa fa-user"></i>
        </div>
        <div class="form-group log-status">
            <asp:TextBox ID="txt_password" class="form-control" TextMode="Password" runat="server"
                placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txt_password" ID="RequiredFieldValidator2"
                ValidationGroup="v" runat="server" ErrorMessage="*Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <i class="fa fa-lock"></i>
        </div>
        <a href="forgot_pass.aspx">Forgot Password?</a>
        <asp:Label ID="ErroeMessage" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" class="log-btn" Text="Login" OnClick="Button1_Click"
            ValidationGroup="v" />
    </div>
    </form>
</body>
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
