<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="BookCar.aspx.cs"
    Inherits="BookCar" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Book Car</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg,#dfe9f3,#ffffff);

            /* ✅ FIX FOR NAVBAR */
            padding-top: 80px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        /* NAVBAR */
        .navbar-custom {
            background-color: #212529;
        }

        .navbar-custom .nav-link,
        .navbar-custom .navbar-brand {
            color: white !important;
            font-weight: 500;
        }

        .main-card {
            width: 90%;
            max-width: 750px;
            padding: 50px;
            border-radius: 20px;
            background: #ffffff;
            box-shadow: 0 25px 60px rgba(0,0,0,0.15);
            color: #333;
        }

        h2 {
            text-align: center;
            margin-bottom: 35px;
            font-size: 28px;
            font-weight: 700;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 13px;
            margin-bottom: 6px;
            font-weight: 500;
        }

        .form-control {
            padding: 14px;
            border-radius: 10px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        .full-width {
            grid-column: span 2;
        }

        .btn-book {
            margin-top: 30px;
            width: 100%;
            padding: 16px;
            border-radius: 12px;
            border: none;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;
            background: linear-gradient(45deg,#6c757d,#495057);
            color: white;
        }

        @media(max-width:700px){
            .form-grid {
                grid-template-columns: 1fr;
            }
            .full-width {
                grid-column: span 1;
            }
        }
    </style>
</head>

<body>
<form id="Form1" runat="server">

    <!-- ✅ NAVBAR ADDED -->
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
                    <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>


<div class="main-card">
    <h2>🚗 Car Booking Form</h2>

    <div class="form-grid">

        <!-- Car Dropdown -->
        <div class="form-group">
            <label>Select Car</label>
            <asp:DropDownList ID="ddlCarName" runat="server" CssClass="form-control">
                <asp:ListItem Text="-- Select Car --" Value="" />
                <asp:ListItem Text="Creta" />
                <asp:ListItem Text="Wagonr" />
                <asp:ListItem Text="Scorpio" />
                <asp:ListItem Text="Skoda" />
                <asp:ListItem Text="Kia" />
                <asp:ListItem Text="Nexon" />
                <asp:ListItem Text="Thar" />
                <asp:ListItem Text="Fortuner" />
                <asp:ListItem Text="Punch" />
                <asp:ListItem Text="Swift" /> 
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Full Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Booking Date</label>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" />
        </div>

        <div class="form-group full-width">
            <label>Address</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>From Location</label>
            <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>To Location</label>
            <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group full-width">
            <label>Number of Days</label>
            <asp:TextBox ID="txtDays" runat="server" TextMode="Number" CssClass="form-control" />
        </div>

    </div>

    <asp:Button ID="btnBook"
        runat="server"
        Text="Confirm Booking"
        CssClass="btn-book"
        OnClick="btnBook_Click" />

</div>

</form>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>