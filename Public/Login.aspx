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

        <div class="form-group">
            <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="vsarena753@rku.ac.in" Text="vsarena753@rku.ac.in"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Enter a valid email" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtPassword.ClientID %>">Password</label>
            <div class="input-with-icon">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••" Text="password123"></asp:TextBox>
                <button type="button" class="input-icon-right js-toggle-password" data-target="<%= txtPassword.ClientID %>" aria-label="Toggle password">
                    <svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg>
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
