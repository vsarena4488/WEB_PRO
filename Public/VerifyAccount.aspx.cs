using System;
using System.Web.UI;

public partial class Public_VerifyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var authMaster = Master as MasterPages_Auth;
        if (authMaster != null)
        {
            authMaster.BackUrl = ResolveUrl("~/Public/ForgotPassword.aspx");
        }
    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Public/ChangePassword.aspx");
    }
}
