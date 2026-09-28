<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DriveEasy | Car Rental Services</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        /* HERO SECTION */
        .hero {
            background: url('https://images.unsplash.com/photo-1503376780353-7e6692767b70') no-repeat center center/cover;
            height: 90vh;
            color: white;
            display: flex;
            align-items: center;
        }

        .hero-overlay {
            background: rgba(0,0,0,0.6);
            width: 100%;
            padding: 60px;
            text-align: center;
        }

        .hero h1 {
            font-size: 50px;
            font-weight: 600;
        }

        /* CAR CARDS */
        .car-card img {
            height: 200px;
            object-fit: cover;
        }

        /* VIDEO SECTION */
        .video-section {
            background: #f8f9fa;
            padding: 60px 0;
        }

        .promo-video {
            width: 100%;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        /* FOOTER */
        footer {
            background: #111;
            color: #bbb;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand font-weight-bold" href="#">DriveEasy</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cars.aspx">Cars</a></li>
                <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">Aboutus</a></li>
                <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                <li class="nav-item"><a class="btn btn-warning ml-3" href="Login.aspx">login</a></li>
            </ul>
        </div>
    </nav>

    <!-- HERO SECTION -->
    <section class="hero">
        <div class="hero-overlay">
            <h1>Rent Your Dream Car</h1>
            <p class="lead">Affordable • Reliable • Comfortable</p>
            <a href="cars.aspx" class="btn btn-warning btn-lg mt-3">Explore Cars</a>
        </div>
    </section>

    <!-- CAR TYPES -->
    <section class="container my-5">
        <h2 class="text-center mb-4">Our Popular Cars</h2>
        <div class="row">

            <div class="col-md-4">
                <div class="card car-card">
                    <img src="https://images.unsplash.com/photo-1549924231-f129b911e442" class="card-img-top" />
                    <div class="card-body text-center">
                        <h5>Economy Cars</h5>
                        <p>Best for city rides & budget travel</p>
                        <a href="#" class="btn btn-outline-primary">View Cars</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card car-card">
                    <img src="https://images.unsplash.com/photo-1603386329225-868f9b1ee6c9" class="card-img-top" />
                    <div class="card-body text-center">
                        <h5>Luxury Cars</h5>
                        <p>Experience premium comfort & style</p>
                        <a href="#" class="btn btn-outline-primary">View Cars</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card car-card">
                    <img src="https://images.unsplash.com/photo-1542362567-b07e54358753" class="card-img-top" />
                    <div class="card-body text-center">
                        <h5>SUV & Family Cars</h5>
                        <p>Perfect for long trips & family travel</p>
                        <a href="#" class="btn btn-outline-primary">View Cars</a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- MP4 VIDEO SECTION -->
    <section class="video-section">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-md-6">
                    <h2>Why Choose DriveEasy?</h2>
                    <ul>
                        <li>24/7 Customer Support</li>
                        <li>Well Maintained Cars</li>
                        <li>Affordable Rental Plans</li>
                        <li>Easy Online Booking</li>
                    </ul>
                </div>

                <div class="col-md-6">
                    <video class="promo-video" controls autoplay muted loop>
                        <source src="#" type="video/mp4" />
                        Your browser does not support the video tag.
                    </video>
                </div>

            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        © 2026 DriveEasy Car Rentals | All Rights Reserved
    </footer>

</form>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>     
