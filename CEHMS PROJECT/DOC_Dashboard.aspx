<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOC_Dashboard.aspx.cs" Inherits="CEHMS_PROJECT.DOC_Dashboard" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <!-- Favicon -->
    <link href="assetsdash/img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Libraries Stylesheet -->
    <link href="assetsdash/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="assetsdash/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="assetsdash/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Template Stylesheet -->
    <link href="assetsdash/css/style.css" rel="stylesheet" />
    <style>
        .sidebar {
            width: 20%;
        }

        .col-sm-4 {
            flex: 0 0 auto;
            width: 33.33333%;
            margin-top: -425px;
            /*            opacity: 0.9;
*/
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
        /*        :root {
            --primary:         #ef9ff3;
            --light: #F3F6F9;
            --dark: #191C24;
        }*/


        .backimg {
            padding-left: 200px;
            margin-top: -75px;
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
                        <a href="index.aspx" class="navbar-brand mx-3 mb-3">
                            <h5 class="text-success">Welcome</h5>
                        </a>
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                    <img class="rounded-circle" src="assets1/img/LogoNewTransparent.png" alt="logo" style="width: 150px; height: 150px; margin-right: 40px" />
                            </div>
                        </div>
                        <div class="navbar-nav w-100">
                            <a href="DOC_Dashboard.aspx" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="DOC_ManagePatient.aspx" class="nav-item nav-link"><i class="fa fa-calendar-alt me-2"></i>Patient History</a>
                            <a href="DOC_Appointments.aspx" class="nav-item nav-link"><i class="fa fa-clock me-2"></i>Manage Appointmnet</a>
                            <a href="DOC_Prescription.aspx" class="nav-item nav-link"><i class="fa fa-prescription-bottle-alt me-2"></i>Prescription</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-calendar-check me-2"></i>Leave Management</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DOC_LeaveApply.aspx" class="dropdown-item"><i class="fa fa-history me-2"></i>Apply Leave</a>
                                    <a href="DOC_LeaveStatus.aspx" class="dropdown-item"><i class="fa fa-bell me-2"></i>Leave Status</a>
                                    <a href="DOC_LeaveBalance.aspx" class="dropdown-item"><i class="fa fa-bell me-2"></i>Leave Balance</a>
                                </div>
                            </div>
                            <a href="DOC_Reports.aspx" class="nav-item nav-link"><i class="fa fa-address-book me-2"></i>Reports</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Sidebar End -->
        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4" style="height: 120px; width: 65rem; margin-left: 26px;">
                <a href="index.html" class="navbar-brand mx-3 mb-3">
                    <h4 class="text-success">Doctor Id:
                        <asp:Label ID="lblDocId" runat="server" Text=""></asp:Label></h4>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <%--                          <img class="rounded-circle me-lg-2" id="UserPhoto" runat="server" alt="" style="width: 100px; height: 100px;"/>--%>
                            <span class="d-none d-lg-inline-flex">
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" class="rounded-circle me-lg-2" />
                            </span>
                            <br />
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>

                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="DOC_UserProfile.aspx" class="dropdown-item">My Profile</a><!--My profile add-->
                            <a href="DOC_ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="LoginPage.aspx" class="dropdown-item">Log Out</a>
                        </div>
                        <!--user profile-->
                    </div>
                </div>
            </nav>
            <!-- Navbar end -->
            <div class="container-fluid pt-5 px-4">
                <div class="row g-4">
                    <div class="backimg" style="margin-top: -75px;">
                        <img src="assets1/img/LogoNewTransparent.png" style="height: 500px; margin-top: 38px;" />
                    </div>
                    <div class="col-sm-4 ">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-6x text-success"></i>
                            <div class="ms-4">
                                <h4 class="mb-2"><b>Today's Appointments</b></h4>
                                <h5 class="mb-0">
                                    <asp:Label ID="lblTotalVisit" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xl-4">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-6x text-success"></i>
                            <div class="ms-4">
                                <h4 class="mb-2"><b>Appointments </b></h4>
                                <h5 class="mb-0">View</h5>
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
            <a href="#" class="btn btn-lg btn-success btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assetsdash/lib/chart/chart.min.js"></script>
    <script src="assetsdash/lib/easing/easing.min.js"></script>
    <script src="assetsdash/lib/waypoints/waypoints.min.js"></script>
    <script src="assetsdash/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/moment.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="assetsdash/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="assetsdash/js/main.js"></script>
</body>
</html>

