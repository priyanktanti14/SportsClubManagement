<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="SportsClubManagement.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* General Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1c1c1c, #2b2b2b);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            color: #ffffff;
        }

        /* Login Form Container */
        .loginform {
            background: rgba(0, 0, 0, 0.85);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.7);
            width: 100%;
            max-width: 500px;
            animation: fadeIn 1s ease-in-out;
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Form Header */
        .loginform h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1.5px;
        }

        /* Table Styling */
        .loginform table {
            width: 100%;
            border-collapse: collapse;
        }

        /* Labels */
        .loginform td.auto-style11 {
            text-align: right;
            font-weight: bold;
            color: #cccccc;
            padding-right: 15px;
        }

        /* Input Fields */
        .loginform input[type="text"],
        .loginform input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #4e4e4e;
            border-radius: 10px;
            background: #1f1c2c;
            color: #ffffff;
            font-size: 14px;
            transition: all 0.3s ease-in-out;
        }

        .loginform input:focus {
            border-color: #00c6ff;
            box-shadow: 0 0 8px #00c6ff;
            outline: none;
        }

        /* Buttons */
        .loginform input[type="submit"],
        .loginform button {
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }

        .loginform #btnLogin {
            background: linear-gradient(135deg, #00c6ff, #0072ff);
            color: #ffffff;
        }

            .loginform #btnLogin:hover {
                background: linear-gradient(135deg, #0072ff, #00c6ff);
                transform: scale(1.05);
            }

        /* Sign-Up Link */
        .loginform a {
            color: #00c6ff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

            .loginform a:hover {
                color: #ffffff;
                text-decoration: underline;
            }

        /* Table Alignment */
        .loginform td {
            padding: 10px;
            text-align: center;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .loginform {
                padding: 20px;
            }

                .loginform table td {
                    display: block;
                    width: 100%;
                }

                .loginform td.auto-style11 {
                    text-align: left;
                    padding: 5px 0;
                }

                .loginform input {
                    margin-bottom: 10px;
                }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="loginform">

            <h2>LogIn Form</h2>

            <table align="center" cellpadding="2" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right; width: 347px;">Email &nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtEmail" runat="server" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right; width: 347px;">Password&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPassword" runat="server" Width="244px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: center" class="auto-style7" colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style7" colspan="2">Don't have an account ? <a href="https://localhost:44373/RegistrationForm.aspx">sign up</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
