<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="alert_config.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head runat="server">
        <script type="text/javascript" src="css/style.css"> </script>
        <link href="css/StyleSheet.css" rel="Stylesheet" />
    </head>
     <form id="Form1" runat="server" action="">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </ajaxToolkit:ToolkitScriptManager>
        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="home.aspx">Home</a>
                    </li>
                    <li>
                        <a href="#">Alert Configuration</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-edit"></i>Alert Configuration</h2>
                        </div>
                        <div class="box-content">
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Generate Alert On"></asp:Label>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                        TargetControlID="txt_alert_date">
                                    </ajaxToolkit:CalendarExtender>

                                    <asp:TextBox ID="txt_alert_date" class="form-control" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txt_alert_time" class="form-control" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatora" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Enter Purchase Date" ValidationGroup="v" ControlToValidate="txt_alert_date" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>

                                </div>
                            <div class="form-group">
                                        <label>
                                        <asp:Label ID="Label9" runat="server" Text="Alert Type"></asp:Label>
                                    </label>
                                    <asp:DropDownList class="form-control" ID="ddl_alert_type" runat="server">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>Admin-Monthly Alert</asp:ListItem>
                                        <asp:ListItem>Customer Pending Bill Alert</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Select Alert Name" ControlToValidate="ddl_alert_type" ValidationGroup="v" InitialValue="--Select--" Display="Dynamic" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </div>
                            <center>
                    <asp:Button ID="btn_ok" runat="server" class="btn btn-default" Text="Add" 
                            ValidationGroup="v" onclick="btn_ok_Click" />
                    <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger" Text="Cancel" ValidationGroup="v" />
                    </center>
                            <!-- model popup -->
                            <asp:Label ID="a" Text="" runat="server"> </asp:Label>
                            <ajaxToolkit:ModalPopupExtender ID="mpe" BackgroundCssClass="modalBackground"
                                TargetControlID="a"
                                runat="server" PopupControlID="popup" CancelControlID="Button1">
                            </ajaxToolkit:ModalPopupExtender>
                            <div class="popup_menu" id="popup" runat="server" style="display:none;" >
                                <center>
            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
             <asp:Button ID="Button1" runat="server" Text="OK" CssClass="submit_btn" 
                    onclick="Button1_Click" />
            </center>
                            </div>
                            <!--  popup over -->
                        </div>
                    </div>
                </div>
                <!--/span-->
            </div>
            <!--/row-->
            <!-- content ends -->
        </div>
        <!--/#content.col-md-0-->
    </form>
</asp:Content>

