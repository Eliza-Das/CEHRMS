<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderMedicinePage.aspx.cs" Inherits="CEHMS_PROJECT.OrderMedicinePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
        img {
            height: 200px;
            width: 200px;
        }

        .sidebar {
            width: 19%;
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
                        <!--welcome user-->
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                <%--                                <img class="rounded-circle" src="assets2/img/cehms-logo1.png" style="width: 100px; height: 100px;" />--%>
                                <img class="rounded-circle" src="assets1/img/LogoNewBetter.png" style="width: 110px; height: 110px;" />
                                <div class=" border-white position-absolute end-0 bottom-0 p-1"></div>
                                <!--purpose????-->
                            </div>
                        </div>
                        <!--logo icon-->
                        <div class="navbar-nav w-100">
                            <a href="PatientDashboard.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="BookAnApointmentPage1.aspx" class="nav-item nav-link ac tive"><i class="fa fa-calendar-alt me-2"></i>Book Appointment</a><!--book an appointment-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-calendar-check me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item"><i class="fa fa-history me-2"></i>History</a>
                                    <a href="U" class="dropdown-item"><i class="fa fa-bell me-2"></i>Upcoming</a>
                                </div>
                            </div>
                            <!--manage appointment-->
                            <a href="form.html" class="nav-item nav-link"><i class="fa fa-file-medical me-2"></i>Pathology Report</a><!--pathology report-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-money-check me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                   <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                 <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <!--bills and Payment-->
                            <a href="OrderMedicinePage.aspx" class="nav-item nav-link"><i class="fa fa-prescription-bottle-alt me-2"></i>Order Medicine</a><!--order medicine-->
                            <a href="FeedBack.aspx" class="nav-item nav-link"><i class="fa fa-comments me-2"></i>Feedback</a><!--feedback-->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Sidebar End -->
        <!-- Content Start -->
        <div class="content">
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4" style="height: 121px;">
                <a href="index.html" class="navbar-brand mx-3 mb-3">
                    <h4 class="text-success">Health Id:
                        <asp:Label ID="lblPID" runat="server" Text=""></asp:Label></h4>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex">
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" class="rounded-circle me-lg-2" />
                            </span>
                            <br />
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>

                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="UserProfilePage.aspx" class="dropdown-item">My Profile</a><!--My profile add-->
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
                        </div>
                        <!--user profile-->
                    </div>
                </div>
            </nav>
            <div class="main">
               <h3>Catagory</h3> <br />
                <div class="row">
                    <div class="col-3">
                        <img src="Ordermeds/Ayurveda.png" />
                        <a href="#">Ayurveda</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/Baby.png" /><br />
                        <a href="#">Baby Products</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/Vitamins.png" />
                        <a href="#">Vitamins</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/Facecare.png" /><br />
                        <a href="#">Face care </a>
                    </div>
                </div>
               <h3>Most Popular Medicines</h3><br />
                <div class="row">
                    <div class="col-3">
                        <img src="Ordermeds/AllergyMed.jpg" /><br />
                        <a href="#">Claritin 24 Hour Non-Drowsy Allergy Medicine</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/BloodPressure.jpg" /><br />
                        <a href="#">Lopressor 200 mg</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/HeadAche1.jpg" /><br />
                        <a href="#">COMBIFLAM PLUS HEADACHE RELIEF TABLET</a>
                    </div>
                    <div class="col-3">
                        <img src="Ordermeds/HeadAche2.jpg" /><br />
                        <a href="#">Crocin Advance Pain Relief</a>
                    </div>
                </div>
            </div>
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
    <!-- Template Javascript -->
    <script src="assetsdash/js/main.js"></script>
</body>
</html>
