using System;
using System.Web.UI;

public partial class User_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnPayNow_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/User/MyBookings.aspx?booked=1");
        }
    }
}
