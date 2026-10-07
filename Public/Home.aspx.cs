using System;
using System.Web.UI;

public partial class Public_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnHeroSearch_Click(object sender, EventArgs e)
    {
        string destination = txtSearchDestination.Text.Trim();
        Response.Redirect("~/User/BrowseTours.aspx?q=" + Server.UrlEncode(destination));
    }

    protected void btnSendMessage_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            pnlContactSuccess.Visible = true;
            txtContactName.Text = "";
            txtContactEmail.Text = "";
            txtContactMessage.Text = "";
        }
    }
}
