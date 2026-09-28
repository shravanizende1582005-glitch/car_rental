<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Customer Feedback | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: #f5f5f5;
            font-family: 'Segoe UI', sans-serif;
        }
        /* Navbar */
        .navbar-custom {
            background-color: #212529;
        }

        .navbar-custom .nav-link,
        .navbar-custom .navbar-brand {
            color: white !important;
        }

        .header-section {
            background: linear-gradient(135deg, #6c757d, #343a40);
            color: white;
            padding: 60px 0;
            border-radius: 0 0 40px 40px;
            text-align: center;
        }

        .feedback-card {
            background: white;
            padding: 40px;
            border-radius: 25px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            margin-top: -40px;
        }

        .btn-custom {
            background: #343a40;
            color: white;
            border: none;
            padding: 12px 40px;
            border-radius: 30px;
            font-size: 18px;
            transition: 0.3s;
        }

        .btn-custom:hover {
            background: #212529;
            transform: scale(1.05);
        }

        .success-label {
            font-weight: 600;
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
                    <li class="nav-item"><a class="nav-link active" href="AboutUs.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- HEADER -->
    <div class="header-section">
        <h1>Customer Feedback</h1>
        <p>We value your experience with DriveEasy 🚗</p>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <div class="feedback-card">

                    <div class="mb-3">
                        <label class="form-label">Full Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Car Rented</label>
                        <asp:DropDownList ID="ddlCar" runat="server" CssClass="form-select">
                            <asp:ListItem>Select Car</asp:ListItem>
                            <asp:ListItem>Swift</asp:ListItem>
                            <asp:ListItem>Creta</asp:ListItem>
                            <asp:ListItem>WagonR</asp:ListItem>
                            <asp:ListItem>Punch</asp:ListItem>
                            <asp:ListItem>Nexon</asp:ListItem>
                            <asp:ListItem>Kia Seltos</asp:ListItem>
                            <asp:ListItem>Thar</asp:ListItem>
                            <asp:ListItem>Scorpio</asp:ListItem>
                            <asp:ListItem>Skoda</asp:ListItem>
                            <asp:ListItem>Fortuner</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Rating</label>
                        <asp:DropDownList ID="ddlRating" runat="server" CssClass="form-select">
                            <asp:ListItem Value="1">⭐ 1 - Poor</asp:ListItem>
                            <asp:ListItem Value="2">⭐⭐ 2 - Fair</asp:ListItem>
                            <asp:ListItem Value="3">⭐⭐⭐ 3 - Good</asp:ListItem>
                            <asp:ListItem Value="4">⭐⭐⭐⭐ 4 - Very Good</asp:ListItem>
                            <asp:ListItem Value="5">⭐⭐⭐⭐⭐ 5 - Excellent</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Your Feedback</label>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control"
                            TextMode="MultiLine" Rows="4" required></asp:TextBox>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server"
                            Text="Submit Feedback"
                            CssClass="btn btn-custom"
                            OnClick="btnSubmit_Click" />
                    </div>

                    <div class="text-center mt-3">
                        <asp:Label ID="lblMessage" runat="server"
                            CssClass="text-success success-label"></asp:Label>
                    </div>

                </div>

            </div>
        </div>
    </div>

</form>

</body>
</html>