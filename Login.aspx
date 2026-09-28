<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Login.aspx.cs"
    Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login | Car Rental</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(120deg, #1d2671, #c33764);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: #fff;
            width: 380px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-box {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-login:hover {
            background: #0056b3;
        }

        .msg {
            margin-top: 10px;
            font-size: 14px;
        }

        .register-link {
            margin-top: 15px;
            display: block;
            font-size: 14px;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>User Login</h2>

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="input-box"
                Placeholder="Email Address" />

            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="input-box"
                TextMode="Password"
                Placeholder="Password" />

            <asp:Button ID="btnLogin" runat="server"
                Text="Login"
                CssClass="btn-login"
                OnClick="btnLogin_Click" />

            <asp:Label ID="lblMsg" runat="server"
                CssClass="msg" />

            <span class="register-link">
                Don’t have an account?
                <a href="Register.aspx">Register</a>
            </span>
        </div>
    </form>
</body>
</html>
