<%@ Page Title="Car Report"
    Language="C#"
    MasterPageFile="admin.master"
    AutoEventWireup="true"
    CodeFile="CarReport.aspx.cs"
    Inherits="CarReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Car Report (Category Wise)</h2>

    <div style="margin-bottom:20px;">
        Select Brand :
        <asp:DropDownList ID="ddlBrand"
            runat="server"
            AutoPostBack="true"
            OnSelectedIndexChanged="ddlBrand_SelectedIndexChanged">
        </asp:DropDownList>
    </div>

    <asp:GridView ID="gvReport"
        runat="server"
        AutoGenerateColumns="false"
        Width="100%"
        Visible="false">

        <Columns>
            <asp:BoundField DataField="CarId" HeaderText="Car ID" />
            <asp:BoundField DataField="CarName" HeaderText="Car Name" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" />

            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="imgCar"
                        runat="server"
                        ImageUrl='<%# ResolveUrl(Eval("CarImage").ToString()) %>'
                        Width="100px"
                        Height="95px" />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</asp:Content>