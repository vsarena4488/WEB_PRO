using System;
using System.Web.UI;

public partial class Public_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var authMaster = Master as MasterPages_Auth;
        if (authMaster != null)
        {
            authMaster.BackUrl = ResolveUrl("~/Public/VerifyAccount.aspx");
        }
    }

    protected void btnUpdatePassword_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Public/Login.aspx");
        }
    }
}
