<%@ Page Title="Contact Report"
    Language="C#"
    MasterPageFile="admin.master"
    AutoEventWireup="true"
    CodeFile="ContactReport.aspx.cs"
    Inherits="ContactReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Contact Messages Report</h2>

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
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
        </Columns>

    </asp:GridView>

</asp:Content>