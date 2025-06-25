<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOC_Prescription.aspx.cs" Inherits="CEHMS_PROJECT.DOC_Prescription" %>

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
        .docpres {
            display: block;
            width: 100%;
            padding: .375rem .75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            /*            color: #757575;*/
            background-clip: padding-box;
            border: 1px solid #ced4da;
            appearance: none;
            border-radius: 5px;
            transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out
        }

            .docpres:read-only {
                opacity: 1
            }
            .docpres:disabled{
                            display: block;
            width: 100%;
            padding: .375rem .75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
             color: #757575;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            appearance: none;
            border-radius: 5px;
            transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out
            }
            .docpres:

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

        .btn-success {
            margin-top: 23px;
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
                                <img class="rounded-circle" src="assets1/img/LogoNewBetter.png" style="width: 110px; height: 110px;" />
                            </div>
                        </div>
                        <div class="navbar-nav w-100">
                            <a href="DOC_Dashboard.aspx" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="DOC_ManagePatient.aspx" class="nav-item nav-link"><i class="fa fa-calendar-alt me-2"></i>Patient History</a>
                            <a href="DOC_Appointments.aspx" class="nav-item nav-link"><i class="fa fa-clock me-2"></i>Manage Appointmnet</a>
                            <a href="DOC_Prescription.aspx" class="nav-item nav-link active"><i class="fa fa-prescription-bottle-alt me-2"></i>Prescription</a>
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
                    <h3>Add Prescription</h3>
                    <div class="row">
                        <div class="col-md-3">
                            Enter AppointmentID<asp:TextBox ID="txtAppID" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            PatientID:
                                    <asp:TextBox ID="txtPatID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            PrescriptionID:<asp:TextBox ID="txtPresID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="BtnValidate" runat="server" Text="Enter" CssClass="btn btn-success docpres" Onclick="BtnValidate_Click" />
                        </div>
                        <div class="col-md-3">
                            Medicine :<asp:DropDownList ID="ddlMedicine" runat="server" Class="form-control" Visible="false"></asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            Dosage:<asp:TextBox ID="txtDos" class="form-control" runat="server" Visible="false"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            Frequency:<asp:TextBox ID="txtFreq" class="form-control" runat="server" Visible="false"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="BtnAddRow" runat="server" Text="Add" class="btn btn-success docpres" Onclick="BtnAddRow_Click" Visible="false" />
                            <asp:Button ID="BtnEditRow" runat="server" Text="Add" CssClass="btn-success docpres" Onclick="BtnEditRow_Click" Visible="false" />
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="col-md-1">
                            Remarks:
                        </div>
                        <div class="col-md-11">
                            <asp:TextBox ID="txtRem" runat="server" CssClass="form-control" Visible="false"></asp:TextBox><br />
                        </div>
                    </div>
                    <asp:GridView ID="GrdPrescription" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" HeaderStyle-BackColor="#067727" BackColor="#ecf0f1" HeaderStyle-ForeColor="#ffffff">
                        <Columns>
                            <asp:BoundField DataField="Medicine" HeaderText="Medicine" />
                            <asp:BoundField DataField="Dosage" HeaderText="Dosage" />
                            <asp:BoundField DataField="Frequency" HeaderText="Frequency" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" Onclick="lnkEdit_Click">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="lnkDel" runat="server" Onclick="lnkDel_Click">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div class="form-outline mb-4">
                        <div class="row">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Onclick="BtnSubmit_Click" Visible="false" CssClass="btn-success docpres" />
                        </div>
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    </div>
                </form>
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
    <script src="assetsdash/js/main.js"></script>
</body>
</html>