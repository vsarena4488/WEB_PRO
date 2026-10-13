using System;
using System.Web.UI;

public partial class User_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSaveProfile_Click(object sender, EventArgs e)
    {
        Page.Validate("vgProfile");
        if (Page.IsValid)
        {
            pnlProfileSuccess.Visible = true;
        }
    }

    protected void btnSavePassword_Click(object sender, EventArgs e)
    {
        Page.Validate("vgPassword");
        if (Page.IsValid)
        {
            pnlProfileSuccess.Visible = true;
            txtNewPassword.Text = "";
            txtConfirmPassword.Text = "";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Dashboard.aspx");
    }
}
