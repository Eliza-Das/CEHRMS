<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="CEHMS_PROJECT.FeedBack" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>FEEDBACK</title>
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
    <link href="https://fontawesome.com/icons/heart?f=classic&s=regular" rel="icon" />
    <link rel="icon" href="https://fontawesome.com/icons/heart-pulse?f=classic&s=solid" />
    <style type="text/css">
        .Star {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }

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


        .py-4 {
            padding-top: 1.5rem !important;
            padding-bottom: 1.5rem !important;
            height: 110px;
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
                            <a href="Dashboard.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="Appointments.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientAppHistory.aspx" class="dropdown-item">History</a>
                                    <a href="UpcomingAppPatient.aspx" class="dropdown-item">Upcoming</a>
                                </div>
                            </div>
                            <a href="PathoReport.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <a href="OrderMedicine.aspx" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a>
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
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" Style="margin-left: 800px" class="rounded-circle me-lg-2" />
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
                <div class="container-fluid pt-5 px-5">
                    <form id="form1" runat="server">
                        <div class="form-outline mb-4">
                            Select Hospital :
                            <asp:DropDownList ID="ddlHospital" runat="server" Class="form-control" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </asp:ToolkitScriptManager>
                        <asp:Rating ID="Rating" runat="server" AutoPostBack="true"
                            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
                            FilledStarCssClass="FilledStar">
                        </asp:Rating>
                        <br />
                        <asp:Label ID="lblresult" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtreview" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        <br />
                        <asp:Button runat="server" Text="Submit Review" ID="btnsubmit" OnClick="btnsubmit_Click" />
                        <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="YellowGreen"></asp:Label>
                    </form>
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
    </div>
</body>
</html>