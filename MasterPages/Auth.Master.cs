using System;
using System.Web.UI;

public partial class MasterPages_Auth : System.Web.UI.MasterPage
{
    public string BackUrl
    {
        get { return lnkBack.NavigateUrl; }
        set { lnkBack.NavigateUrl = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}
