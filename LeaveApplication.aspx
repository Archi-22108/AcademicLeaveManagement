<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveApplication.aspx.cs"
    Inherits="AcademicLeaveManagement.LeaveApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Leave Application</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #eef3f8;
            margin: 0;
            padding: 40px;
        }
        .container {
            width: 650px;
            max-width: 100%;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }
        .title {
            text-align: center;
            color: #1f4e79;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 25px;
            padding-bottom: 15px;
            border-bottom: 2px solid #1f4e79;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
            vertical-align: top;
        }
        .label {
            width: 180px;
            font-weight: bold;
        }
        .textbox {
            width: 300px;
            padding: 8px;
            border: 1px solid #aaa;
            border-radius: 5px;
        }
        .dropdown {
            width: 320px;
            padding: 8px;
            border: 1px solid #aaa;
            border-radius: 5px;
        }
        .button {
            background-color: #1f4e79;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            cursor: pointer;
        }
        .message {
            display: block;
            margin-top: 20px;
            padding: 15px;
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            line-height: 1.8;
        }
        .error {
            color: red;
        }

    </style>
</head>
<body>

<form id="form1" runat="server">
    <div class="container">
        <div class="title">
            LEAVE APPLICATION
        </div>

        <table>
            <tr>
                <td class="label">
                    Employee Name:
                </td>

                <td>
                    <asp:TextBox
                        ID="txtEmployeeName"
                        runat="server"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="label">
                    Leave Date:
                </td>
                <td>
                    <asp:Label
                        ID="lblLeaveDate"
                        runat="server">
                    </asp:Label>
                </td>
            </tr>

            <tr>
                <td class="label">
                    Leave Type:
                </td>
                <td>
                    <asp:DropDownList
                        ID="ddlLeaveType"
                        runat="server"
                        CssClass="dropdown">
                        <asp:ListItem
                            Value="">
                            Select Leave Type
                        </asp:ListItem>
                        <asp:ListItem>
                            Casual Leave
                        </asp:ListItem>
                        <asp:ListItem>
                            Sick Leave
                        </asp:ListItem>
                        <asp:ListItem>
                            Emergency Leave
                        </asp:ListItem>

                        <asp:ListItem>
                            Medical Leave
                        </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="label">
                    Reason:
                </td>
                <td>
                    <asp:TextBox
                        ID="txtReason"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="5"
                        Columns="35">
                    </asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="label">
                    Remember Name:
                </td>
                <td>
                    <asp:CheckBox
                        ID="chkRemember"
                        runat="server"
                        Text=" Remember my name" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button
                        ID="btnSubmit"
                        runat="server"
                        Text="Submit Leave"
                        CssClass="button"
                        OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>

        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>

    </div>
</form>
</body>
</html>