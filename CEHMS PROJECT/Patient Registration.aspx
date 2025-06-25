<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient Registration.aspx.cs" Inherits="CEHMS_PROJECT.Patient_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>RECEPTIONIST DASHBOARD</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Favicon -->
    <link href="Assetsdash/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="Assetsdash/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="Assetsdash/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="Assetsdash/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="Assetsdash/css/style.css" rel="stylesheet" />
    <style>
        .sidebar {
            width: 21.5%;
        }

        .col-sm-4 {
            flex: 0 0 auto;
            width: 33.33333%;
            margin-top: -404px;
            opacity: 0.9;
        }

            .col-sm-4 col-xl-4 {
                flex: 0 0 auto;
                width: 50%;
                margin-top: -502px;
            }

        .backimg {
            margin-top: -65px;
            padding-left: 190px;
        }
      
            
            
    </style>
</head>
<body>
    <div class="container-xxl position-relative bg-white ">
        <div class="row ">
            <div class="col-xl-6">
                <div class="sidebar">
                    <nav class="navbar">
                        <h5 class="text-success">WELCOME</h5>
                        <br />
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                <img class="rounded-circle" src="assets1/img/LogoNewBetter.png" alt="logo" style="width: 150px; height: 150px; margin-right: 40px" />
                                <div class=" border-white position-absolute end-0 bottom-0 p-1"></div>
                            </div>
                        </div>
                        <div class="navbar-nav w-100">
                            <a href="" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
<%--                            <a href="BookAppointment.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>--%>
                                                        <a href="#" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Patient Registration</a>

                            
                                <a href="#" class=" nav-item nav-link" ><i class="fa fa-laptop me-2"></i>Book Appointment</a>
                               
                           
                            <a href="PathologyReport.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Upcoming Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Patient History</a>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->
            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                    <h4 class="text-success">EmployeeID:
                            <asp:Label ID="lblEmpId" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </h4>
                    <div class="d-flex align-items-right align-items-end dropdown" style="">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex">
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" style="margin-left:800px" class="rounded-circle me-lg-2" />
                            </span>                  
                            <span class="d-none d-lg-inline-flex">
                                <asp:Label ID="lblUserName" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="UserProfile.aspx" class="dropdown-item">My Profile</a>
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                                <!-- Navbar end -->
                 <div class="form-group">
                 <div class="login-content">
     <form runat="server">
                <div class="container-fluid pt-5 px-5">
                    <div class="row g-4">
                                  <h2 class="title">Register</h2>
           
                <div class="row">
                  
  
                    <div class="col-md-12">
                        Picture:<asp:FileUpload ID="FileUpload1" runat="server" Class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        First Name:<asp:TextBox ID="txtFName" runat="server" class="form-control" ValidationGroup="Patreg"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        Last Name:<asp:TextBox ID="txtLName" runat="server" Class="form-control" ValidationGroup="Patreg"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        DOB:<asp:TextBox ID="txtDOB" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        Gender:<asp:DropDownList ID="ddlGen" runat="server" class="form-control">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Blood Group:<asp:DropDownList ID="ddlBl" runat="server" class="form-control">
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                        </asp:DropDownList>
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
                        Password:<asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                        <br />
                        <br />
                        <center>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button ID="btnPatientRegister" runat="server" Text="Register" Class="btn btn-success" OnClick="btnPatientRegister_Click" ValidationGroup="Patreg" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCancel_Click" ValidationGroup="patregS" />
                       
                    </div>
                </div>
                            </center>
                <a href="Login.aspx">Already have an account?</a>
            </div>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </form>
    </div>
</div>
<script type="text/javascript" src="assets1/js/main.js"></script>
                    
        </div>          
            </div>

            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="Assetsdash/lib/chart/chart.min.js"></script>
            <script src="Assetsdash/lib/easing/easing.min.js"></script>
            <script src="Assetsdash/lib/waypoints/waypoints.min.js"></script>
            <script src="Assetsdash/lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="Assetsdash/lib/tempusdominus/js/moment.min.js"></script>
            <script src="Assetsdash/lib/tempusdominus/js/moment-timezone.min.js"></script>
            <script src="Assetsdash/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

            <!-- Template Javascript -->
            <script src="Assetsdash/js/main.js"></script>
        </div>
    </div>
</body>
</html>
