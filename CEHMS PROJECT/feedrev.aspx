<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedrev.aspx.cs" Inherits="CEHMS_PROJECT.feedrev" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>UPCOMING APPOINTMENT</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


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
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


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
                            <a href="#" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Patient</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientHistory.aspx" class="dropdown-item">View Patient History</a>
                                    <a href="TotalNoOfPatient.aspx" class="dropdown-item">Show Total No. Of Patients</a>
                                </div>
                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="AdminAppHistory.aspx" class="dropdown-item">History</a>
                                    <a href="UpcomingAppAdmin.aspx" class="dropdown-item">Upcoming Appointment</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Grievance</a>
                            <a href="LeaveManagement.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Leave Management</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Employee Management</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="AddEmp.aspx" class="dropdown-item">Add Employee</a>
                                    <a href="ViewEmployee.aspx" class="dropdown-item">View Employee</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Feedback</a>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->
            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                    <h4 class="text-success">EmployeeId:
             <asp:Label ID="lblEmpId" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </h4>
                    <div class="d-flex align-items-right align-items-end dropdown" style="">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">

                            <img class="rounded-circle me-lg-2" src="assetsdash/img/User Avtar.png" alt="" style="width: 70px; height: 70px; margin-left: 800px" />

                            <span class="d-none d-lg-inline-flex">
                                <br />
                                <br />
                                <asp:Label ID="lblUserName" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </span>

                        </a>
                        <br />
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Password Settings</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                <!-- Navbar end -->
                <div class="row align-items-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class=" rounded-3 text-black">
                            <div class="row g-0">
                                <div class="card-body p-md-5 mx-md-4">
                                    <form class="form-inline login-content" runat="server">
                                        <div class="container-fluid">
                                            <br />
                                            <h4>Feedback</h4>
                                            <br />
                                        </div>
                                        <div class="row">
                                            <div class="col-md-10">
                                                <asp:TextBox ID="txtPID" runat="server" placeholder="Enter Patient Id" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2">
                                                <asp:Button ID="btnSearch" runat="server" Text="" CssClass="btn btn-success" OnClick="btnSearch_Click" />
                                            </div>
                                        </div>
                                        <asp:GridView ID="gridUser" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" HeaderStyle-BackColor="#067727" BackColor="#ecf0f1" HeaderStyle-ForeColor="#ffffff" AllowPaging="true" PageSize="2" OnPageIndexChanging="gridUser_PageIndexChanging">
                                            <Columns>
                                                <asp:TemplateField HeaderText="SL">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex + 1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PatientID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPId" runat="server" Text='<%# Eval("PatientId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Rating">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRating" runat="server" Text='<%# Eval("Rating") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="FeedbBack">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFeedBack" runat="server" Text='<%# Eval("FeedBack") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Resolved">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblResolved" runat="server" Text='<%# Eval("ReviewComment") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Reply">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkReply" runat="server" OnClick="lnkReply_Click">View Reply</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    </div>
    </div>
</body>
</html>
