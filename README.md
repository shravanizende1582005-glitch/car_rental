 Car Rental Management System

A web-based Car Rental Management System  developed using  ASP.NET Web Forms, C#, and Microsoft SQL Server**. The application allows users to register and log in, browse available cars, view car details, make bookings, complete the payment workflow, and submit feedback. An admin module is included for managing cars and viewing system reports.

Project Overview

The Car Rental Management System is designed to simplify vehicle rental operations through a web-based application.

Customer-side functionality
- User registration
- User login
- Browse available cars
- View individual car details
- Book a car
- Payment workflow
- Booking confirmation
- Submit feedback
- Contact the rental service

 Admin-side functionality
- Admin panel
- Add/manage car information
- View booking reports
- View car reports
- View feedback reports
- View contact reports


Main Features

User Module
1. Registration– New users can create an account.
2. Login – Registered users can access the application.
3. Car Listing – Users can browse available vehicles.
4. Car Details – Individual pages provide vehicle information.
5. Car Booking – Users can submit booking information.
6. Payment – Payment page is included in the booking workflow.
7. Booking Confirmation – Users can view final booking confirmation.
8. Feedback – Users can submit feedback.
9. Contact – Users can send contact messages.

Admin Module
1. Admin Dashboard
2. Add Car
3. Car Management
4. Booking Reports
5. Car Reports
6. Feedback Reports
7. Contact Reports

---

## Technologies Used

| Category | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript |
| Web Framework | ASP.NET Web Forms |
| Programming Language | C# |
| Database | Microsoft SQL Server |
| Database Connectivity | ADO.NET |
| IDE | Microsoft Visual Studio |
| Version Control | Git |
| Repository Hosting | GitHub |

---

## Project Structure

car_rental/
│
├── Account/
├── App_Data/
├── image/
├── Scripts/
├── Styles/
├── videos/
│
├── About.aspx
├── AboutUs.aspx
├── home.aspx
├── cars.aspx
│
├── Login.aspx
├── Register.aspx
│
├── BookCar.aspx
├── payment.aspx
├── FinalConfirmation.aspx
│
├── Contact.aspx
├── feedback.aspx
│
├── addcar.aspx
├── adminpanel.aspx
│
├── BookingReport.aspx
├── CarReport.aspx
├── FeedbackReport.aspx
├── ContactReport.aspx
│
├── Site1.Master
├── admin.master
├── Global.asax
│
├── Web.config
├── Web.Debug.config
├── Web.Release.config
├── car_rental.csproj
├── .gitignore
└── README.md
```

---

# Requirements

Before running the project, install:

- Windows
- Visual Studio with ASP.NET/.NET Framework support
- .NET Framework 4.x
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- IIS Express or Visual Studio Development Server

---

# How to Run the Project

## 1. Clone the Repository

Open Command Prompt or Git Bash:


git clone https://github.com/shravanizende1582005-glitch/car-rental-system.git

Move into the project directory:

cd car-rental-system

> Replace `YOUR-GITHUB-USERNAME` with the GitHub username that owns the repository.

---

## 2. Open the Project

Open the solution file:

car_rental.sln

using **Microsoft Visual Studio**.

You can also open Visual Studio and select:

File → Open → Project/Solution

Then select `car_rental.sln`.

---

# Database Setup

This project uses Microsoft SQL Server.

## Database Name

car_rentaldb

## Create the Database

Open **SQL Server Management Studio (SSMS)** and create:

CREATE DATABASE car_rentaldb;

If a database SQL script is provided with the project, execute that script after creating/opening the database so that the required tables and data are available.

---

# Configure Database Connection

The database connection is configured in:

Web.config

Use your own SQL Server instance name.

Example:

<connectionStrings>
    <add name="car_rentalDBConnection"
         connectionString="Data Source=YOUR_SERVER_NAME\SQLEXPRESS;Initial Catalog=car_rentaldb;Integrated Security=True"
         providerName="System.Data.SqlClient" />
</connectionStrings>

For example, if your SQL Server instance is:

DESKTOP-ABC123\SQLEXPRESS

the connection string becomes:

<connectionStrings>
    <add name="car_rentalDBConnection"
         connectionString="Data Source=DESKTOP-ABC123\SQLEXPRESS;Initial Catalog=car_rentaldb;Integrated Security=True"
         providerName="System.Data.SqlClient" />
</connectionStrings>

**Important:** Do not publish database passwords, API keys, or other private credentials to a public GitHub repository.

---

# Build and Run

After configuring the database:

### Step 1 – Build

In Visual Studio:

Build → Build Solution

or press:

Ctrl + Shift + B

### Step 2 – Run

Press:

F5

or click:

IIS Express

The application should open in your browser.

---

# Application Flow

User
  │
  ▼
Registration / Login
  │
  ▼
Browse Cars
  │
  ▼
View Car Details
  │
  ▼
Book Car
  │
  ▼
Payment
  │
  ▼
Booking Confirmation
  │
  ▼
Feedback / Contact

---

# Vehicle Details

The project contains separate pages for multiple vehicles, including examples such as:

- Hyundai Creta
- Toyota Fortuner
- Kia
- Tata Nexon
- Mahindra Scorpio
- Mahindra Thar
- Maruti Swift
- Maruti WagonR
- Skoda

---

# Reports

The admin section includes report pages for:

- Booking information
- Car information
- Feedback
- Contact messages

---

# Learning Outcomes

This project provided practical experience with:

- ASP.NET Web Forms
- C#
- HTML
- CSS
- JavaScript
- ADO.NET
- Microsoft SQL Server
- Database connectivity
- CRUD operations
- Form handling and validation
- Login and registration
- Session management
- Master Pages
- Admin panel development
- Report pages
- Git and GitHub
- Version control

---

# Future Enhancements

Possible future improvements include:

- Online payment gateway integration
- Email booking confirmation
- SMS notifications
- Car availability calendar
- Advanced car search and filtering
- Customer booking history
- Booking cancellation
- Online refund functionality
- Improved responsive/mobile UI
- REST API integration
- Cloud deployment
- Enhanced authentication and authorization

---

# Screenshots

Screenshots can be added to the repository using a `screenshots` folder:
screenshots/
├── home.png
├── cars.png
├── car-details.png
├── booking.png
├── payment.png
└── admin-dashboard.png

Then add them to this README using:

markdown
![Home Page](screenshots/home.png)
![Cars Page](screenshots/cars.png)
![Car Details](screenshots/car-details.png)
![Booking Page](screenshots/booking.png)
![Payment Page](screenshots/payment.png)
![Admin Dashboard](screenshots/admin-dashboard.png)

---

# Author

Shravani Ajay Zende

BCA Graduate | Aspiring Software Developer

- GitHub: https://github.com/shravanizende1582005-glitch
- LinkedIn:  www.linkedin.com/in/shravani-zende-b28a80389
- Email: shravanizende1582005@gmail.com

> Replace the placeholder GitHub, LinkedIn, and email values with your actual links before publishing the repository.

---

# Project Type

**Academic / Portfolio Project**

This project was developed to demonstrate practical knowledge of web application development using ASP.NET Web Forms, C#, and Microsoft SQL Server.

---

# License

This project is an academic and portfolio project created for learning and demonstration purposes.
