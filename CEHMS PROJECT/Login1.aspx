<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="CEHMS_PROJECT.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1"></head>
<body>
	<img class="wave" src="assets1/img/wave.png">
	<div class="container">
				<div class="img">
			<img src="assets1/img/bg.svg">
		</div>
		<div class="login-content">
			<form runat="server">
                <img src="assets1/img/cehms-logo1.png" />
				<h2 class="title">Welcome</h2>
                   user type :
                <asp:dropdownlist id="ddlType" runat="server" class="form-control">
                       <asp:listitem value="1">patient</asp:listitem>
                       <asp:listitem value="2">doctor</asp:listitem>
                       <asp:listitem value="3">admin</asp:listitem>
                             </asp:dropdownlist><!--UserType-->
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fa fa-user"></i>
           		   </div>
           		   <div class="div">
                        <asp:TextBox ID="txtUser" runat="server" placeholder="UserId:"></asp:TextBox>
           		   </div>
           		</div><!--username-->
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fa fa-lock"></i>
           		   </div>
           		   <div class="div">
                          <asp:TextBox ID="TxtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            	   </div>
            	</div><!--password-->
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>                
                <a href="RegisterPage.aspx" style="float:left">Don't have an account?</a>
            	<a href="#">Forgot Password?</a>
                <asp:Button ID="btnLogin" runat="server" Text="LOG IN" class="btn btn-success"  onClick="btnLogin_Click"/>           

			</form>
        </div>
	</div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>