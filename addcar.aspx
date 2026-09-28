<%@ Page Title="Add Car"
    Language="C#"
    MasterPageFile="~/admin.master"
    AutoEventWireup="true"
    CodeFile="addcar.aspx.cs"
    Inherits="addcar" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Add New Car</h2>

    <table cellpadding="8">
        <tr>
            <td>Car Name</td>
            <td>
                <asp:TextBox ID="txtCarName" runat="server" />
            </td>
        </tr>

        <tr>
            <td>Brand</td>
            <td>
                <asp:TextBox ID="txtBrand" runat="server" />
            </td>
        </tr>

   

        <tr>
            <td>Car Image</td>
            <td>
                <asp:FileUpload ID="fuImage" runat="server" />
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSave" runat="server"
                    Text="Save Car"
                    OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>

    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>

</asp:Content>
