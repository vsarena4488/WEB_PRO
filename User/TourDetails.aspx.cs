using System;
using System.Web.UI;

public partial class User_TourDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Booking.aspx");
    }
}
