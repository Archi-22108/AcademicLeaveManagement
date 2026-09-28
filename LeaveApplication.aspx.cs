using System;
using System.Web;

namespace AcademicLeaveManagement
{
    public partial class LeaveApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {         
                if (Session["LeaveDate"] != null)
                {
                    lblLeaveDate.Text =
                        Session["LeaveDate"].ToString();
                }
                if (Request.Cookies["RememberedName"] != null)
                {
                    txtEmployeeName.Text =
                        Request.Cookies["RememberedName"].Value;

                    chkRemember.Checked = true;
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["EmployeeName"] =
                txtEmployeeName.Text;
            Session["LeaveType"] =
                ddlLeaveType.SelectedValue;
            Session["Reason"] =
                txtReason.Text;
            if (chkRemember.Checked)
            {
                HttpCookie nameCookie =
                    new HttpCookie("RememberedName");
                nameCookie.Value =
                    txtEmployeeName.Text;
                nameCookie.Expires =
                    DateTime.Now.AddDays(1);
                Response.Cookies.Add(nameCookie);
            }
            lblMessage.Text =
                "<b>Leave application submitted successfully.</b>" +
                "<br/><br/>" +
                "Student Name: " +
                Session["EmployeeName"] +
                "<br/>" +
                "Leave Date: " +
                Session["LeaveDate"] +
                "<br/>" +
                "Leave Type: " +
                Session["LeaveType"] +
                "<br/>" +
                "Reason: " +
                Session["Reason"];
        }
    }
}