using System;
using System.Web.UI;

public partial class User_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnConfirmPay_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/User/Payment.aspx");
        }
    }
}
