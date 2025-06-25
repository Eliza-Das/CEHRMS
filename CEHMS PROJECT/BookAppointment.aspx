<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="CEHMS_PROJECT.BookAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Book Appointment</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var today = new Date();
            var month = ('0' + (today.getMonth() + 1)).slice(-2);
            var day = ('0' + today.getDate()).slice(-2);
            var year = today.getFullYear();
            var date = year + '-' + month + '-' + day;
            $('[id*=txtDate]').attr('min', date);
        });
    </script>

    
    <style>
        body {

            background-repeat: no-repeat;
            background-size: cover;
        }

        .login-content img {
            height: 150px;
            margin-left: 12px;
            margin-top: -47px;
        }

        .btn-success {
            --bs-btn-bg: #41a074;
        }

        .btn-warning {
            --bs-btn-bg: #ffc107;
            --bs-btn-border-color: #e9bf3f;
            --bs-btn-hover-bg: #dfb537;
        }
    </style>
</head>

<body background="assets1/img/BOOK%20AN%20APPOINTMENT.png">
    <div class="container ">
        <div class="row align-items-right h-100">
            <div class="col-sm-6"></div>
            <div class="col-sm-4">
                <div class=" rounded-3 text-black">
                    <div class="row g-0">
                        <div class="card-body p-md-5 mx-md-4">
                            <form class="form-inline login-content" runat="server">
    
                                <div class="logo ">
                                <img src="assets1/img/LogoNewBetter.png" />
                                   
                                </div>
                                <div class="container-fluid">
                                    <%-- <h1 class="title"><b>WELCOME</b></h1>--%>
                                   
                                    <h5>Please Book Your Appointment</h5>
                                    <br />
                                </div>
                                <div class="form-outline mb-4">
                                    Select Hospital : <asp:DropDownList ID="ddlHospital" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlHospital_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                </div>
                                <div class="form-outline mb-4">
                                  Select Department : <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList><br />
                                </div>
                                <div class="form-outline mb-4">
                                  Select Doctor : <asp:DropDownList ID="ddlDoctor" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDoctor_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList> <br />
                                </div>
                                <div class="form-outline mb-4">
                                  Date :  <asp:TextBox ID="txtDate" TextMode="Date" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-outline mb-4">
                                   Time : <asp:TextBox ID="txtTime" TextMode="Time" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <br />
                                <br />

                                <div class="text-center pt-1 mb-3 pb-1">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success gradient-custom-2 mb-3" OnClick="btnSubmit_Click"/>
                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-success gradient-custom-2 mb-3" OnClick="btncancel_Click"/>
                                    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="GreenYellow"></asp:Label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>