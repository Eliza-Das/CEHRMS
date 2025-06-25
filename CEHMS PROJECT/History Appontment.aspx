<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History Appontment.aspx.cs" Inherits="CEHMS_PROJECT.History_Appontment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>Appointment History</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <!-- Favicon -->
    <link href="Assetsdash/img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
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

        th {
            background-color: #067727;
            color: #ffffff;
        }

        td {
            background-color: #ecf0f1;
        }

        .invoice-header {
            text-align: center;
            font-weight: bold;
            font-size: 36px;
            margin-bottom: 20px;
            color: #3498db;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 90%; /* Adjust the width as needed */
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
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
                            <a href="BookAnAppointment.aspx" class="nav-item nav-link ac tive"><i class="fa fa-calendar-alt me-2"></i>Book Appointment</a><!--book an appointment-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-calendar-check me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="History Appointment.aspx" class="dropdown-item"><i class="fa fa-history me-2"></i>History</a>
                                    <a href="UPCOMING APPONITMENT.aspx" class="dropdown-item"><i class="fa fa-bell me-2"></i>Upcoming</a>
                                </div>
                            </div>
                            <!--manage appointment-->
                            <a href="PathologyReportPage.aspx" class="nav-item nav-link"><i class="fa fa-file-medical me-2"></i>Pathology Report</a><!--pathology report-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-money-check me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFeePage.aspx" class="dropdown-item">Doctor Fee</a>
                                    <a href="PathologyFeePage.aspx" class="dropdown-item">Pathology Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                </div>
                            </div>
                            <!--bills and Payment-->
                            <a href="OrderMedicinePage.aspx" class="nav-item nav-link"><i class="fa fa-prescription-bottle-alt me-2"></i>Order Medicine</a><!--order medicine-->
                            <a href="FeedBackPage.aspx" class="nav-item nav-link"><i class="fa fa-comments me-2"></i>Feedback</a><!--feedback-->
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
                            <a href="UserProfilePage.aspx" class="dropdown-item">My Profile</a><!--My profile add-->
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="LoginPage.aspx" class="dropdown-item">Log Out</a>
                        </div>
                        <!--user profile-->
                    </div>
                </div>
            </nav>
            <br />
            <div class="container">
                <br />
                <h3>Appointment History</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Sl no.</th>
                            <th>Hospital Name</th>
                            <th>Doctor Name</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Prescription</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>01</td>
                            <td>Kalinga Hospital</td>
                            <td>Dr. Gita Mahanty</td>
                            <td>03-10-2023</td>
                            <td>10:00 AM</</td>
                            <td><a href="#">View prescription</a></td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Kalinga Hospital</td>
                            <td>Dr. Abhi Sethi</td>
                            <td>07-11-2023</td>
                            <td>10:00 AM</td>
                            <td><a href="#">View prescription</a></td>
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Kalinga Hospital</td>
                            <td>Dr. Rutupurna Swain</td>
                            <td>28-11-2023</td>
                            <td>2:00 PM</td>
                            <td><a href="#">View prescription</a></td>
                        </tr>
                        <tr>
                            <td>04</td>
                            <td>Aswini Hospital</td>
                            <td>Dr. Eliza Das</td>
                            <td>03-01-2024</td>
                            <td>4:00 PM</td>
                            <td><a href="#">View prescription</a></td>
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>Aditya Care Hospitals</td>
                            <td>Dr. Dipti Biswal</td>
                            <td>13-06-2024</td>
                            <td>3:00 PM</td>
                            <td><a href="#">View prescription</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
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
</body>
</html>