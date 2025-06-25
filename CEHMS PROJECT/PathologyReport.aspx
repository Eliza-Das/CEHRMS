<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PathologyReport.aspx.cs" Inherits="CEHMS_PROJECT.PathologyReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>PATHOLOGY REPORT</title>
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
                            <a href="BookAppointment.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientAppHistory.aspx" class="dropdown-item">History</a>
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
                </nav>                <!-- Navbar end -->
    
    <style>
        /* Your CSS styles here */
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #6ab04c; /* Green background */
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.header {
    text-align: center;
    margin-bottom: 20px;
}

.login-content img {
    height: 160px;
    margin-left: 591px;
    margin-top: -86px;
}

.header h1 {
    color: #333;
    text-decoration: underline;
}

.patient-info {
    margin-bottom: 20px;
    margin-top: -50px;
    justify-content: left;
    align-content: left;
    align-items: left;
    text-align: left;
}

    .patient-info p {
        margin: 5px 0;
        text-align: left;
    }

.test-results {
    margin-bottom: 20px;
}

    .test-results table {
        width: 100%;
        border-collapse: collapse;
    }

    .test-results th, .test-results td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

.footer {
    text-align: center;
}

.download-btn {
    padding: 10px 20px;
    background-color: #4CAF50; /* Green button */
    border: none;
    border-radius: 5px;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 20px;
    cursor: pointer;
}

    .download-btn:hover {
        background-color: #45a049; /* Darker green on hover */
    }
    </style>
    <form id="form2" runat="server">
        <div class="container">
            <div class="header login-content">
                <h1>Pathology Report</h1>
                <div class="logo">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="assets1/img/LogoNewBetter.png" />
                </div>
                <div class="patient-info">
                    <h2>
                        <br class="Apple-interchange-newline">
                        Patient Information:
                    </h2>

                    <p><strong>PatientID:</strong> <asp:Label ID="lblPatientId" runat="server"></asp:Label></p>
                    <p><strong>TestID:</strong> <asp:Label ID="lblTestId" runat="server"></asp:Label></p>
                    <p><strong>Name:</strong> <asp:Label ID="lblPatientName" runat="server"></asp:Label></p>
                    <p><strong>DateofDiagnosis:</strong> <asp:Label ID="lblDateOfDiagnosis" runat="server"></asp:Label></p>
                </div>
                <div class="test-results">
                    <h2>Test Results:</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Test</th>
                                <th>Observed Value</th>
                                <th>Normal Range</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Haemoglobin</td>
                                <td><asp:Label ID="lblHaemoglobin" runat="server">15.5 g/dL</asp:Label></td>
                                <td>13.5 - 17.5 g/dL</td>
                            </tr>
                            <tr>
                                <td>RBC Count</td>
                                <td><asp:Label ID="lblRBCCount" runat="server">5.2 million cells/mcL</asp:Label></td>
                                <td>4.5 - 5.5 million cells/mcL</td>
                            </tr>
                            <tr>
                                <td>Eosinophils</td>
                                <td><asp:Label ID="lblEosinophils" runat="server">4%</asp:Label></td>
                                <td>0 - 7%</td>
                            </tr>
                            <tr>
                                <td>Neutrophils</td>
                                <td><asp:Label ID="lblNeutrophils" runat="server">55%</asp:Label></td>
                                <td>40 - 60%</td>
                            </tr>
                            <tr>
                                <td>WBC Count</td>
                                <td><asp:Label ID="lblWBCCount" runat="server">9.0 x 10^3/µL</asp:Label></td>
                                <td>4.5 - 11.0 x 10^3/µL</td>
                            </tr>
                            <!-- Add more rows for other tests -->
                        </tbody>
                    </table>
                </div>
                <div class="footer">
                    <asp:Button ID="btnDownload" runat="server" Text="Download Report" OnClick="btnDownload_Click" CssClass="download-btn"/>
                </div>
            </div>
        </div>
    </form>
<       <!-- JavaScript Libraries -->
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