using System;
using System.Web.UI;

public partial class Admin_AddOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCreateOffer_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            Response.Redirect("~/Admin/Offers.aspx");
        }
    }
}
