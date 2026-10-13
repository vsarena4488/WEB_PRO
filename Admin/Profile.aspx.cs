using System;
using System.Web.UI;

public partial class Admin_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlAdminSuccess.Visible = false;
        }
    }

    protected void btnSaveAdminInfo_Click(object sender, EventArgs e)
    {
        Page.Validate("vgAdminProfile");
        if (Page.IsValid)
        {
            lblSuccessMessage.Text = "Administrator profile details updated successfully!";
            pnlAdminSuccess.Visible = true;
        }
    }

    protected void btnUpdateAdminPassword_Click(object sender, EventArgs e)
    {
        Page.Validate("vgAdminSecurity");
        if (Page.IsValid)
        {
            lblSuccessMessage.Text = "Security password updated successfully!";
            pnlAdminSuccess.Visible = true;
            txtAdminCurrentPass.Text = "";
            txtAdminNewPass.Text = "";
            txtAdminConfirmPass.Text = "";
        }
    }
}
