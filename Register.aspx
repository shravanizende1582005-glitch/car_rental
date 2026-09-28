<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Register.aspx.cs"
    Inherits="Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Registration | DriveEasy</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #1d2671, #c33764);
            height: 100vh;
        }

        .register-card {
            margin-top: 80px;
            border-radius: 15px;
        }
    </style>
</head>
<body>

<form id="form1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card register-card shadow">
                    <div class="card-body">

                        <h3 class="text-center mb-4">Create Account</h3>

                        <asp:Label ID="lblMsg" runat="server"></asp:Label>

                        <div class="form-group">
                            <asp:TextBox ID="txtName" runat="server"
                                CssClass="form-control"
                                placeholder="Full Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" runat="server"
                                CssClass="form-control"
                                placeholder="Email"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtMobile" runat="server"
                                CssClass="form-control"
                                placeholder="Mobile Number"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtPassword" runat="server"
                                TextMode="Password"
                                CssClass="form-control"
                                placeholder="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtConfirm" runat="server"
                                TextMode="Password"
                                CssClass="form-control"
                                placeholder="Confirm Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnRegister" runat="server"
                            Text="Register"
                            CssClass="btn btn-primary btn-block"
                            OnClick="btnRegister_Click" />

                        <p class="text-center mt-3">
                            Already have an account?
                            <a href="Login.aspx">Login</a>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
