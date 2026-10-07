<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    My Profile
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Profile Header Card -->
    <div class="profile-user-card">
        <div class="profile-avatar-big">AK</div>
        <div>
            <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 2px;">Arjun Kothivar</h2>
            <div style="font-size: 13px; color: var(--text-muted);">Traveler Account</div>
        </div>
    </div>

    <!-- Tab Strip -->
    <div style="margin-bottom: 24px;">
        <button type="button" class="btn btn-primary" style="padding: 8px 18px;">Personal Information</button>
    </div>

    <asp:Panel ID="pnlProfileSuccess" runat="server" Visible="false" CssClass="badge badge-confirmed" style="padding: 12px 18px; margin-bottom: 20px; width: 100%;">
        Profile updated successfully!
    </asp:Panel>

    <!-- Section 1: Update Profile Details -->
    <div class="card" style="margin-bottom: 32px; padding: 28px;">
        <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 20px;">Update Profile Details</h3>

        <asp:ValidationSummary ID="vsProfile" runat="server" ValidationGroup="vgProfile" CssClass="validation-summary-errors" HeaderText="Please correct the following errors:" />

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text="Arjun"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Last Name</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text="Kothivar"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="akothivar063@rku.ac.in"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgProfile" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Valid email required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 9328206703"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Date of Birth</label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" Text="22 Jul 2006"></asp:TextBox>
                    <span class="input-icon-right">
                        <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                    </span>
                </div>
            </div>
            <div class="form-col form-group">
                <label class="form-label">City / Location</label>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" Text="Rajkot, Gujarat"></asp:TextBox>
            </div>
        </div>

        <div style="display: flex; justify-content: flex-end; gap: 12px; margin-top: 14px;">
            <asp:Button ID="btnCancelProfile" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
            <asp:Button ID="btnSaveProfile" runat="server" Text="Save Changes" CssClass="btn btn-primary" ValidationGroup="vgProfile" OnClick="btnSaveProfile_Click" />
        </div>
    </div>

    <!-- Section 2: Update Password -->
    <div class="card" style="padding: 28px;">
        <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 20px;">Update Password</h3>

        <asp:ValidationSummary ID="vsPassword" runat="server" ValidationGroup="vgPassword" CssClass="validation-summary-errors" HeaderText="Please correct the following errors:" />

        <div class="form-group">
            <label class="form-label">New Password</label>
            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPassword" />
        </div>

        <div class="form-group">
            <label class="form-label">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm your new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm your password" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPassword" />
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPassword" />
        </div>

        <div style="display: flex; justify-content: flex-end; gap: 12px; margin-top: 14px;">
            <asp:Button ID="btnCancelPassword" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
            <asp:Button ID="btnSavePassword" runat="server" Text="Save Changes" CssClass="btn btn-primary" ValidationGroup="vgPassword" OnClick="btnSavePassword_Click" />
        </div>
    </div>
</asp:Content>
