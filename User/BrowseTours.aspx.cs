using System;
using System.Web.UI;

public partial class User_BrowseTours : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["q"] != null)
            {
                txtSearch.Text = Request.QueryString["q"];
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
    }

    protected void Filter_Changed(object sender, EventArgs e)
    {
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtSearch.Text = "";
        ddlDestination.SelectedIndex = 0;
        ddlPrice.SelectedIndex = 0;
        ddlDuration.SelectedIndex = 0;
        ddlCategory.SelectedIndex = 0;
    }
}
