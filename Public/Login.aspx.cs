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

        // Show registration success banner when redirected after registration
        if (Request.QueryString["registered"] == "1")
        {
            pnlRegistered.Visible = true;
        }

        // Ensure we don't overwrite placeholder values on postbacks.
        // Only set/clear initial values on first load.
        if (!IsPostBack)
        {
            // Keep inputs empty so client-side placeholders are visible
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
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
