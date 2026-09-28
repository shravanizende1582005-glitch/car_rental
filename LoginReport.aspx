<%@ Page Title="Login Report"
    Language="C#"
    MasterPageFile="admin.master"
    AutoEventWireup="true"
    CodeFile="LoginReport.aspx.cs"
    Inherits="LoginReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Login Report</h2>

    <div style="margin-bottom:20px;">
        From :
        <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" />

        To :
        <asp:TextBox ID="txtTo" runat="server" TextMode="Date" />

        <asp:Button ID="btnSearch"
            runat="server"
            Text="Search"
            OnClick="btnSearch_Click"
            CssClass="btn" />
    </div>

    <asp:GridView ID="gvReport"
        runat="server"
        AutoGenerateColumns="false"
        CssClass="table"
        Width="100%"
        Visible="false">

        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="User ID" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="LoginDate" HeaderText="Login Date" />
        </Columns>

    </asp:GridView>

</asp:Content>