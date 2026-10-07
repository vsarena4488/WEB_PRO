using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var authMaster = Master as MasterPages_Auth;
        if (authMaster != null)
        {
            authMaster.BackUrl = ResolveUrl("~/Public/Home.aspx");
        }
    }

    protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = chkTerms.Checked;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Public/Login.aspx?registered=1");
        }
    }
}
