using System;
using System.Web.UI;

public partial class Admin_AddSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCreateSchedule_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Admin/TourSchedules.aspx");
        }
    }
}
