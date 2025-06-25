<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOC_LeaveApply.aspx.cs" Inherits="CEHMS_PROJECT.DOC_LeaveApply" %>

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
     <form class="form-inline login-content" runat="server">
         <h3>APPLY FOR LEAVE</h3>
        
          <div class="row">
     <div class="col-md-6">
         Starting Date: <asp:TextBox ID="txtStartDate" TextMode="Date" class="form-control" runat="server" placeholder="Strating Date"></asp:TextBox>
     </div>
     <div class="col-md-6">
         Ending Date: <asp:TextBox ID="txtEndDate" TextMode="Date" class="form-control" runat="server" placeholder="Straing Date"></asp:TextBox>

     </div>
 </div>
         <br />
         <div class="col-md-9">
         LEAVE TYPES:
        
                                <asp:DropDownList ID="ddlList" runat="server"  Class="form-control">
                                    <asp:ListItem value="1">Types Of Leave</asp:ListItem>
                                    <asp:ListItem Value="2">Privilege Leave(PL)/Annual  Leave(Al)</asp:ListItem>
                                    <asp:ListItem Value="3">Casual Leave(CL)</asp:ListItem>
                                    <asp:ListItem Value="4">Sick Leave(SL)</asp:ListItem>
                                    <asp:ListItem Value="5">Maternity Leave(ML) </asp:ListItem>
                                    <asp:ListItem Value="6">Marriage Leave</asp:ListItem>
                                    <asp:ListItem Value="7">Paternity Leave</asp:ListItem>
                                    <asp:ListItem Value="8">Berevavement Leave</asp:ListItem>
                                    <asp:ListItem Value="9">Compensatory Leave(comp-off)</asp:ListItem>
                                    <asp:ListItem Value="10">Loss Of pay Leave(LOP/LWP)</asp:ListItem>
                                    <asp:ListItem Value="11">Others</asp:ListItem>
                                    </asp:DropDownList>
             </div>
         <br />
           REASON FOR LEAVE: 
         <br />
         <asp:TextBox runat="server" ID="txtReason" TextMode="MultiLine" Width="90%"></asp:TextBox>

           <div class="text-center pt-1 mb-5 pb-1">
      <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success  gradient-custom-2 mb-3" Onclick="btnSubmit_Click" />
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning gradient-custom-2 mb-3" Onclick="btnCancel_Click"/>
      <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
  </div>
         </form>
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