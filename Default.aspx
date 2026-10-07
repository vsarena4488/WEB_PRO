<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("~/Public/Home.aspx");
    }
</script>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Redirecting...</title>
</head>
<body>
    <p>Redirecting to <a href="Public/Home.aspx">Home</a>...</p>
</body>
</html>
