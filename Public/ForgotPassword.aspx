<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPages/Auth.Master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Public_ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-card auth-card-compact">
        <div class="auth-card-header">
            <div class="auth-card-icon">
                <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
            </div>
            <h2 class="auth-card-title">Forgot Password?</h2>
            <p class="auth-card-subtitle">No worries! Enter your email address below and we'll send you a reset link.</p>
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your registered email address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Enter a valid email" CssClass="val-error" Display="Dynamic" />
        </div>

        <div style="margin-top: 24px;">
            <asp:Button ID="btnSendReset" runat="server" Text="Send Reset Link" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnSendReset_Click" />
        </div>

        <p class="text-center" style="margin-top: 24px; font-size: 14px; color: var(--text-muted);">
            Remember your password? <a href='<%= ResolveUrl("~/Public/Login.aspx") %>' class="font-semibold text-primary">Log in</a>
        </p>
    </div>
</asp:Content>
