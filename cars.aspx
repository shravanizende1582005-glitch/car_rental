<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="cars.aspx.cs"
    Inherits="cars" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Available Cars</title>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- ✅ Bootstrap Added for Proper Navbar -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
            padding-top: 70px; /* ✅ Space for fixed navbar */
        }

        h2 {
            text-align: center;
            margin: 25px 0;
            font-size: 26px;
            color: #2c3e50;
        }

        .car-container {
            width: 92%;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .car-card {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            overflow: hidden;
            transition: 0.3s ease;
        }

        .car-card:hover {
            transform: translateY(-5px);
        }

        .car-card img {
            width: 100%;
            height: 200px;
            object-fit: contain;
            background: #fff;
            padding: 10px;
        }

        .car-info {
            padding: 15px;
            text-align: center;
        }

        .car-info h3 {
            margin: 8px 0;
            font-size: 18px;
            color: #2c3e50;
        }

        .car-info p {
            margin: 4px 0 12px;
            font-size: 14px;
            color: #555;
        }

        .car-info input[type="date"] {
            width: 95%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-bottom: 12px;
            font-size: 14px;
        }

        .btn-group {
            display: flex;
            gap: 8px;
        }

        .btn {
            flex: 1;
            padding: 11px 0;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            color: white;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .btn-check {
            background: #27ae60;
        }

        .btn-details {
            background: #2980b9;
        }

        .btn:hover {
            opacity: 0.9;
            transform: scale(1.03);
        }

        @media(max-width: 1000px) {
            .car-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width: 600px) {
            .car-container {
                grid-template-columns: 1fr;
            }

            .btn-group {
                flex-direction: column;
            }
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
                <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About</a></li>
                <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="Feedback.aspx">Feedback</a></li>
            </ul>
        </div>
    </nav>

    <!-- ScriptManager -->
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <h2>🚗 Our Premium Cars</h2>

    <div class="car-container">

        <asp:Repeater ID="rptCars" runat="server">
            <ItemTemplate>

                <div class="car-card">

                    <img src='<%# Eval("CarImage").ToString().Replace("~/Image/", "image/") %>' />

                    <div class="car-info">

                        <h3><%# Eval("CarName") %></h3>
                        <p><b>Brand:</b> <%# Eval("Brand") %></p>

                        <asp:HiddenField ID="hfCarID"
                            runat="server"
                            Value='<%# Eval("CarID") %>' />

                        <asp:TextBox ID="txtDate"
                            runat="server"
                            TextMode="Date" />

                        <div class="btn-group">

                            <asp:Button ID="btnCheck"
                                runat="server"
                                Text="Check Availability"
                                CssClass="btn btn-check"
                                CommandName="Check"
                                CommandArgument='<%# Eval("CarID") %>'
                                OnCommand="Car_Command" />

                            <a href='<%# GetDetailsLink(Container.ItemIndex) %>'
                               class="btn btn-details">
                                View Details
                            </a>

                        </div>

                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>

</form>
</body>
</html>