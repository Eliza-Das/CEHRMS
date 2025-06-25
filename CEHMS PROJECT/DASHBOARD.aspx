<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DASHBOARD.aspx.cs" Inherits="CEHMS_PROJECT.DASHBOARD" %>

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
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="assetsdash/lib/owlcarousel/assetsdash/owl.carousel.min.css" rel="stylesheet">
    <link href="assetsdash/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Template Stylesheet -->
    <link href="assetsdash/css/style.css" rel="stylesheet">
    <style>
        .sidebar {
            width: 19%;
        }

        .col-sm-4 {
            flex: 0 0 auto;
            width: 33.33333%;
            margin-top: -502px;
            opacity: 0.9;
        }

            .col-sm-4 col-xl-4 {
                flex: 0 0 auto;
                width: 50%;
                margin-top: -502px;
            }

        .backimg {
            margin-top: -99px;
            padding-left: 180px;
        }
    </style>
</head>

<body>

    <div class="container-xxl position-relative bg-white ">
        <!-- Spinner Start -->
        <!-- <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="row ">
            <div class="col-xl-6">
                <div class="sidebar">
                    <nav class="navbar">
                        <a href="index.html" class="navbar-brand mx-3 mb-3">
                            <h5 class="text-success">WELCOME USER
                            </h5>
                        </a>
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                <img class="rounded-circle" src="assets1/img/LogoNewBetter.png" alt="" style="width: 100px; height: 100px; margin-right: 45px; margin-left: 37px">
                                <div class=" border-white position-absolute end-0 bottom-0 p-1"></div>
                            </div>
                        </div>
                        <div class="navbar-nav w-100">
                            <a href="" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="BookAppointment.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">History</a>
                                    <a href="#" class="dropdown-item">Upcoming</a>

                                </div>
                            </div>

                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">Doctor Fee</a>
                                    <a href="#" class="dropdown-item">Pathology Fee</a>
                                    <a href="#" class="dropdown-item">Medicine Fee</a>
                                </div>

                                <a href="#" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a>
                                <a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a>
                            </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->


                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4" style="margin-left:50px">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                    </a>
                    <a href="index.html" class="navbar-brand mx-3 mb-0">
                        <h4 class="text-success">Health Id
                            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Green"></asp:Label>:</h4>
                    </a>
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="nav-item dropdown" style="margin-left: 750px;">

                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle" src="assetsdash/img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                        <div class="ms-2">
                                            <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                            <small>15 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle" src="assetsdash/img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                        <div class="ms-2">
                                            <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                            <small>15 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item text-center">See all message</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">

                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">Profile updated</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">New user added</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">Password changed</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item text-center">See all notifications</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
<%--                                <img class="rounded-circle me-lg-2" src="assetsdash/img/user.jpg" alt="" style="width: 40px; height: 40px; margin-left: 800px">--%>
                                <span class="d-none d-lg-inline-flex">
                                    <asp:Image ID="UserPhoto" runat="server" Height="100px" Width="100px" class="rounded-circle me-lg-2" />
                                    </span>
                                <br />
                                    <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="UserProfile.aspx" class="dropdown-item">My Profile</a>
                                <a href="changepswd.aspx" class="dropdown-item">Change Password</a>
                                <a href="Login.aspx" class="dropdown-item">Log Out</a>
                            </div>
                        </div>             
                </nav>
                <!-- Navbar end -->

                <div class="container-fluid pt-5 px-5">
                    <div class="row g-4">
                        <div class="backimg">
                            <img src="assets1/img/LogoNewBetter.png" height="600px" />
                        </div>
                        <div class="col-sm-4 ">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Total No. Of Visit</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-bar fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Upcoming Visit</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-area fa-6x text-success"></i>
                                <div class="ms-6">
                                    <h4 class="mb-2"><b>Expenditure</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
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
