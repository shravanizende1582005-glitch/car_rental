<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Us | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- SweetAlert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f4f6f9;
            padding-top: 70px;
        }

        .navbar-custom {
            background-color: #212529;
        }

        .navbar-custom .nav-link,
        .navbar-custom .navbar-brand {
            color: white !important;
        }

        .header-section {
            background: linear-gradient(135deg, #343a40, #212529);
            color: white;
            padding: 70px 0;
            text-align: center;
        }

        .contact-card {
            background: white;
            border-radius: 15px;
            padding: 35px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        .contact-info {
            background: #212529;
            color: white;
            border-radius: 15px;
            padding: 35px;
            height: 100%;
        }

        .btn-custom {
            background: #212529;
            color: white;
            padding: 12px;
            border-radius: 30px;
            border: none;
            width: 100%;
            font-size: 18px;
        }

        .btn-custom:hover {
            background: black;
            transform: scale(1.05);
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">
            <a class="navbar-brand" href="Home.aspx">🚗 DriveEasy</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="cars.aspx">Cars</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link active" href="Contact.aspx">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- HEADER -->
    <div class="header-section">
        <h1>Contact Us</h1>
        <p>We’re here to help you with your car rental needs</p>
    </div>

    <!-- CONTACT -->
    <div class="container my-5">
        <div class="row g-4">

            <!-- FORM -->
            <div class="col-md-7">
                <div class="contact-card">

                    <h3 class="mb-4">Send Message</h3>

                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Your Name" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email" />
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control mb-3" Placeholder="Phone" />

                    <asp:TextBox ID="txtMessage" runat="server"
                        CssClass="form-control mb-3"
                        TextMode="MultiLine"
                        Rows="4"
                        Placeholder="Your Message" />

                    <asp:Button ID="btnSend"
                        runat="server"
                        Text="Send Message"
                        CssClass="btn-custom"
                        OnClick="btnSend_Click" />

                </div>
            </div>

            <!-- INFO -->
            <div class="col-md-5">
                <div class="contact-info">
                    <h3>Contact Information</h3>
                    <p>📍 Pune, Maharashtra</p>
                    <p>📞 +91 9876543210</p>
                    <p>✉ support@driveeasy.com</p>
                    <p>🕒 Mon - Sun : 9 AM - 9 PM</p>
                </div>
            </div>

        </div>
    </div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>