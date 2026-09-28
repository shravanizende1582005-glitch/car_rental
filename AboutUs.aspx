<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About Us | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f4f6f9;
            padding-top: 70px;
        }

        /* Navbar */
        .navbar-custom {
            background-color: #212529;
        }

        .navbar-custom .nav-link,
        .navbar-custom .navbar-brand {
            color: white !important;
        }

        /* Header */
        .header-section {
            background: linear-gradient(135deg, #343a40, #212529);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        /* Cards */
        .about-card {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .about-card:hover {
            transform: translateY(-5px);
        }

        .icon-box {
            font-size: 40px;
            color: #212529;
            margin-bottom: 15px;
        }

        /* Team */
        .team-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
        }

        .team-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
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
        <div class="container">
            <h1>About DriveEasy</h1>
            <p>Your Trusted Partner for Comfortable Car Rentals</p>
        </div>
    </div>

    <!-- ABOUT CONTENT -->
    <div class="container my-5">

        <div class="row g-4">

            <div class="col-md-6">
                <div class="about-card">
                    <h3>Who We Are</h3>
                    <p>
                        DriveEasy is a modern car rental service designed to provide customers with safe,
                        reliable, and affordable vehicles for every journey. Whether you need a car for
                        daily travel, business trips, or family vacations, we offer a wide range of vehicles
                        to suit your needs.
                    </p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="about-card">
                    <h3>Our Mission</h3>
                    <p>
                        Our mission is to make car rentals simple, convenient, and accessible for everyone.
                        We focus on delivering excellent customer service, well-maintained vehicles,
                        and transparent pricing to ensure a smooth experience for our customers.
                    </p>
                </div>
            </div>

        </div>

        <!-- FEATURES -->
        <div class="row text-center mt-5 g-4">

            <div class="col-md-4">
                <div class="about-card">
                    <div class="icon-box">
                        <i class="bi bi-car-front-fill"></i>
                    </div>
                    <h4>Wide Range of Cars</h4>
                    <p>Choose from economy cars to luxury SUVs for every occasion.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="about-card">
                    <div class="icon-box">
                        <i class="bi bi-shield-check"></i>
                    </div>
                    <h4>Safe & Reliable</h4>
                    <p>All vehicles are regularly serviced and safety checked.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="about-card">
                    <div class="icon-box">
                        <i class="bi bi-clock-history"></i>
                    </div>
                    <h4>24/7 Support</h4>
                    <p>Our support team is always ready to assist you anytime.</p>
                </div>
            </div>

        </div>

        <!-- TEAM -->
        <div class="text-center mt-5 mb-4">
            <h2>Our Team</h2>
        </div>

        <div class="row g-4 justify-content-center">

            <div class="col-md-3">
                <div class="team-card">
                    <img src="image/kunal.jpeg" />
                    <h5>Rahul Patil</h5>
                    <p>Founder</p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="team-card">
                    <img src="image/pranali.jpeg" />
                    <h5>Priya Sharma</h5>
                    <p>Manager</p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="team-card">
                    <img src="image/athrav.jpeg" />
                    <h5>Amit Joshi</h5>
                    <p>Customer Support</p>
                </div>
            </div>

        </div>

    </div>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>