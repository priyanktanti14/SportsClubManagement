<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="SportsClubManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

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

        /* Form Container */
        .registration-form {
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
        .registration-form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
            font-size: 26px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1.5px;
        }

        /* Table Styling */
        .registration-form table {
            width: 100%;
            border-collapse: collapse;
        }

        /* Labels */
        .registration-form td.auto-style11 {
            text-align: right;
            font-weight: bold;
            color: #cccccc;
            padding-right: 15px;
        }

        /* Input Fields */
        .registration-form input[type="text"],
        .registration-form input[type="date"],
        .registration-form input[type="email"],
        .registration-form input[type="text"],
        .registration-form input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #4e4e4e;
            border-radius: 10px;
            background: #1f1c2c;
            color: #ffffff;
            font-size: 14px;
            transition: all 0.3s ease-in-out;
        }

        .registration-form input:focus {
            border-color: #00c6ff;
            box-shadow: 0 0 8px #00c6ff;
            outline: none;
        }

        /* Radio Buttons */
        .registration-form .auto-style3 {
            color: #ffffff;
            margin-left: 10px;
            font-size: 14px;
        }

        /* Buttons */
        .registration-form input[type="submit"],
        .registration-form input[type="button"] {
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }

        #btnSubmit {
            background: linear-gradient(135deg, #00c6ff, #0072ff);
            color: #ffffff;
        }

            #btnSubmit:hover {
                background: linear-gradient(135deg, #0072ff, #00c6ff);
                transform: scale(1.05);
            }

        #btnReset {
            background: linear-gradient(135deg, #ff5f6d, #ffc371);
            color: #ffffff;
        }

            #btnReset:hover {
                background: linear-gradient(135deg, #ffc371, #ff5f6d);
                transform: scale(1.05);
            }

        /* Table Alignment */
        .registration-form td {
            padding: 10px;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .registration-form {
                padding: 20px;
            }

                .registration-form td.auto-style11 {
                    text-align: left;
                    padding: 5px 0;
                }

                .registration-form table td {
                    display: block;
                    width: 100%;
                }

                .registration-form input {
                    margin-bottom: 10px;
                }
        }

        /* Sign-Up Link */
        .registration-form a {
            color: #00c6ff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

            .registration-form a:hover {
                color: #ffffff;
                text-decoration: underline;
            }

        }
        /* Message Box Styling */
        .messageBox {
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            text-align: center;
            font-weight: bold;
            font-size: 16px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }

        .successMessage {
            background-color: #4CAF50;
            color: white;
            border: 2px solid #45a049;
        }

        .errorMessage {
            background-color: #f44336;
            color: white;
            border: 2px solid #d32f2f;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="registration-form">
            <h2>Registretion Form</h2>

            <table align="center" cellpadding="2" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">First Name &nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtFname" runat="server" Width="244px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Last Name&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtLname" runat="server" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Date of Birth&nbsp;&nbsp; : </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtDob" runat="server" TextMode="Date" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Gender&nbsp;&nbsp;&nbsp; :</td>
                    <td style="text-align: left" class="auto-style12">
                        <asp:RadioButtonList ID="rblGender" runat="server" CssClass="auto-style3" RepeatDirection="Horizontal" Width="253px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Phone&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPhone" runat="server" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Email&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Password&nbsp;&nbsp;&nbsp; : </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right">Re-enter Password&nbsp;&nbsp;&nbsp; : </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style7" colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style7" colspan="2">
                        Already have an account ? <a href="https://localhost:44373/LogInForm.aspx">sign in</a>
                    </td>
                </tr>

            </table>

        </div>
    </form>
   
</body>
</html>
