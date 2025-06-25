<%--<asp:LoginName runat="server"></asp:LoginName>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rough page.aspx.cs" Inherits="CEHMS_PROJECT.rough_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REgISTER</title>
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&disp
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
</head>
<body>
	<img class="wave" src="assets1/img/wave.png">
	<div class="container">
		<div class="img">
			<img src="assets1/img/bg.svg">
		</div>
		<div class="login-content">
			<form action="index.html" runat="server">
				<img src="assets1/img/avatar.svg">
				<h2 class="title">Welcome</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>First Name</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
                 <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Last NAme</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>                   
           		</div>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>mobile number</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>email</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
                <form action="/action_page.php">
                    <label for="birthday">Birthday:</label>
                    <input type="date" id="birthday" name="birthday">
                    <input type="submit">
                </form>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>adhaar number</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>address</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Password</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
			</form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>--%>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="CEHMS_PROJECT.resister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER</title>
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&disp" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background: #f7f7f7;
    }

    .container {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .login-content {
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: left;
    }

    .login-content img {
        width: 80px;
        height: 80px;
        margin-bottom: 20px;
    }

    .login-content h2 {
        font-size: 20px;
        color: #333;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 14px;
    }

    .btn-success {
        background-color: #4caf50;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
</style>

</head>
<body>
    <img class="wave" src="assets1/img/wave.png">
    <div class="container">
        <div class="img">
            <img src="assets1/img/bg.svg">
        </div>
        <div class="login-content">
            <form action="index.html" runat="server">
                <img src="assets1/img/avatar.svg">
                <h2>Welcome</h2>
                First Name:
                <asp:TextBox ID="TxtFname" runat="server" placeholder="Enter first name" CssClass="form-control"></asp:TextBox><br />
                Last Name:
                <asp:TextBox ID="TxtLname" runat="server" placeholder="Enter last name" CssClass="form-control"></asp:TextBox><br />
                DOB:
                <form action="/action_page.php">
                    <input type="date" id="birthday" name="birthday" placeholder="Enter date of birth" class="form-control">
                </form>
                Adhaar Number:
                <asp:TextBox ID="TxtAd" runat="server" placeholder="Enter Adhar no" CssClass="form-control"></asp:TextBox><br />
                Address:
                <asp:TextBox ID="Txtadd" runat="server" placeholder="Enter the Address" CssClass="form-control"></asp:TextBox><br />
                E-mail:
                <asp:TextBox ID="Txtemail" runat="server" placeholder="Enter email" CssClass="form-control"></asp:TextBox><br />
                Password:
                <asp:TextBox ID="Txtpass" runat="server" placeholder="Enter password" CssClass="form-control"></asp:TextBox><br />
                Confirm Password:
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter password again" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="REGISTER" class="btn btn-success" />
            </form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>--%>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rough page.aspx.cs" Inherits="CEHMS_PROJECT.rough_page" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER</title>
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&disp" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-ezQhhq4RlFIdcWR9LQ8i/PVl2mYiUtuV7f7ke3YbP3ER8OV68LzB1mm9LEbZbMJy" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .btnn {
            border: none;
        }
    </style>
</head>
<body>
    <img class="wave" src="assets1/img/wave.png">
    <div class="container">
        <div class="img">
            <img src="assets1/img/bg.svg">
        </div>
        <div class="login-content">
            <form action="index.html" runat="server">
                <img src="assets1/img/cehms-logo1.png" />
                <h2 class="title">Register</h2>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            First Name:<asp:TextBox ID="FName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Last Name:<asp:TextBox ID="LName" runat="server" Class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            DOB:
                            <div class="input-group">
                                <asp:TextBox ID="txtDob" runat="server" class="form-control"></asp:TextBox>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="far fa-calendar-alt"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            Gender:<asp:TextBox ID="txtGen" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    					<div class="row">
						<div class="col-md-6">
							Blood Group:<asp:TextBox ID="txtBl" runat="server" class="form-control"></asp:TextBox>
						</div>
						<div class="col-md-6">
							Adhaar No.:<asp:TextBox ID="txtAdhaarno" runat="server" class="form-control"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							E-mail:<asp:TextBox ID="txtMail" runat="server" class="form-control"></asp:TextBox>
						</div>
						<div class="col-md-6">
							Mobile No.:<asp:TextBox ID="txtMob" runat="server" class="form-control"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Address:<asp:TextBox ID="txtAdd" runat="server" class="form-control"></asp:TextBox>
						</div>
						<div class="col-md-6">
							Password:<asp:TextBox ID="txtPass" runat="server" class="form-control"></asp:TextBox>
						</div>
					</div>
					 <div class="row">
                        <div class="col-md-12">
                            <asp:Button ID="lol" runat="server" Text="Register" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oK6lLXpQdpkV2TT9P83qqgt5fbP9b6p1NJA6Eea01p4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-eN2/PkS/6VNrxCkCU6niET7D9uNlhaZkYlK5F5A5ZFKBz91KaXkS51Od3nMdzn2D" crossorigin="anonymous"></script>
</body>
</html>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rough page.aspx.cs" Inherits="CEHMS_PROJECT.rough_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<%--	<link href="https://fonts.googleapis.com/css?family=Poppins:600&disp />--%>
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
			<form action="index.html" runat="server">
                <img src="assets1/img/cehms-logo1.png" />
				<h2 class="title">Welcome</h2>
                   User type <asp:DropDownList ID="ddlList" runat="server" Class="form-control">
                       <asp:ListItem>Patient</asp:ListItem>
                       <asp:ListItem>Doctor</asp:ListItem>
                       <asp:ListItem>Admin</asp:ListItem>
                             </asp:DropDownList>
           		<div class="input-div one">

           		   <div class="i">
           		   		<i class="fa fa-user"></i>
           		   </div>
           		   <div class="div">
<%--           		   		<input type="text" id="txtUser" class="input"><br />--%>
                        <asp:TextBox ID="txtUser" runat="server" placeholder="User:"></asp:TextBox>
           		   </div>
           		</div><!--username-->
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fa fa-lock"></i>
           		   </div>
           		   <div class="div">
                          <asp:TextBox ID="TxtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
           		    	<%--:<input type="password" id="TxtPass" class="input" runat="server">--%>

            	   </div>
            	</div><!--password-->
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>                
                <a href="RegisterPage.aspx" style="float:left">Don't have an account?</a>
            	<a href="#">Forgot Password?</a>
                <asp:Button ID="btnLogin" runat="server" Text="LOG IN" class="btn btn-success" OnClick="btnLogin_Click"/>           

			</form>
        </div>
	</div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="assets1/css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&disp" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="assets1/img/wave.png">
	<div class="container">
		<div class="img">
			<img src="assets1/img/bg.svg">
		</div>
		<div class="login-content">
			<form action="index.html" runat="server">
				<img src="assets1/img/avatar.svg">
				<h2 class="title">Welcome</h2>
                 <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>User Type</h5>
                          <asp:DropDownList ID="ddlList" runat="server"></asp:DropDownList>           		
           		   </div>
           		</div>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" id="txtUser" class="input">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input">
            	   </div>
            	</div>
                <a href="register.aspx" style="float:left">Don't have an account?</a>
            	<a href="#">Forgot Password?</a>
                <asp:Button ID="Button1" runat="server" Text="LOG IN" class="btn btn-success" OnClick ="Button1_Click" />           

			</form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>--%>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CEHMS_PROJECT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="assets1/css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&disp" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
	<img class="wave" src="assets1/img/wave.png">
	<div class="container">
		<div class="img">
			<img src="assets1/img/bg.svg">
		</div>
		<div class="login-content">
			<form action="index.html" runat="server">
				<img src="assets1/img/avatar.svg">
				<h2 class="title">Welcome</h2>
                 <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>User Type</h5>
                          <asp:DropDownList ID="ddlList" runat="server"></asp:DropDownList>           		
           		   </div>
           		</div>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
                          <input type="text" id="txtUser" class="input"
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
                          <input type="password" id="txtPass" class="input"
            	   </div>
            	</div>
                <a href="register.aspx" style="float:left">Don't have an account?</a>
            	<a href="#" style="float:right">Forgot Password?</a>
                <asp:Button ID="Button1" runat="server" Text="LOG IN" class="btn btn-success" Onclick="Button1_Click1" />           
			</form>
        </div>
    </div>
    <script type="text/javascript" src="assets1/js/main.js"></script>
</body>
</html>--%>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="" Inherits="EHRMS.roughpage" %>--%>




 //protected void Button1_Click1(object sender, EventArgs e)
 //{
 ////    try
 ////    {
 ////        conn.Open();
 ////        dt = new DataTable();
 ////        string query = "select * from USER_LOGIN where USER_NAME=@userId and PASSWORD=@password";
 ////        sda = new SqlDataAdapter();
 ////        cmd = new SqlCommand(query, conn);
 ////        cmd.Parameters.AddWithValue("@userId", txtUser.Text.ToString());
 ////        cmd.Parameters.AddWithValue("@password", txtPass.Text.ToString());
 ////        sda.SelectCommand = cmd;//
 ////        sda.Fill(dt);
 ////        cmd.ExecuteNonQuery();
 ////        conn.Close();

 ////        if (dt.Rows.Count > 0)
 ////        {
 ////            Response.Redirect("dashboard.aspx", false);

 ////        }
 ////        else
 ////        {
 ////            ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('invalid');", true);

 ////        }
 ////    }
 ////    catch (Exception ex)
 ////    {
 ////        throw ex;
 ////    }

 //}

 //protected void login_Click(object sender, EventArgs e)
 //{
 //    try
 //    {
 //        conn.Open();
 //        dt = new DataTable();
 //        string query = "select * from USER_LOGIN where NAME=@userId and PASSWORD=@password";
 //        sda = new SqlDataAdapter();
 //        cmd = new SqlCommand(query, conn);
 //        cmd.Parameters.AddWithValue("@userId", txtUser.Text.ToString());
 //        cmd.Parameters.AddWithValue("@password", TxtPass.Text.ToString());
 //        sda.SelectCommand = cmd;
 //        sda.Fill(dt);
 //        cmd.ExecuteNonQuery();
 //        conn.Close();
 //        if (dt.Rows.Count > 0)
 //        {
 //            Response.Redirect("dashboard.aspx", false);
 //        }
 //        else
 //        {
 //            ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('invalid');", true);
 //        }
 //    }
 //    catch (Exception ex)
 //    {
 //        lblMsg.Text = "OOPS!";
 //    }
 //}