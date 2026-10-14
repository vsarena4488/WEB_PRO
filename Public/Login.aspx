<%@ Page Title="Welcome back" Language="C#" MasterPageFile="~/MasterPages/Auth.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Public_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-card auth-card-compact">
        <div class="auth-card-header">
            <h2 class="auth-card-title">Welcome back</h2>
            <p class="auth-card-subtitle">Please enter your details to sign in to your account.</p>
        </div>

        <asp:Panel ID="pnlRegistered" runat="server" Visible="false" CssClass="badge badge-confirmed" style="padding:10px 14px; margin-bottom:16px; width:100%; justify-content:center;">
            Account created successfully! Please log in.
        </asp:Panel>
        <asp:Label ID="lblLoginError" runat="server" CssClass="val-error" EnableViewState="false" style="display:block; margin-bottom:12px; text-align:center; font-weight:600;"></asp:Label>

        <div class="form-group">
            <label class="form-label" for="<%= txtEmail.ClientID %>">Email or Username</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email or Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address or username is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+@([\w-]+\.)+[\w-]{2,4}|[a-zA-Z0-9_\.]{3,30})$" ErrorMessage="Enter a valid email or username" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtPassword.ClientID %>">Password</label>
            <div class="input-with-icon">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Your Password"></asp:TextBox>
                <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtPassword.ClientID %>', this)" aria-label="Toggle password">
                    <i class="far fa-eye"></i>
                </button>
            </div>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" CssClass="val-error" Display="Dynamic" />
        </div>

        <div style="text-align: right; margin-bottom: 24px;">
            <a href='<%= ResolveUrl("~/Public/ForgotPassword.aspx") %>' class="text-xs font-medium text-muted" style="text-decoration:none;">Forgot password?</a>
        </div>

        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnLogin_Click" />
        </div>

        <p class="text-center" style="margin-top: 24px; font-size: 14px; color: var(--text-muted);">
            Don't have an account? <a href='<%= ResolveUrl("~/Public/Register.aspx") %>' class="font-semibold text-primary">Registration</a>
        </p>
    </div>
</asp:Content>
