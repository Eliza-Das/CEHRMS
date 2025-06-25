<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UPCOMING APPOINTMENT.aspx.cs" Inherits="CEHMS_PROJECT.UPCOMING_APPOINTMENT" %>

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
                            <a href="#" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="BookAppointment.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle ac tive" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="History Appointment.aspx" class="dropdown-item">History</a>
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
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" Style="margin-left: 800px" class="rounded-circle me-lg-2" />
                            </span>
                            <span class="d-none d-lg-inline-flex">
                                <asp:Label ID="lblUserName" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0" style=" margin-left:700px">
                            <a href="UserProfile.aspx" class="dropdown-item">My Profile</a>
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
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
                                            <h4>Your Upcoming Appointment</h4>
                                            <br />
                                        </div>
                                          <div class="row">
                                        <div class="col-md-10">
                                         <asp:TextBox ID="txtappId" runat="server" placeholder="Enter AppointmentId" CssClass="form-control"></asp:TextBox>
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
                                                <asp:TemplateField HeaderText="AppointmentID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAppId" runat="server" Text='<%# Eval("AppointmentID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Hospital">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblHospital" runat="server" Text='<%# Eval("HospitalName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Department">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDept" runat="server" Text='<%# Eval("DepartmentName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Doctor">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDoctor" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Date">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDate" runat="server" DataFormatString="({0:d})" ApplyFormatInEditMode="true" DataField="SNAPSHOT_DATA_DATE" SortExpression="SNAPSHOT_DATA_DATE" Text='<%# Eval("AppDate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Time">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTime" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Action">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkEdit" runat="server" OnClick="lnkEdit_Click">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="YellowGreen"></asp:Label>
                                        <div class="row">
                                        <div class="col-md-4">
                                        <asp:TextBox ID="txtTime" runat="server" Visible="false" TextMode="Time" CssClass="form-control" placeholder="Time"></asp:TextBox>
                                             </div>
                                        <div class="col-md-4">
                                        <asp:TextBox ID="txtDate" runat="server" Visible="false" TextMode="Date" CssClass="form-control" placeholder="Date"></asp:TextBox>
                                           </div>
                                        <div class="col-md-4">
                                        </div>
                                    </div>
                                        <asp:HiddenField ID="hdnAppID" runat="server" />
                                        <div class="text-center pt-1 mb-5 pb-1">
                                            <%--<asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn btn-success" OnClick="btnSaveChanges_Click" />
                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click" />--%>
                                            <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn btn-success" OnClick="btnSaveChanges_Click" />
                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click" />
                                        </div>
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