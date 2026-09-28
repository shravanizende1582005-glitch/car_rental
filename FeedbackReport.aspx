<%@ Page Title="Feedback Report"
    Language="C#"
    MasterPageFile="admin.master"
    AutoEventWireup="true"
    CodeFile="FeedbackReport.aspx.cs"
    Inherits="FeedbackReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Customer Feedback Report</h2>

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
        Visible="false">

        <Columns>
            <asp:BoundField DataField="FullName" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="CarName" HeaderText="Car" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" />
            <asp:BoundField DataField="Message" HeaderText="Feedback" />
            <asp:BoundField DataField="FeedbackDate" HeaderText="Date" />
        </Columns>

    </asp:GridView>

</asp:Content>