using System;
using System.Web.UI;

public partial class Public_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var authMaster = Master as MasterPages_Auth;
        if (authMaster != null)
        {
            authMaster.BackUrl = ResolveUrl("~/Public/Home.aspx");
        }

        if (Request.QueryString["registered"] == "1")
        {
            pnlRegistered.Visible = true;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string email = txtEmail.Text.Trim();
            if (email.IndexOf("admin", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                Response.Redirect("~/Admin/Dashboard.aspx");
            }
            else
            {
                Response.Redirect("~/User/Dashboard.aspx");
            }
        }
    }
}
