<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/MasterPages/Auth.Master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Public_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-card auth-card-compact">
        <div class="auth-card-header">
            <div class="auth-card-icon">
                <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
            </div>
            <h2 class="auth-card-title">Change Password</h2>
            <p class="auth-card-subtitle">Update your password to keep your account secure.</p>
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtNewPassword.ClientID %>">New Password</label>
            <div class="input-with-icon">
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter new password (min. 6 chars)"></asp:TextBox>
                <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtNewPassword.ClientID %>', this)" aria-label="Toggle password">
                    <i class="far fa-eye"></i>
                </button>
            </div>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ValidationExpression="^.{6,}$" ErrorMessage="Password must be at least 6 characters" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtConfirmNewPassword.ClientID %>">Confirm New Password</label>
            <div class="input-with-icon">
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm new password"></asp:TextBox>
                <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtConfirmNewPassword.ClientID %>', this)" aria-label="Toggle password">
                    <i class="far fa-eye"></i>
                </button>
            </div>
            <asp:RequiredFieldValidator ID="rfvConfirmNewPassword" runat="server" ControlToValidate="txtConfirmNewPassword" ErrorMessage="Confirm your new password" CssClass="val-error" Display="Dynamic" />
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmNewPassword" ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" />
        </div>

        <div style="margin-top: 28px;">
            <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnUpdatePassword_Click" />
        </div>
    </div>
</asp:Content>
