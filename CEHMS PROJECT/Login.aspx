<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CEHMS_PROJECT.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link href="assets1/css/font-awesome.min.css" rel="stylesheet" />
    <%--	<link href="https://fonts.googleapis.com/css?family=Poppins:600&disp />--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    </style>
</head>
<body>
    <img class="wave" src="assets1/img/wave.png" />
    <div class="container">
        <div class="img">
            <img src="assets1/img/bg.svg" />
        </div>
        <div class="login-content">
            <form runat="server">
                <img src="assets1/img/LogoNewBetter.png" />
                <h2 class="title">Welcome</h2>
                <div class="i">
                    <i class="fa fa-users"></i>
                </div>

                User type
                <asp:DropDownList ID="ddlList" runat="server" Class="form-control">
                    <asp:ListItem Value="1">PATIENT</asp:ListItem>
                    <asp:ListItem Value="2">DOCTOR</asp:ListItem>
                    <asp:ListItem Value="3">RECEPTIONIST</asp:ListItem>
                    <asp:ListItem Value="4">ADMIN</asp:ListItem>

                </asp:DropDownList>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <%--           		   		<input type="text" id="txtUser" class="input"><br />--%>

                        <asp:TextBox ID="txtUser" runat="server" placeholder="UserId:"></asp:TextBox>
                    </div>
                </div>
                <!--username-->
                <div class="input-div pass">
                    <div class="i">
                        <i class="fa fa-lock"></i>
                    </div>
                    <div class="div">
                        <asp:TextBox ID="TxtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <%--:<input type="password" id="TxtPass" class="input" runat="server">--%>
                    </div>
                </div>
                <!--password-->
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
                <a href="register.aspx" style="float: left">Don't have an account?</a>
                <a href="ForgotPassword.aspx">Forgot Password?</a>
                <asp:Button ID="login" runat="server" Text="LOG IN" class="btn btn-success" OnClick="login_Click" />

            </form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>
