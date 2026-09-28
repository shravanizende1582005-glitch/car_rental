<%@ Page Title="Admin Dashboard"
    Language="C#"
    MasterPageFile="~/admin.master"
    AutoEventWireup="true"
    CodeFile="adminpanel.aspx.cs"
    Inherits="adminpanel" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2 style="margin-bottom:25px; color:#1f2937;">📊 Dashboard Overview</h2>

    <div style="display:flex; gap:25px; flex-wrap:wrap;">

        <!-- Total Cars -->
        <div style="
            background:white;
            padding:25px;
            width:250px;
            border-radius:12px;
            box-shadow:0 8px 20px rgba(0,0,0,0.08);
            transition:0.3s;">
            <h3 style="color:#2563eb;">🚘 Total Cars</h3>
            <asp:Label ID="lblCars" runat="server"
                style="font-size:30px; font-weight:bold; color:#111827;"
                Text="0"></asp:Label>
        </div>

        <!-- Total Bookings -->
        <div style="
            background:white;
            padding:25px;
            width:250px;
            border-radius:12px;
            box-shadow:0 8px 20px rgba(0,0,0,0.08);
            transition:0.3s;">
            <h3 style="color:#10b981;">📅 Total Bookings</h3>
            <asp:Label ID="lblBookings" runat="server"
                style="font-size:30px; font-weight:bold; color:#111827;"
                Text="0"></asp:Label>
        </div>

        <!-- Total Users -->
        <div style="
            background:white;
            padding:25px;
            width:250px;
            border-radius:12px;
            box-shadow:0 8px 20px rgba(0,0,0,0.08);
            transition:0.3s;">
            <h3 style="color:#f59e0b;">👤 Total Users</h3>
            <asp:Label ID="lblUsers" runat="server"
                style="font-size:30px; font-weight:bold; color:#111827;"
                Text="0"></asp:Label>
        </div>

    </div>

</asp:Content>
