<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="AcademicLeaveManagement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Academic Calendar</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #eef3f8;
            margin: 0;
            padding: 40px;
        }
        .container {
            width: 650px;
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
        .calendar-box {
            text-align: center;
            margin-top: 20px;
        }
        .date-message {
            display: block;
            margin: 20px;
            font-size: 16px;
            font-weight: bold;
            color: #1f4e79;
        }
        .button {
            background-color: #1f4e79;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
        }
        .button:hover {
            background-color: #163b5c;
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <div class="container">
        <div class="title">
            ACADEMIC CALENDAR
        </div>
        <div class="calendar-box">

            <asp:Calendar
                ID="calAcademic"
                runat="server"
                OnSelectionChanged="calAcademic_SelectionChanged">
                <SelectedDayStyle
                    BackColor="#1f4e79"
                    ForeColor="White"
                    Font-Bold="True" />
                <TitleStyle
                    BackColor="#1f4e79"
                    ForeColor="White"
                    Font-Bold="True" />
                <TodayDayStyle
                    BackColor="#d9eaf7"
                    ForeColor="Black" />
            </asp:Calendar>

            <asp:Label
                ID="lblSelectedDate"
                runat="server"
                CssClass="date-message"
                Text="[Select a date]">
            </asp:Label>

            <asp:Button
                ID="btnApplyLeave"
                runat="server"
                Text="Apply Leave"
                CssClass="button"
                OnClick="btnApplyLeave_Click" />

        </div>
    </div>
</form>
</body>

</html>