<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FortunerDetails.aspx.cs" Inherits="FortunerDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Toyota Fortuner Details | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: #f5f5f5;
            font-family: 'Segoe UI', sans-serif;
            padding-top: 70px; /* navbar space */
        }

        /* NAVBAR */
        .navbar-custom {
            background-color: #212529;
        }

        .navbar-custom .navbar-brand,
        .navbar-custom .nav-link {
            color: #fff !important;
            font-weight: 500;
        }

        .navbar-custom .nav-link:hover {
            color: #ffc107 !important;
        }

        /* TOP GREY HEADER */
        .header-section {
            background: linear-gradient(135deg, #6c757d, #343a40);
            color: white;
            padding: 60px 0;
            border-radius: 0 0 40px 40px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        .header-section h1 {
            font-size: 42px;
            font-weight: 700;
        }

        .header-section h4 {
            font-size: 24px;
            margin-top: 10px;
        }

        /* SPEC CARD */
        .spec-card {
            background: white;
            padding: 35px;
            border-radius: 25px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .spec-card:hover {
            transform: translateY(-5px);
        }

        .spec-card p {
            font-size: 18px;
            margin-bottom: 12px;
        }

        /* IMAGES */
        .car-img {
            height: 230px;
            object-fit: cover;
            border-radius: 20px;
            transition: 0.3s;
        }

        .car-img:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }

        /* BOOK SECTION */
        .book-section {
            background: white;
            padding: 45px;
            border-radius: 30px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.15);
        }

        .btn-custom {
            background: #343a40;
            border: none;
            padding: 12px 40px;
            font-size: 18px;
            border-radius: 30px;
            transition: 0.3s;
            color: white;
        }

        .btn-custom:hover {
            background: #212529;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <!-- NAVBAR START -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">
            <a class="navbar-brand" href="Home.aspx">🚗 DriveEasy</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cars.aspx">Cars</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.aspx">Contact</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- NAVBAR END -->

    <!-- HEADER -->
    <div class="header-section text-center">
        <div class="container">
            <h1>Toyota Fortuner</h1>
            <h4>₹ 6,500 / Day</h4>
        </div>
    </div>

    <div class="container my-5">

        <div class="row g-4">

            <!-- CAR SPECIFICATIONS -->
            <div class="col-md-6">
                <div class="spec-card">
                    <h3 class="mb-4">Car Specifications</h3>

                    <p><strong>Brand:</strong> Toyota</p>
                    <p><strong>Model:</strong> Fortuner Legender 2023</p>
                    <p><strong>Seats:</strong> 7 Seater</p>
                    <p><strong>Fuel Type:</strong> Diesel</p>
                    <p><strong>AC Type:</strong> Automatic Climate Control</p>
                    <p><strong>Airbags:</strong> 7 Airbags</p>
                    <p><strong>Transmission:</strong> Automatic</p>
                    <p><strong>Drive Type:</strong> 4x4</p>
                    <p><strong>Mileage:</strong> 14 km/l</p>
                </div>
            </div>

            <!-- CAR IMAGES -->
            <div class="col-md-6">
                <div class="row g-3">
                    <div class="col-12">
                        <img src="image/fortuner.jpeg" class="img-fluid car-img w-100" />
                    </div>
                    <div class="col-6">
                        <img src="image/fortuner2.jpeg" class="img-fluid car-img w-100" />
                    </div>
                    <div class="col-6">
                        <img src="image/fortuner3.jpeg" class="img-fluid car-img w-100" />
                    </div>
                </div>
            </div>

        </div>

        <!-- BOOK NOW SECTION -->
        <div class="book-section text-center mt-5">
            <h3 class="mb-3">Ready to Book This Car?</h3>
            <asp:Button ID="btnBook" runat="server"
                Text="Book Now"
                CssClass="btn btn-custom"
                PostBackUrl="BookCar.aspx" />
        </div>

    </div>

</form>

</body>
</html>