<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="CEHMS_PROJECT.PatientDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>PATIENT DASHBOARD</title>
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
                                                        <a href="demo.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>

                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="History Appontment.aspx" class="dropdown-item">History</a>
                                    <a href="UPCOMING APPOINTMENT.aspx" class="dropdown-item">Upcoming</a>
                                </div>
                            </div>
                            <a href="PathologyReport.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <a href="OrderMedicinePage.aspx" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a>
                            <a href="FeedBack.aspx" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->
            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                    <h4 class="text-success">HealthId:
                            <asp:Label ID="lblHealthId" runat="server" Text="" ForeColor="Green"></asp:Label>
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
                            <a href="Changepswd.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                <!-- Navbar end -->
                <div class="container-fluid pt-5 px-5">
                    <div class="row g-4">
                        <div class="backimg">
                            <img src="assets1/img/LogoNewBetter.png" style="height: 500px"/>
                        </div>
                        <div class="col-sm-4 ">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Total No. Of Visit</b></h4>
                                    <h5 class="mb-0">
                                        <asp:Label ID="lblTotalVisit" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-bar fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Upcoming Visit</b></h4>
                                    <h5 class="mb-0"><a href="UPCOMING APPOINTMENT.aspx">View</a></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-area fa-6x text-success"></i>
                                <div class="ms-6">
                                    <h4 class="mb-2"><b>Expenditure</b></h4>
                                    <h5 class="mb-0">Rs - 10,000</h5>
                                </div>
                            </div>
                        </div>
                    </div>
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
