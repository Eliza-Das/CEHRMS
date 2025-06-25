<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HEALTHCARDPAGE.aspx.cs" Inherits="CEHMS_PROJECT.HEALTHCARDPAGE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        /*        .card {
            width: 53rem;
            height: 478px;
            background-image: url('assets2/img/HealthCardBg.png');
            background-size: cover;
        }*/
        .qrcode {
            width: 150Px;
            height: 150px;
            margin-left: 41rem;
            margin-top: -3rem;
        }

        .bo {
            width: 55rem;
            height: 480px;
            background-image: url('assets1/img/HealthCardNewBgCrop.png');
            background-size: cover;
        }

        .details {
            padding-top: 105px;
            padding-left: 31px;
        }
    </style>
</head>
<body>
    <div class="bg">
        <form id="form1" runat="server">
            <div id="printDiv" runat="server" style="padding-left: 25rem; padding-top: 8rem;">
                <div class="bo">
                    <%--                <h1 style="width: 465px;">Health Card for CEHRMS </h1>
                <img src="assets2/img/logozoom-removebg-preview.png" style="height: 200px; width: 200px; margin-left: 35rem;" />--%>
                    <div class="details">
                        <h2 class="card-title">
                            <asp:Label ID="lblname" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblHealthId" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblGen" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblMob" runat="server" Text=""></asp:Label></h2>
                        <div class="qrcode">
                            <asp:Image ID="Image1" runat="server" CssClass="card-img-top" AlternateText="QR Code Image" />
                        </div>
                    </div>
                </div>

                <%--                <div class="card">
                    <h1>Health Card for CEHRMS </h1>
                    <img src="assets2/img/logozoom-removebg-preview.png" style="height: 200px; width: 200px; margin-left: 35rem;" />
                    <div style="width: 450px; margin-top: 63px;">
                    </div>

                </div>--%>
            </div>
        </form>
        <asp:Button ID="BtnLogin" runat="server" Text="Login" Class="btn btn-success" OnClick="BtnLogin_Click1" />
       
    </div>
</body>
</html>
