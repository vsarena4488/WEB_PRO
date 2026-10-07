using System;
using System.IO;
using System.Linq;
using System.Web.UI;

public partial class MasterPages_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public string IsActive(params string[] pageNames)
    {
        string currentPage = Path.GetFileName(Request.Path);
        return pageNames.Any(p => string.Equals(currentPage, p, StringComparison.OrdinalIgnoreCase)) ? "active" : "";
    }
}
