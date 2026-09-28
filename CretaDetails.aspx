<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CretaDetails.aspx.cs" Inherits="CretaDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Hyundai Creta Details | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', sans-serif;
        }

        /* HEADER */
        .header-section {
            background: linear-gradient(to right, #6c757d, #495057);
            padding: 80px 0;
            text-align: center;
            color: white;
            border-radius: 0 0 40px 40px;
        }

        .price-badge {
            background: white;
            color: #333;
            padding: 12px 30px;
            border-radius: 40px;
            font-size: 20px;
            font-weight: 600;
            display: inline-block;
            margin-top: 18px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        /* CARD */
        .custom-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 35px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .custom-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 18px 40px rgba(0,0,0,0.15);
        }

        .spec-item {
            font-size: 17px;
            margin-bottom: 14px;
            color: #555;
        }

        .spec-item i {
            color: #495057;
            margin-right: 10px;
        }

        /* IMAGES */
        .car-img {
            height: 230px;
            object-fit: cover;
            border-radius: 15px;
            transition: 0.3s;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .car-img:hover {
            transform: scale(1.05);
        }

        /* BOOK SECTION */
        .book-section {
            margin-top: 80px;
            padding: 60px;
            border-radius: 25px;
            background: #ffffff;
            box-shadow: 0 20px 45px rgba(0,0,0,0.08);
        }

        .book-btn {
            background: #343a40;
            color: white;
            border: none;
            padding: 15px 50px;
            font-size: 18px;
            border-radius: 40px;
            transition: 0.3s;
        }

        .book-btn:hover {
            background: #212529;
            transform: scale(1.08);
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <!-- HEADER -->
    <div class="header-section">
        <div class="container">
            <h1 class="display-5">Hyundai Creta</h1>
            <div class="price-badge">₹ 3,200 / Day</div>
        </div>
    </div>

    <div class="container my-5">

        <div class="row g-5">

            <!-- Specifications -->
            <div class="col-md-6">
                <div class="custom-card">
                    <h3 class="mb-4 text-dark">Car Specifications</h3>

                    <div class="spec-item"><i class="bi bi-car-front-fill"></i><strong> Brand:</strong> Hyundai</div>
                    <div class="spec-item"><i class="bi bi-speedometer2"></i><strong> Model:</strong> Creta SX 2024</div>
                    <div class="spec-item"><i class="bi bi-people-fill"></i><strong> Seats:</strong> 5 Seater</div>
                    <div class="spec-item"><i class="bi bi-fuel-pump-fill"></i><strong> Fuel Type:</strong> Diesel</div>
                    <div class="spec-item"><i class="bi bi-snow"></i><strong> AC:</strong> Automatic Climate Control</div>
                    <div class="spec-item"><i class="bi bi-shield-check"></i><strong> Airbags:</strong> 6 Airbags</div>
                    <div class="spec-item"><i class="bi bi-gear-fill"></i><strong> Transmission:</strong> Automatic</div>
                    <div class="spec-item"><i class="bi bi-graph-up"></i><strong> Mileage:</strong> 19 km/l</div>
                </div>
            </div>

            <!-- Images -->
            <div class="col-md-6">
                <div class="row g-4">
                    <div class="col-12">
                        <img src="<%= ResolveUrl("~/image/creta.jpeg") %>" class="img-fluid car-img w-100" />
                    </div>
                    <div class="col-6">
                        <img src="<%= ResolveUrl("~/image/creta2.jpeg") %>" class="img-fluid car-img w-100" />
                    </div>
                    <div class="col-6">
                        <img src="<%= ResolveUrl("~/image/creta3.jpeg") %>" class="img-fluid car-img w-100" />
                    </div>
                </div>
            </div>

        </div>

        <!-- BOOK SECTION -->
        <div class="book-section text-center">
            <h2 class="mb-4 text-dark">Ready to Book This SUV?</h2>

            <asp:Button ID="btnBook" runat="server"
                Text="Book Now"
                CssClass="book-btn"
                PostBackUrl="BookCar.aspx" />
        </div>

    </div>

</form>

</body>
</html>