using System;

namespace AcademicLeaveManagement
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void calAcademic_SelectionChanged(
            object sender,
            EventArgs e)
        {
            string selectedDate =
                calAcademic.SelectedDate.ToString("dd-MM-yyyy");

            lblSelectedDate.Text =
                "Selected Date: " + selectedDate;

            Session["LeaveDate"] =
                selectedDate;
        }

        protected void btnApplyLeave_Click(
            object sender,
            EventArgs e)
        {
            if (Session["LeaveDate"] != null)
            {
                Response.Redirect("LeaveApplication.aspx");
            }
            else
            {
                lblSelectedDate.Text =
                    "Please select a date first.";
            }
        }
    }
}