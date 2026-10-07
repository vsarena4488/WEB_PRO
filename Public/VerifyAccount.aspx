<%@ Page Title="Verify Your Account" Language="C#" MasterPageFile="~/MasterPages/Auth.Master" AutoEventWireup="true" CodeFile="VerifyAccount.aspx.cs" Inherits="Public_VerifyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-card auth-card-compact">
        <div class="auth-card-header">
            <div class="auth-card-icon" style="background-color: #ECFDF5; color: #10B981;">
                <svg class="icon-svg" viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
            </div>
            <h2 class="auth-card-title">Verify Your Account</h2>
            <p class="auth-card-subtitle">We sent a 6-digit secure code to your email.<br />Please enter it below to continue.</p>
        </div>

        <div class="otp-inputs-row">
            <asp:TextBox ID="otp1" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" Text="4"></asp:TextBox>
            <asp:TextBox ID="otp2" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" Text="8"></asp:TextBox>
            <asp:TextBox ID="otp3" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" Text="1"></asp:TextBox>
            <asp:TextBox ID="otp4" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" placeholder=""></asp:TextBox>
            <asp:TextBox ID="otp5" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" placeholder=""></asp:TextBox>
            <asp:TextBox ID="otp6" runat="server" CssClass="otp-digit js-otp-input" MaxLength="1" placeholder=""></asp:TextBox>
        </div>

        <div style="margin-top: 32px;">
            <asp:Button ID="btnVerify" runat="server" Text="Verify &amp; Proceed" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnVerify_Click" />
        </div>

        <div class="secure-notice">
            <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
            <span>Your connection is securely encrypted.</span>
        </div>
    </div>
</asp:Content>
