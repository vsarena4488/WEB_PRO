using System;
using System.Web.UI;

public partial class Admin_AddTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCreateTour_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Admin/Tours.aspx");
        }
    }
}
