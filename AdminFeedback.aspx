<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="AdminFeedback.aspx.cs"
    Inherits="AdminFeedback" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Admin Feedback Panel</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .header {
            background: linear-gradient(135deg,#343a40,#212529);
            color: white;
            padding: 25px;
            text-align: center;
            border-radius: 0 0 30px 30px;
        }

        .card-box {
            background: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            margin-top: 30px;
        }

        .gridview th {
            background: #343a40;
            color: white;
            text-align: center;
        }

        .gridview td {
            text-align: center;
        }

        .btn-delete {
            background: #dc3545;
            color: white;
            border: none;
            padding: 6px 15px;
            border-radius: 6px;
        }

        .btn-delete:hover {
            background: #bb2d3b;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h2>🚗 Admin Feedback Dashboard</h2>
        <p>Customer Reviews & Ratings</p>
    </div>

    <div class="container">

        <div class="card-box">

            <asp:GridView ID="GridView1"
                runat="server"
                CssClass="table table-bordered gridview"
                AutoGenerateColumns="False"
                DataKeyNames="FeedbackID"
                OnRowDeleting="GridView1_RowDeleting">

                <Columns>

                    <asp:BoundField DataField="FeedbackID" HeaderText="ID" />

                    <asp:BoundField DataField="FullName" HeaderText="Name" />

                    <asp:BoundField DataField="Email" HeaderText="Email" />

                    <asp:BoundField DataField="CarName" HeaderText="Car" />

                    <asp:BoundField DataField="Rating" HeaderText="Rating" />

                    <asp:BoundField DataField="Message" HeaderText="Feedback" />

                    <asp:BoundField DataField="FeedbackDate"
                        HeaderText="Date"
                        DataFormatString="{0:dd MMM yyyy}" />

                    <asp:CommandField ShowDeleteButton="True"
                        DeleteText="Delete"
                        ControlStyle-CssClass="btn-delete" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</form>

</body>
</html>
