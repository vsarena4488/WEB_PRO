<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function togglePassVisibility(inputId, btn) {
            var input = document.getElementById(inputId);
            if (!input) return;
            var icon = btn ? btn.querySelector('i') : null;
            if (input.type === 'password') {
                input.type = 'text';
                if (icon) {
                    icon.classList.remove('fa-eye');
                    icon.classList.add('fa-eye-slash');
                }
                if (btn) btn.setAttribute('aria-label', 'Hide password');
            } else {
                input.type = 'password';
                if (icon) {
                    icon.classList.remove('fa-eye-slash');
                    icon.classList.add('fa-eye');
                }
                if (btn) btn.setAttribute('aria-label', 'Show password');
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    My Profile
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Profile Header Card -->
    <div class="profile-summary-card">
        <div class="profile-avatar-wrap">
            <div class="profile-avatar-badge">AK</div>
            <div class="profile-avatar-dot"></div>
        </div>
        <div class="profile-summary-info">
            <h2 class="profile-summary-name">Arjun Kothivar</h2>
            <span class="profile-summary-role">Traveler Account</span>
        </div>
    </div>

    <!-- Tab Strip -->
    <div class="profile-tab-strip">
        <button type="button" class="profile-tab-pill">Personal Information</button>
    </div>

    <asp:Panel ID="pnlProfileSuccess" runat="server" Visible="false" style="padding: 12px 18px; margin-bottom: 20px; background-color: #dcfce7; color: #166534; border: 1px solid #bbf7d0; border-radius: 8px; font-size: 14px; font-weight: 500;">
        <i class="fas fa-check-circle" style="margin-right: 8px;"></i> Changes saved successfully!
    </asp:Panel>

    <!-- Section 1: Update Profile Details -->
    <div class="profile-form-card">
        <h3 class="profile-card-title">Update Profile Details</h3>

        <asp:ValidationSummary ID="vsProfile" runat="server" ValidationGroup="vgProfile" CssClass="val-error-text" HeaderText="Please correct the following errors:" style="margin-bottom: 16px;" />

        <div class="profile-grid-2">
            <!-- First Name -->
            <div class="profile-field-group">
                <label class="profile-field-label">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="profile-field-input" Text="Arjun" placeholder="Enter first name" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>

            <!-- Last Name -->
            <div class="profile-field-group">
                <label class="profile-field-label">Last Name</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="profile-field-input" Text="Kothivar" placeholder="Enter last name" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>

            <!-- Email Address -->
            <div class="profile-field-group">
                <label class="profile-field-label">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="profile-field-input" Text="akothivar063@rku.ac.in" placeholder="Enter email address" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Valid email required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>

            <!-- Phone Number -->
            <div class="profile-field-group">
                <label class="profile-field-label">Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="profile-field-input" Text="+91 9328206703" placeholder="Enter phone number" />
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+?\d{1,4}[\s-]?)?\(?\d{1,4}\)?[\s-]?\d{1,4}[\s-]?\d{1,9}$" ErrorMessage="Enter a valid phone number" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgProfile" />
            </div>

            <!-- Date of Birth -->
            <div class="profile-field-group">
                <label class="profile-field-label">Date of Birth</label>
                <div class="profile-input-with-icon">
                    <asp:TextBox ID="txtDob" runat="server" CssClass="profile-field-input" Text="22 Jul 2006" placeholder="Select date of birth (e.g. 22 Jul 2006)" />
                    <i class="far fa-calendar-alt profile-input-icon"></i>
                </div>
            </div>

            <!-- City / Location -->
            <div class="profile-field-group">
                <label class="profile-field-label">City / Location</label>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="profile-field-input" Text="Rajkot, Gujarat" placeholder="Enter city / location" />
            </div>
        </div>

        <div class="profile-actions-row">
            <asp:Button ID="btnCancelProfile" runat="server" Text="Cancel" CssClass="btn-profile-cancel" OnClick="btnCancel_Click" CausesValidation="false" />
            <asp:Button ID="btnSaveProfile" runat="server" Text="Save Changes" CssClass="btn-profile-save" ValidationGroup="vgProfile" OnClick="btnSaveProfile_Click" />
        </div>
    </div>

    <!-- Section 2: Update Password -->
    <div class="profile-form-card">
        <h3 class="profile-card-title">Update Password</h3>

        <asp:ValidationSummary ID="vsPassword" runat="server" ValidationGroup="vgPassword" CssClass="val-error-text" HeaderText="Please correct the following errors:" style="margin-bottom: 16px;" />

        <div class="profile-password-fields">
            <!-- New Password -->
            <div class="profile-field-group">
                <label class="profile-field-label">New Password</label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="profile-field-input" placeholder="Enter new password" />
                    <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtNewPassword.ClientID %>', this)" aria-label="Toggle password">
                        <i class="far fa-eye"></i>
                    </button>
                </div>
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgPassword" />
                <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ValidationExpression="^.{6,}$" ErrorMessage="Password must be at least 6 characters" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgPassword" />
            </div>

            <!-- Confirm Password -->
            <div class="profile-field-group">
                <label class="profile-field-label">Confirm Password</label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="profile-field-input" placeholder="Confirm your new password" />
                    <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtConfirmPassword.ClientID %>', this)" aria-label="Toggle password">
                        <i class="far fa-eye"></i>
                    </button>
                </div>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm your password" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgPassword" />
                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match" CssClass="val-error-text" Display="Dynamic" ValidationGroup="vgPassword" />
            </div>
        </div>

        <div class="profile-actions-row">
            <asp:Button ID="btnCancelPassword" runat="server" Text="Cancel" CssClass="btn-profile-cancel" OnClick="btnCancel_Click" CausesValidation="false" />
            <asp:Button ID="btnSavePassword" runat="server" Text="Save Changes" CssClass="btn-profile-save" ValidationGroup="vgPassword" OnClick="btnSavePassword_Click" />
        </div>
    </div>
</asp:Content>
