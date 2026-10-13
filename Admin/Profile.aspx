<%@ Page Title="Admin Profile" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-profile-layout {
            display: grid !important;
            grid-template-columns: 320px 1fr !important;
            gap: 28px !important;
            align-items: start !important;
        }

        .admin-profile-sidebar-card {
            background-color: #ffffff !important;
            border: 1px solid #eef2f6 !important;
            border-radius: 16px !important;
            padding: 32px 24px !important;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04) !important;
            text-align: center !important;
            display: flex !important;
            flex-direction: column !important;
            align-items: center !important;
        }

        .admin-avatar-container {
            position: relative !important;
            cursor: pointer !important;
            margin-bottom: 16px !important;
        }

        .admin-avatar-main {
            width: 96px !important;
            height: 96px !important;
            border-radius: 50% !important;
            background: linear-gradient(135deg, #2563eb, #1d4ed8) !important;
            color: #ffffff !important;
            font-size: 2rem !important;
            font-weight: 700 !important;
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.25) !important;
            transition: transform 0.2s ease !important;
        }

        .admin-avatar-container:hover .admin-avatar-main {
            transform: scale(1.03) !important;
        }

        .admin-avatar-badge {
            position: absolute !important;
            bottom: 0 !important;
            right: 0 !important;
            width: 32px !important;
            height: 32px !important;
            border-radius: 50% !important;
            background-color: #ffffff !important;
            border: 2px solid #ffffff !important;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15) !important;
            color: #2563eb !important;
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            font-size: 13px !important;
        }

        .admin-user-fullname {
            font-size: 1.25rem !important;
            font-weight: 700 !important;
            color: #111827 !important;
            margin: 0 0 6px 0 !important;
        }

        .admin-role-pill {
            display: inline-flex !important;
            align-items: center !important;
            gap: 6px !important;
            background-color: #eff6ff !important;
            color: #2563eb !important;
            font-size: 0.78rem !important;
            font-weight: 600 !important;
            padding: 4px 14px !important;
            border-radius: 9999px !important;
            border: 1px solid #bfdbfe !important;
            margin-bottom: 20px !important;
        }

        .admin-meta-list {
            width: 100% !important;
            margin-top: 10px !important;
            padding-top: 20px !important;
            border-top: 1px solid #f1f5f9 !important;
            display: flex !important;
            flex-direction: column !important;
            gap: 16px !important;
            text-align: left !important;
        }

        .admin-meta-item {
            display: flex !important;
            align-items: flex-start !important;
            gap: 12px !important;
            font-size: 0.88rem !important;
        }

        .meta-icon {
            width: 18px !important;
            color: #2563eb !important;
            font-size: 0.95rem !important;
            margin-top: 3px !important;
            flex-shrink: 0 !important;
        }

        .meta-label {
            font-size: 0.75rem !important;
            color: #94a3b8 !important;
            display: block !important;
            margin-bottom: 2px !important;
            font-weight: 500 !important;
        }

        .meta-value {
            font-weight: 600 !important;
            color: #1e293b !important;
            display: block !important;
            word-break: break-all !important;
        }

        /* Right Form Cards */
        .admin-form-card {
            background-color: #ffffff !important;
            border: 1px solid #eef2f6 !important;
            border-radius: 16px !important;
            padding: 30px 32px !important;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04) !important;
            margin-bottom: 24px !important;
        }

        .form-card-header {
            margin-bottom: 24px !important;
            padding-bottom: 16px !important;
            border-bottom: 1px solid #f1f5f9 !important;
        }

        .form-card-title {
            font-size: 1.15rem !important;
            font-weight: 700 !important;
            color: #111827 !important;
            margin: 0 0 4px 0 !important;
            display: flex !important;
            align-items: center !important;
            gap: 8px !important;
        }

        .form-card-subtitle {
            font-size: 0.84rem !important;
            color: #64748b !important;
            margin: 0 !important;
        }

        .admin-form-grid-2 {
            display: grid !important;
            grid-template-columns: 1fr 1fr !important;
            gap: 20px !important;
            margin-bottom: 18px !important;
        }

        .admin-form-group {
            margin-bottom: 18px !important;
        }

        .admin-form-label {
            display: block !important;
            font-size: 0.82rem !important;
            font-weight: 600 !important;
            color: #374151 !important;
            margin-bottom: 6px !important;
        }

        .admin-form-control {
            width: 100% !important;
            height: 42px !important;
            padding: 8px 14px !important;
            border: 1px solid #e2e8f0 !important;
            border-radius: 8px !important;
            font-size: 0.88rem !important;
            color: #111827 !important;
            background-color: #ffffff !important;
            outline: none !important;
            box-sizing: border-box !important;
            font-family: inherit !important;
            transition: border-color 0.15s, box-shadow 0.15s !important;
        }

        .admin-form-control:focus {
            border-color: #2563eb !important;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12) !important;
        }

        .admin-form-control.is-readonly {
            background-color: #f8fafc !important;
            color: #64748b !important;
            cursor: not-allowed !important;
            border-color: #e2e8f0 !important;
        }

        .password-input-wrapper {
            position: relative !important;
            display: flex !important;
            align-items: center !important;
        }

        .password-input-wrapper .admin-form-control {
            padding-right: 42px !important;
        }

        /* Suppress browser native password reveal icon (Microsoft Edge / IE) */
        input[type="password"]::-ms-reveal,
        input[type="password"]::-ms-clear {
            display: none !important;
            width: 0 !important;
            height: 0 !important;
            pointer-events: none !important;
        }

        input::-webkit-credentials-auto-fill-button {
            visibility: hidden !important;
            pointer-events: none !important;
            position: absolute !important;
            right: 0 !important;
        }

        .btn-eye-toggle {
            position: absolute !important;
            right: 8px !important;
            top: 50% !important;
            transform: translateY(-50%) !important;
            width: 32px !important;
            height: 32px !important;
            border: none !important;
            background: transparent !important;
            color: #94a3b8 !important;
            cursor: pointer !important;
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            font-size: 0.95rem !important;
            border-radius: 6px !important;
            transition: color 0.15s, background-color 0.15s !important;
        }

        .btn-eye-toggle:hover {
            color: #2563eb !important;
            background-color: #eff6ff !important;
        }

        .val-error {
            color: #dc2626 !important;
            font-size: 0.78rem !important;
            margin-top: 4px !important;
            display: block;
            font-weight: 500 !important;
        }

        .val-error[style*="display:none"],
        .val-error[style*="display: none"] {
            display: none !important;
        }

        .admin-alert-success {
            background-color: #ecfdf5 !important;
            border: 1px solid #a7f3d0 !important;
            border-radius: 12px !important;
            padding: 14px 18px !important;
            margin-bottom: 24px !important;
            display: flex !important;
            align-items: center !important;
            justify-content: space-between !important;
            color: #065f46 !important;
        }

        .alert-content {
            display: flex !important;
            align-items: center !important;
            gap: 12px !important;
        }

        .alert-icon {
            font-size: 1.35rem !important;
            color: #059669 !important;
        }

        .alert-title {
            font-weight: 700 !important;
            font-size: 0.92rem !important;
            margin-bottom: 2px !important;
        }

        .alert-close {
            background: transparent !important;
            border: none !important;
            color: #059669 !important;
            font-size: 1.25rem !important;
            cursor: pointer !important;
            line-height: 1 !important;
            padding: 4px !important;
        }

        .btn-save-primary {
            background-color: #2563eb !important;
            color: #ffffff !important;
            font-size: 0.88rem !important;
            font-weight: 600 !important;
            padding: 10px 22px !important;
            border-radius: 8px !important;
            border: none !important;
            cursor: pointer !important;
            display: inline-flex !important;
            align-items: center !important;
            gap: 8px !important;
            transition: background-color 0.15s ease, box-shadow 0.15s ease !important;
            box-shadow: 0 1px 2px rgba(37, 99, 235, 0.2) !important;
        }

        .btn-save-primary:hover {
            background-color: #1d4ed8 !important;
            box-shadow: 0 2px 4px rgba(37, 99, 235, 0.3) !important;
        }

        @media (max-width: 992px) {
            .admin-profile-layout {
                grid-template-columns: 1fr !important;
            }
            .admin-form-grid-2 {
                grid-template-columns: 1fr !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Admin Profile &amp; Settings
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Success Feedback Alert -->
    <asp:Panel ID="pnlAdminSuccess" runat="server" Visible="false" CssClass="admin-alert-success">
        <div class="alert-content">
            <i class="fas fa-check-circle alert-icon"></i>
            <div>
                <div class="alert-title">Success</div>
                <asp:Label ID="lblSuccessMessage" runat="server" Text="Administrator account details updated successfully!"></asp:Label>
            </div>
        </div>
        <button type="button" class="alert-close" onclick="this.closest('.admin-alert-success').style.display='none';">&times;</button>
    </asp:Panel>

    <div class="admin-profile-layout">
        <!-- Left Column: Admin Profile Card -->
        <div>
            <div class="admin-profile-sidebar-card">
                <div class="admin-avatar-container" onclick="document.getElementById('avatarUploadInput').click();" title="Click to upload profile photo">
                    <div id="avatarCircle" class="admin-avatar-main">VS</div>
                    <div class="admin-avatar-badge" title="Upload new photo">
                        <i class="fas fa-camera"></i>
                    </div>
                    <input type="file" id="avatarUploadInput" accept="image/*" style="display:none;" onchange="handleAvatarUpload(this);" />
                </div>
                <h3 class="admin-user-fullname">Vishalkumar Sarena</h3>
                <span class="admin-role-pill">
                    <i class="fas fa-shield-alt"></i> Super Administrator
                </span>

                <div class="admin-meta-list">
                    <div class="admin-meta-item">
                        <i class="far fa-envelope meta-icon"></i>
                        <div>
                            <span class="meta-label">Email Address</span>
                            <span class="meta-value">vsarena753@rku.ac.in</span>
                        </div>
                    </div>
                    <div class="admin-meta-item">
                        <i class="fas fa-phone-alt meta-icon"></i>
                        <div>
                            <span class="meta-label">Mobile Number</span>
                            <span class="meta-value">+91 98765 43210</span>
                        </div>
                    </div>
                    <div class="admin-meta-item">
                        <i class="fas fa-map-marker-alt meta-icon"></i>
                        <div>
                            <span class="meta-label">Office Location</span>
                            <span class="meta-value">Rajkot, Gujarat</span>
                        </div>
                    </div>
                    <div class="admin-meta-item">
                        <i class="far fa-calendar-alt meta-icon"></i>
                        <div>
                            <span class="meta-label">Admin Since</span>
                            <span class="meta-value">January 2026</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column: Edit Details & Security -->
        <div>
            <!-- Box 1: Personal Information -->
            <div class="admin-form-card">
                <div class="form-card-header">
                    <h3 class="form-card-title">
                        <i class="far fa-user" style="color: #2563eb;"></i> Personal Information
                    </h3>
                    <p class="form-card-subtitle">Update your personal account details and primary contact information.</p>
                </div>

                <div class="admin-form-grid-2">
                    <div class="admin-form-group">
                        <label class="admin-form-label">First Name</label>
                        <asp:TextBox ID="txtAdminFirstName" runat="server" CssClass="admin-form-control" Text="Vishalkumar" placeholder="Enter your first name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminFirst" runat="server" ControlToValidate="txtAdminFirstName" ErrorMessage="First name is required." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                    <div class="admin-form-group">
                        <label class="admin-form-label">Last Name</label>
                        <asp:TextBox ID="txtAdminLastName" runat="server" CssClass="admin-form-control" Text="Sarena" placeholder="Enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminLast" runat="server" ControlToValidate="txtAdminLastName" ErrorMessage="Last name is required." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                </div>

                <div class="admin-form-grid-2">
                    <div class="admin-form-group">
                        <label class="admin-form-label">Email Address <span style="font-weight: 400; color: #94a3b8;">(Primary Admin)</span></label>
                        <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="admin-form-control is-readonly" ReadOnly="true" Text="vsarena753@rku.ac.in" placeholder="admin@tourbook.in"></asp:TextBox>
                    </div>
                    <div class="admin-form-group">
                        <label class="admin-form-label">Mobile Number</label>
                        <asp:TextBox ID="txtAdminPhone" runat="server" CssClass="admin-form-control" Text="+91 98765 43210" placeholder="e.g. +91 98765 43210"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdminPhone" runat="server" ControlToValidate="txtAdminPhone" ErrorMessage="Mobile number is required." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                        <asp:RegularExpressionValidator ID="revAdminPhone" runat="server" ControlToValidate="txtAdminPhone" ValidationExpression="^(\+?\d{1,4}[\s-]?)?\(?\d{1,4}\)?[\s-]?\d{1,4}[\s-]?\d{1,9}$" ErrorMessage="Enter a valid mobile number (e.g. +91 98765 43210)." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminProfile" />
                    </div>
                </div>

                <div class="admin-form-group">
                    <label class="admin-form-label">Location / City</label>
                    <asp:TextBox ID="txtAdminLocation" runat="server" CssClass="admin-form-control" Text="Rajkot, Gujarat" placeholder="City, State"></asp:TextBox>
                </div>

                <div style="display: flex; justify-content: flex-end; margin-top: 24px;">
                    <asp:Button ID="btnSaveAdminInfo" runat="server" Text="Save Changes" CssClass="btn-save-primary" ValidationGroup="vgAdminProfile" OnClick="btnSaveAdminInfo_Click" />
                </div>
            </div>

            <!-- Box 2: Security & Password Settings -->
            <div class="admin-form-card">
                <div class="form-card-header">
                    <h3 class="form-card-title">
                        <i class="fas fa-lock" style="color: #2563eb;"></i> Security &amp; Password
                    </h3>
                    <p class="form-card-subtitle">Ensure your administrator credentials remain safe by using a strong password.</p>
                </div>

                <div class="admin-form-group">
                    <label class="admin-form-label">Current Password</label>
                    <div class="password-input-wrapper">
                        <asp:TextBox ID="txtAdminCurrentPass" runat="server" TextMode="Password" CssClass="admin-form-control" placeholder="Enter current password"></asp:TextBox>
                        <button type="button" class="btn-eye-toggle" onclick="togglePassVisibility('MainContent_txtAdminCurrentPass', this)" aria-label="Toggle password">
                            <i class="far fa-eye"></i>
                        </button>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvCurrentPass" runat="server" ControlToValidate="txtAdminCurrentPass" ErrorMessage="Current password is required." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                </div>

                <div class="admin-form-grid-2">
                    <div class="admin-form-group">
                        <label class="admin-form-label">New Password</label>
                        <div class="password-input-wrapper">
                            <asp:TextBox ID="txtAdminNewPass" runat="server" TextMode="Password" CssClass="admin-form-control" placeholder="Enter new password (min. 6 chars)"></asp:TextBox>
                            <button type="button" class="btn-eye-toggle" onclick="togglePassVisibility('MainContent_txtAdminNewPass', this)" aria-label="Toggle password">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvAdminNewPass" runat="server" ControlToValidate="txtAdminNewPass" ErrorMessage="New password is required." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                        <asp:RegularExpressionValidator ID="revAdminNewPass" runat="server" ControlToValidate="txtAdminNewPass" ValidationExpression="^.{6,}$" ErrorMessage="New password must be at least 6 characters long." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                    </div>
                    <div class="admin-form-group">
                        <label class="admin-form-label">Confirm New Password</label>
                        <div class="password-input-wrapper">
                            <asp:TextBox ID="txtAdminConfirmPass" runat="server" TextMode="Password" CssClass="admin-form-control" placeholder="Confirm new password"></asp:TextBox>
                            <button type="button" class="btn-eye-toggle" onclick="togglePassVisibility('MainContent_txtAdminConfirmPass', this)" aria-label="Toggle password">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvAdminConfirmPass" runat="server" ControlToValidate="txtAdminConfirmPass" ErrorMessage="Confirm your new password." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                        <asp:CompareValidator ID="cvAdminPass" runat="server" ControlToValidate="txtAdminConfirmPass" ControlToCompare="txtAdminNewPass" ErrorMessage="Passwords do not match." CssClass="val-error" Display="Dynamic" ValidationGroup="vgAdminSecurity" />
                    </div>
                </div>

                <div style="display: flex; justify-content: flex-end; margin-top: 24px;">
                    <asp:Button ID="btnUpdateAdminPassword" runat="server" Text="Update Password" CssClass="btn-save-primary" ValidationGroup="vgAdminSecurity" OnClick="btnUpdateAdminPassword_Click" />
                </div>
            </div>
        </div>
    </div>

    <!-- Client-side Scripts for Password Toggles and Avatar Preview -->
    <script type="text/javascript">
        function togglePassVisibility(inputId, btn) {
            var input = document.getElementById(inputId);
            if (!input) return;
            var icon = btn.querySelector('i');
            if (input.type === 'password') {
                input.type = 'text';
                if (icon) {
                    icon.classList.remove('fa-eye');
                    icon.classList.add('fa-eye-slash');
                }
            } else {
                input.type = 'password';
                if (icon) {
                    icon.classList.remove('fa-eye-slash');
                    icon.classList.add('fa-eye');
                }
            }
        }

        function handleAvatarUpload(fileInput) {
            if (fileInput.files && fileInput.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var circle = document.getElementById('avatarCircle');
                    if (circle) {
                        circle.textContent = '';
                        circle.style.backgroundImage = 'url(' + e.target.result + ')';
                        circle.style.backgroundSize = 'cover';
                        circle.style.backgroundPosition = 'center';
                    }
                };
                reader.readAsDataURL(fileInput.files[0]);
            }
        }
    </script>
</asp:Content>
