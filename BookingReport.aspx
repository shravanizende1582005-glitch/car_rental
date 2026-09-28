<%@ Page Title="Booking Report"
    Language="C#"
    MasterPageFile="admin.master"
    AutoEventWireup="true"
    CodeFile="BookingReport.aspx.cs"
    Inherits="BookingReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Car Booking Report</h2>

    <div style="margin-bottom:20px;">
        From :
        <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" />

        To :
        <asp:TextBox ID="txtTo" runat="server" TextMode="Date" />

        <asp:Button ID="btnSearch"
            runat="server"
            Text="Search"
            OnClick="btnSearch_Click" />
    </div>

    <asp:GridView ID="gvReport"
        runat="server"
        AutoGenerateColumns="false"
        Width="100%"
        CssClass="table"
        Visible="false">

        <Columns>
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="CarName" HeaderText="Car" />
            <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" />
            <asp:BoundField DataField="PickupLocation" HeaderText="Location" />
            <asp:BoundField DataField="NumberOfDays" HeaderText="Days" />
        </Columns>

    </asp:GridView>

</asp:Content>