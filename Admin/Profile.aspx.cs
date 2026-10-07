using System;
using System.Web.UI;

public partial class Admin_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSaveAdminInfo_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            pnlAdminSuccess.Visible = true;
        }
    }

    protected void btnUpdateAdminPassword_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            pnlAdminSuccess.Visible = true;
            txtAdminNewPass.Text = "";
            txtAdminConfirmPass.Text = "";
        }
    }
}
