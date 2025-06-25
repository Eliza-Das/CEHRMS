<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepswd.aspx.cs" Inherits="CEHMS_PROJECT.changepswd" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <!-- Favicon -->
    <link href="assetsdash/img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Libraries Stylesheet -->
    <link href="assetsdash/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assetsdash/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="assetsdash/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="assetsdash/css/style.css" rel="stylesheet">
    <style>
        .sidebar {
            width: 19%;
        }

        .col-sm-4 {
            flex: 0 0 auto;
            width: 33.33333%;
            margin-top: -425px;
            opacity: 0.9;
        }

            .col-sm-4 col-xl-4 {
                flex: 0 0 auto;
                width: 50%;
                margin-top: -502px;
            }

        :root {
            --primary: #067627;
            --light: #F3F6F9;
            --dark: #191C24;
        }

        .backimg {
            margin-top: -49px;
            padding-left: 200px;
        }
    </style>
</head>
<body>
    <div class="container-xxl position-relative bg-white ">
        <!-- Sidebar Start -->
        <div class="row ">
            <div class="col-xl-6">
                <div class="sidebar">
                    <nav class="navbar">
                        <a href="index.html" class="navbar-brand mx-3 mb-3">
                            <h5 class="text-success">Welcome</h5>
                        </a>
                        <!--welcome user-->
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                <img class="rounded-circle" src="assets1/img/LogoNewBetter.png" style="width: 100px; height: 100px;" />
                                <div class=" border-white position-absolute end-0 bottom-0 p-1"></div>
                                <!--purpose????-->
                            </div>
                        </div>
                        <!--logo icon-->
                        <div class="navbar-nav w-100">
                            <a href="index.html" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="BookAnApointmentPage1.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a><!--book an appointment-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">History</a>
                                    <a href="typography.html" class="dropdown-item">Upcoming</a>

                                </div>
                            </div>
                            <!--manage appointment-->
                            <a href="form.html" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a><!--pathology report-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">Doctor Fee</a>
                                    <a href="typography.html" class="dropdown-item">Pathology Fee</a>
                                    <a href="typography.html" class="dropdown-item">Medicine Fee</a>
                                </div>
                            </div>
                            <!--bills and Payment-->
                            <a href="chart.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a><!--order medicine-->
                            <a href="widget.html" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a><!--feedback-->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Sidebar End -->
        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4" style="height: 121px;">
                <a href="index.html" class="navbar-brand mx-3 mb-3">
                    <h4 class="text-success">Health Id:
                        <asp:Label ID="lblPID" runat="server" Text=""></asp:Label></h4>
                </a>
                <div class="navbar-nav align-items-center ms-auto" style="margin-left: 700px;">
                    <div class="nav-item dropdown" >
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
<%--                            <img class="rounded-circle me-lg-2" src="assets2/img/user.png" alt="" style="width: 100px; height: 100px;">--%>

                             <span class="d-none d-lg-inline-flex">
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" class="rounded-circle me-lg-2" />
                            </span>       
                            <br />
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="UserProfilePage.aspx" class="dropdown-item">My Profile</a><!--My profile add-->
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                        <!--user profile-->
                    </div>
                </div>
            </nav>
            <!--useless except user profile-->
            <!-- Navbar end -->
            <div class="container-fluid pt-5 px-5">
                <div class="row g-4">
                    <form id="form1" runat="server">
                        <section>
                            <div class="container py-5">
                                <div class="row justify-content-center align-items-center">
                                    <div class="col-md-8">
                                        <div class="card " style="border-radius: 1rem;">
                                            <div class="card-body p-5 text-center">
                                                <div class="container">
                                                    <div class="row d-flex justify-content-center align-items-center h-100"></div>
                                                    <div class="col-md-9 col-lg-6 col-xl-5"></div>
                                                    <h4>CHANGE PASSWORD</h4>
                                                    <div class="form-group">
                                                        Enter Old Password :
                                                        <asp:TextBox ID="txtOldPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        Enter New Password :
                                                        <asp:TextBox ID="txtNewPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        Confirm Password :
                                                        <asp:TextBox ID="txtConfirmPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                    <br />
                                                    <asp:Button ID="BtnReset" runat="server" Text="Reset Password" class="btn btn-warning" OnClick="BtnReset_Click" />
                                                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick= "BtnCancel_Click" /><br />
                                                    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="GreenYellow"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </form>
                </div>
            </div>
            <a href="#" class="btn btn-lg btn-success btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>
    </div>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assetsdash/lib/chart/chart.min.js"></script>
    <script src="assetsdash/lib/easing/easing.min.js"></script>
    <script src="assetsdash/lib/waypoints/waypoints.min.js"></script>
    <script src="assetsdash/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/moment.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Template Javascript -->
    <script src="assetsdash/js/main.js"></script>
</body>
</html>