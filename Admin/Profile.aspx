<%@ Page Title="Admin Profile & Settings" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Admin Profile &amp; Settings
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 24px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Your Account</h2>
        <p style="font-size: 13px; color: var(--text-muted);">Update your administrator details, manage security credentials, and review activity.</p>
    </div>

    <asp:Panel ID="pnlAdminSuccess" runat="server" Visible="false" CssClass="badge badge-confirmed" style="padding: 12px 18px; margin-bottom: 20px; width: 100%;">
        Administrator account details updated successfully!
    </asp:Panel>

    <div class="admin-profile-layout">
        <!-- Left Admin Card -->
        <div>
            <div class="admin-profile-card">
                <div class="admin-avatar-wrapper">
                    <div class="admin-avatar-circle">VS</div>
                    <div class="admin-avatar-edit-badge" title="Change Avatar">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
                    </div>
                </div>
                <h3 class="admin-card-name">Vishalkumar Sarena</h3>
                <div class="admin-card-role">Super Administrator</div>

                <div class="admin-contact-list">
                    <div class="admin-contact-item">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                        <div>
                            <div style="font-size: 11px; color: var(--text-light);">Email Address</div>
                            <div style="font-weight: 500;">admin@tourbook.in</div>
                        </div>
                    </div>
                    <div class="admin-contact-item">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                        <div>
                            <div style="font-size: 11px; color: var(--text-light);">Phone Number</div>
                            <div style="font-weight: 500;">+91 98765 43210</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Forms -->
        <div>
            <!-- Box 1: Personal Information -->
            <div class="card" style="margin-bottom: 24px; padding: 28px;">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 20px;">Personal Information</h3>

                <asp:ValidationSummary ID="vsAdminProfile" runat="server" ValidationGroup="vgAdminProfile" CssClass="validation-summary-errors" HeaderText="Please fix the following:" />

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">First Name</label>
                        <asp:TextBox ID="txtAdminFirstName" runat="server" CssClass="form-control" Text="Vishalkumar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminFirst" runat="server" ControlToValidate="txtAdminFirstName" ErrorMessage="First name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Last Name</label>
                        <asp:TextBox ID="txtAdminLastName" runat="server" CssClass="form-control" Text="Sarena"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminLast" runat="server" ControlToValidate="txtAdminLastName" ErrorMessage="Last name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">Email Address (Read Only)</label>
                        <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="form-control" ReadOnly="true" Text="vsarena753@rku.ac.in" style="background-color:#F8FAFC; cursor:not-allowed;"></asp:TextBox>
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Mobile Number</label>
                        <asp:TextBox ID="txtAdminPhone" runat="server" CssClass="form-control" Text="+91 98765 43210"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminPhone" runat="server" ControlToValidate="txtAdminPhone" ErrorMessage="Mobile number is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Location</label>
                    <asp:TextBox ID="txtAdminLocation" runat="server" CssClass="form-control" Text="Rajkot, Gujarat"></asp:TextBox>
                </div>

                <div style="display: flex; justify-content: flex-end; margin-top: 14px;">
                    <asp:Button ID="btnSaveAdminInfo" runat="server" Text="Save Changes" CssClass="btn btn-primary" ValidationGroup="vgAdminProfile" OnClick="btnSaveAdminInfo_Click" />
                </div>
            </div>

            <!-- Box 2: Security Settings -->
            <div class="card" style="padding: 28px;">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Security Settings</h3>
                <p style="font-size: 13px; color: var(--text-muted); margin-bottom: 20px;">Ensure your account stays secure by regularly updating your password.</p>

                <asp:ValidationSummary ID="vsAdminSecurity" runat="server" ValidationGroup="vgAdminSecurity" CssClass="validation-summary-errors" HeaderText="Please fix the following:" />

                <div class="form-group">
                    <label class="form-label">Current Password</label>
                    <div class="input-with-icon">
                        <asp:TextBox ID="txtAdminCurrentPass" runat="server" TextMode="Password" CssClass="form-control" Text="currentpass123"></asp:TextBox>
                        <button type="button" class="input-icon-right js-toggle-password" data-target="<%= txtAdminCurrentPass.ClientID %>" aria-label="Toggle password">
                            <svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                        </button>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvCurrentPass" runat="server" ControlToValidate="txtAdminCurrentPass" ErrorMessage="Current password is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                </div>

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">New Password</label>
                        <asp:TextBox ID="txtAdminNewPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter new password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminNewPass" runat="server" ControlToValidate="txtAdminNewPass" ErrorMessage="New password is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Confirm New Password</label>
                        <asp:TextBox ID="txtAdminConfirmPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm new password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminConfirmPass" runat="server" ControlToValidate="txtAdminConfirmPass" ErrorMessage="Confirm your new password" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                        <asp:CompareValidator ID="cvAdminPass" runat="server" ControlToValidate="txtAdminConfirmPass" ControlToCompare="txtAdminNewPass" ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                    </div>
                </div>

                <div style="display: flex; justify-content: flex-end; margin-top: 14px;">
                    <asp:Button ID="btnUpdateAdminPassword" runat="server" Text="Update Password" CssClass="btn btn-secondary" ValidationGroup="vgAdminSecurity" OnClick="btnUpdateAdminPassword_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
