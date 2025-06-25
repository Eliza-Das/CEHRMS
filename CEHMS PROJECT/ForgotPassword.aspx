<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CEHMS_PROJECT.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Animated Login Form</title>
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
    <img class="wave" src="assets1/img/wave.png" />
    <div class="container">
        <div class="img">
            <img src="assets1/img/bg.svg" />
        </div>
        <div class="login-content">
            <form runat="server">
                <img src="assets1/img/cehms-logo1.png" />
                <h5>Forgot Password?<i class="fa-regular fa-face-thinking"></i></h5>
                <asp:DropDownList ID="ddlType" runat="server" class="form-control">
                    <asp:ListItem Value="0">Select User Type</asp:ListItem>
                    <asp:ListItem Value="1">Patient</asp:ListItem>
                    <asp:ListItem Value="2">Doctor</asp:ListItem>
                    <asp:ListItem Value="3">Receptionist</asp:ListItem>
                    <asp:ListItem Value="4">Admin</asp:ListItem>
                </asp:DropDownList><!--UserType-->
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email ID" class="form-control"></asp:TextBox>
                <asp:TextBox ID="txtOTP" runat="server" placeholder="Enter OTP " visible="false" class="form-control"></asp:TextBox>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
                <asp:HiddenField ID="hdnOTP" runat="server" />
                <asp:Button ID="btnSubmit" runat="server" Text="Send OTP" class="btn btn-success" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnValidateOTP" runat="server" Text="Validate OTP" class="btn btn-success" Visible="false" OnClick="btnValidateOTP_Click"
                    />

            </form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>
