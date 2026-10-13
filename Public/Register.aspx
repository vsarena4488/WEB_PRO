<%@ Page Title="Create an Account" Language="C#" MasterPageFile="~/MasterPages/Auth.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Public_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-card">
        <div class="auth-card-header">
            <h2 class="auth-card-title">Create an Account</h2>
            <p class="auth-card-subtitle">Join us today! Please fill in your details below.</p>
        </div>

        <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="validation-summary-errors" DisplayMode="BulletList" HeaderText="Please correct the following errors:" />

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label" for="<%= txtFirstName.ClientID %>">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="e.g. vishal"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label" for="<%= txtLastName.ClientID %>">Last Name</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="e.g. sarena"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="vsarena753@rku.ac.in"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Enter a valid email address" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label class="form-label" for="<%= txtPhone.ClientID %>">Phone Number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="+91 98765 43210"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="val-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+91[\-\s]?)?[0]?[6789]\d{9}$" ErrorMessage="Enter a valid 10-digit mobile number" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label" for="<%= txtPassword.ClientID %>">Password</label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtPassword.ClientID %>', this)" aria-label="Toggle password">
                        <i class="far fa-eye"></i>
                    </button>
                </div>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label" for="<%= txtConfirmPassword.ClientID %>">Confirm Password</label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
                    <button type="button" class="input-icon-right" onclick="togglePassVisibility('<%= txtConfirmPassword.ClientID %>', this)" aria-label="Toggle password">
                        <i class="far fa-eye"></i>
                    </button>
                </div>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required" CssClass="val-error" Display="Dynamic" />
                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-check">
            <asp:CheckBox ID="chkTerms" runat="server" />
            <label for="<%= chkTerms.ClientID %>">I agree to the <a href="javascript:void(0)" class="text-primary">Terms &amp; Conditions</a> and <a href="javascript:void(0)" class="text-primary">Privacy Policy</a></label>
        </div>
        <asp:CustomValidator ID="cvTerms" runat="server" ErrorMessage="You must accept the Terms &amp; Conditions" OnServerValidate="cvTerms_ServerValidate" CssClass="val-error" Display="Dynamic" />

        <div style="margin-top: 24px;">
            <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnRegister_Click" />
        </div>

        <p class="text-center" style="margin-top: 24px; font-size: 14px; color: var(--text-muted);">
            Already have an account? <a href='<%= ResolveUrl("~/Public/Login.aspx") %>' class="font-semibold text-primary">Log in</a>
        </p>
    </div>
</asp:Content>
