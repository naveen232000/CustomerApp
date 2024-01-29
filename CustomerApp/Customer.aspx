<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="CustomerApp.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <link href="CustomerStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 378px;
        }
        .auto-style3 {
            width: 385px;
        }
        .auto-style4 {
            height: 114px;
        }
        .auto-style5 {
            width: 378px;
            height: 52px;
        }
        .auto-style6 {
            width: 385px;
            height: 52px;
        }
        .auto-style7 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" class="auto-style4"><h1>Customer Details</h1></td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" EnableTheming="True" ErrorMessage="* Name is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtName" EnableTheming="True" ErrorMessage="* Name Should Contain at least 6 characters" ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile Number</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMobile" ErrorMessage="* MobileNumber is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMobile" ErrorMessage="* Invalid Mobile Number" ForeColor="#FF3300" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email Id</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="* Email Id is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="* Invalid Email Id" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPass" ErrorMessage="* Pls Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtPass" ErrorMessage="* Invalid Password" ForeColor="#FF3300" ValueToCompare="pass@123"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                    </td>
                    <td class="auto-style7">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="CusDetl" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
