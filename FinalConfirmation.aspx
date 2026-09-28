<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="FinalConfirmation.aspx.cs"
    Inherits="FinalConfirmation" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Booking Confirmation</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding-top: 70px;   /* space for navbar */
        }

        /* ===== NAVBAR ===== */
        .navbar {
            width: 100%;
            height: 60px;
            background: black;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px;
            box-sizing: border-box;
        }

        .logo {
            color: white;
            font-size: 20px;
            font-weight: 600;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 14px;
            font-weight: 500;
        }

        .nav-links a:hover {
            text-decoration: underline;
        }

        /* ===== YOUR ORIGINAL UI BELOW (UNCHANGED) ===== */

        .confirm-card {
            width: 95%;
            max-width: 700px;
            background: #ffffff;
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .success-icon {
            text-align: center;
            font-size: 50px;
            color: #28a745;
        }

        h2 {
            text-align: center;
            margin: 10px 0 30px;
            font-size: 28px;
            font-weight: 700;
            color: #333;
        }

        .car-highlight {
            background: #f1f3f5;
            color: #333;
            padding: 15px;
            border-radius: 12px;
            text-align: center;
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .details-container {
            background: #fafafa;
            padding: 25px;
            border-radius: 15px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 1px solid #e5e5e5;
        }

        .detail-row:last-child {
            border-bottom: none;
        }

        .label {
            font-weight: 600;
            color: #555;
        }

        .value {
            font-weight: 500;
            color: #222;
        }

        .btn-payment {
            margin-top: 30px;
            width: 100%;
            padding: 16px;
            border-radius: 10px;
            border: none;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            background: #6c757d;
            color: white;
            transition: 0.3s;
        }

        .btn-payment:hover {
            background: #5a6268;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        @media(max-width:600px){
            .detail-row {
                flex-direction: column;
                gap: 5px;
            }
        }

    </style>
</head>

<body>

<form id="Form1" runat="server">

    <!-- NAVBAR -->
    <div class="navbar">
        <div class="logo">Car Rental</div>

        <div class="nav-links">
            <a href="Home.aspx">Home</a>
            <a href="cars.aspx">Cars</a>
            <a href="AboutUs.aspx">AboutUs</a>
            <a href="BookCar.aspx">Book</a>
            <a href="Contact.aspx">Contact</a>
             <a href="feedback.aspx">feedback</a>
           
        </div>
    </div>


    <!-- ORIGINAL CONTENT -->
    <div class="confirm-card">

        <div class="success-icon">✔</div>
        <h2>Booking Confirmed Successfully!</h2>

        <div class="car-highlight">
            🚗 <asp:Label ID="lblCar" runat="server" />
        </div>

        <div class="details-container">

            <div class="detail-row">
                <span class="label">Full Name</span>
                <span class="value"><asp:Label ID="lblName" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">Email</span>
                <span class="value"><asp:Label ID="lblEmail" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">Phone</span>
                <span class="value"><asp:Label ID="lblPhone" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">Booking Date</span>
                <span class="value"><asp:Label ID="lblDate" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">Address</span>
                <span class="value"><asp:Label ID="lblAddress" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">From</span>
                <span class="value"><asp:Label ID="lblFrom" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">To</span>
                <span class="value"><asp:Label ID="lblTo" runat="server" /></span>
            </div>

            <div class="detail-row">
                <span class="label">Number of Days</span>
                <span class="value"><asp:Label ID="lblDays" runat="server" /></span>
            </div>

        </div>

        <asp:Button ID="btnBack"
            runat="server"
            Text="Go to Payment Method"
            CssClass="btn-payment"
            PostBackUrl="payment.aspx" />

    </div>

</form>
</body>
</html>