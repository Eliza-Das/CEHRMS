<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorFee.aspx.cs" Inherits="CEHMS_PROJECT.DoctorFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Doctor's Fee Invoice</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Favicon -->
    <link href="assetsdash/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
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

        .form-group {
            margin-bottom: 1rem;
            margin-top: -454px;
            margin-left: 350px;
        }

        .py-4 {
            padding-top: 1.5rem !important;
            padding-bottom: 1.5rem !important;
            height: 110px;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border: 2px solid #000; /* Added bold black border */
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
        }

        .invoice-details {
            background-color: #3498db;
            color: #fff;
            font-weight: bold;
        }

        .patient-details {
            background-color: #2ecc71;
            color: #fff;
            font-weight: bold;
        }

        .item-header {
            background-color: #f39c12;
            color: #fff;
            font-weight: bold;
        }

        .total-row {
            font-weight: bold;
            background-color: #e74c3c;
            color: #fff;
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
                            <a href="#" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="Appointments.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientAppHistory.aspx" class="dropdown-item">History</a>
                                    <a href="UpcomingAppPatient.aspx" class="dropdown-item">Upcoming</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
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
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                    <h4 class="text-success" style="margin-top: 30px;">HealthId:
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
                <div class="container">
                    <div class="login-content">
                        <h2>Invoice </h2>
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="4">Invoice</th>
                                </tr>
                                <tr>
                                    <th class="invoice-details">Invoice ID</th>
                                    <th class="invoice-details">Date & Time</th>
                                    <th class="patient-details">Patient ID</th>
                                    <th class="patient-details">Patient Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data, replace with actual data from your system -->
                                <tr>
                                    <td class="invoice-details">INV001</td>
                                    <td class="invoice-details">2024-03-14 10:00 AM</td>
                                    <td class="patient-details">PAT001</td>
                                    <td class="patient-details">123 Main St, City<br>
                                        Mobile No: 9876543210</td>
                                </tr>
                            </tbody>
                        </table>
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="4" class="item-header">Items</th>
                                </tr>
                                <tr>
                                    <th class="item-header">Particular</th>
                                    <th class="item-header">Unit</th>
                                    <th class="item-header">Price</th>
                                    <th class="item-header">Discount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data, replace with actual data from your system -->
                                <tr>
                                    <td>Item 1</td>
                                    <td>1</td>
                                    <td>$10.00</td>
                                    <td>$2.00</td>
                                </tr>
                                <tr>
                                    <td>Item 2</td>
                                    <td>2</td>
                                    <td>$20.00</td>
                                    <td>$0.00</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr class="total-row">
                                    <td colspan="3"></td>
                                    <td>Grand Total: $28.00</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <!-- JavaScript Libraries -->
                <script type="text/javascript" src="LogAssets/js/main.js"></script>
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
            </div>
        </div>
    </div>
</body>
</html>