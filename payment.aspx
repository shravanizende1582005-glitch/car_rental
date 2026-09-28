<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="payment.aspx.cs"
    Inherits="payment" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Payment Method</title>

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
            padding-top: 70px; /* space for navbar */
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

        /* ===== YOUR ORIGINAL UI (UNCHANGED) ===== */

        .payment-card {
            width: 95%;
            max-width: 750px;
            background: #ffffff;
            padding: 45px;
            border-radius: 20px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
            color: #333;
        }

        .payment-option {
            border: 2px solid #e5e5e5;
            border-radius: 15px;
            padding: 20px;
            display: flex;
            align-items: center;
            cursor: pointer;
            margin-bottom: 20px;
            transition: 0.3s;
        }

        .payment-option:hover {
            border-color: #6c757d;
            background: #fafafa;
        }

        .payment-option input {
            margin-right: 15px;
            transform: scale(1.2);
        }

        .option-title {
            font-weight: 600;
            font-size: 16px;
        }

        .option-desc {
            font-size: 13px;
            color: #666;
        }

        .upi-section {
            display: none;
            text-align: center;
            margin-top: 20px;
            padding: 20px;
            border-radius: 15px;
            background: #f8f9fa;
        }

        .upi-section img {
            width: 220px;
            margin-top: 10px;
        }

        .btn-pay {
            margin-top: 35px;
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

        .btn-pay:hover {
            background: #5a6268;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

    </style>

    <script>
        function showUPI() {
            var upiSection = document.getElementById("upiBox");
            upiSection.style.display = "block";
        }

        function hideUPI() {
            var upiSection = document.getElementById("upiBox");
            upiSection.style.display = "none";
        }
    </script>

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
    <div class="payment-card">

        <h2>💳 Select Payment Method</h2>

        <!-- UPI Option -->
        <label class="payment-option">
            <asp:RadioButton ID="rbUPI" runat="server"
                GroupName="PaymentMethod"
                onclick="showUPI();" />
            <div>
                <div class="option-title">UPI Payment</div>
                <div class="option-desc">Scan QR using Google Pay / PhonePe / Paytm</div>
            </div>
        </label>

        <!-- Cash Option -->
        <label class="payment-option">
            <asp:RadioButton ID="rbCash" runat="server"
                GroupName="PaymentMethod"
                onclick="hideUPI();" />
            <div>
                <div class="option-title">Cash on Pickup</div>
                <div class="option-desc">Pay when you collect the car</div>
            </div>
        </label>

        <!-- UPI QR Section -->
        <div id="upiBox" class="upi-section">
            <h3>Scan & Pay</h3>
            <img src="image/upi.jpg" alt="UPI QR Code" />
            <p>UPI ID: carrental@upi</p>
        </div>

        <asp:Button ID="btnProceed"
            runat="server"
            Text="Confirm Payment"
            CssClass="btn-pay"
            OnClick="btnProceed_Click" />

    </div>

</form>
</body>
</html>