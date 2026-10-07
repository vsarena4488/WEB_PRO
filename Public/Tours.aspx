<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("~/User/BrowseTours.aspx");
    }
</script>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Tours</title>
</head>
<body>
    <p>Redirecting to <a href="../User/BrowseTours.aspx">Browse Tours</a>...</p>
</body>
</html>
