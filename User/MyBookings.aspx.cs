using System;
using System.Web.UI;

public partial class User_MyBookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["booked"] == "1")
        {
            pnlBookingSuccess.Visible = true;
        }
    }
}
