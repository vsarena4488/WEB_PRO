<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Offers.aspx");
    }
</script>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Offers</title>
</head>
<body>
    <p>Redirecting to <a href="../User/Offers.aspx">Offers</a>...</p>
</body>
</html>
