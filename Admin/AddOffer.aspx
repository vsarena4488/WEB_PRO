<%@ Page Title="Add New Offer" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="AddOffer.aspx.cs" Inherits="Admin_AddOffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Add New Offer
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <a href='<%= ResolveUrl("~/Admin/Offers.aspx") %>'>Offers</a> &gt; <span class="text-dark font-medium">Add New Offer</span>
    </div>

    <div class="card" style="padding: 32px; max-width: 980px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Create Promotional Offer</h2>
        <p style="font-size: 13px; color: var(--text-muted); margin-bottom: 24px;">Define discount codes, percentages, valid dates, upload banners, and assign promotions to tours.</p>

        <asp:ValidationSummary ID="vsAddOffer" runat="server" CssClass="validation-summary-errors" HeaderText="Please correct the following errors:" />

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Promo Code Name <span class="required">*</span></label>
                <div class="input-with-icon">
                    <span style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: var(--text-light);">
                        <svg class="icon-svg" style="width:16px; height:16px;" viewBox="0 0 24 24"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line></svg>
                    </span>
                    <asp:TextBox ID="txtPromoCode" runat="server" CssClass="form-control" style="padding-left: 36px;" placeholder="e.g., SUMMER20"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="rfvPromoCode" runat="server" ControlToValidate="txtPromoCode" ErrorMessage="Promo code name is required" CssClass="val-error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revPromoCode" runat="server" ControlToValidate="txtPromoCode" ValidationExpression="^[a-zA-Z0-9_-]{3,20}$" ErrorMessage="Promo code must be 3-20 characters (letters, numbers, dashes)" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Discount Type <span class="required">*</span></label>
                <asp:DropDownList ID="ddlDiscountType" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Percentage (%)" Value="percent" Selected="True" />
                    <asp:ListItem Text="Fixed Amount (₹)" Value="fixed" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Discount Value <span class="required">*</span></label>
                <div class="input-with-icon">
                    <span style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: var(--text-light); font-weight: 600;">%</span>
                    <asp:TextBox ID="txtDiscountValue" runat="server" CssClass="form-control" style="padding-left: 32px;" placeholder="e.g., 20"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="rfvDiscountValue" runat="server" ControlToValidate="txtDiscountValue" ErrorMessage="Discount value is required" CssClass="val-error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revDiscountValue" runat="server" ControlToValidate="txtDiscountValue" ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a valid numeric discount" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Applicable Tours <span class="required">*</span></label>
                <asp:DropDownList ID="ddlApplicableTours" runat="server" CssClass="form-control">
                    <asp:ListItem Text="All Tours" Value="all" Selected="True" />
                    <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                    <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                    <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Valid From <span class="required">*</span></label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtValidFrom" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                    <span class="input-icon-right"><svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg></span>
                </div>
                <asp:RequiredFieldValidator ID="rfvValidFrom" runat="server" ControlToValidate="txtValidFrom" ErrorMessage="Valid From date is required" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Valid Until <span class="required">*</span></label>
                <div class="input-with-icon">
                    <asp:TextBox ID="txtValidUntil" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                    <span class="input-icon-right"><svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg></span>
                </div>
                <asp:RequiredFieldValidator ID="rfvValidUntil" runat="server" ControlToValidate="txtValidUntil" ErrorMessage="Valid Until date is required" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Usage Limit</label>
                <asp:TextBox ID="txtUsageLimit" runat="server" CssClass="form-control" placeholder="e.g., 100 (Leave blank for unlimited)"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revUsageLimit" runat="server" ControlToValidate="txtUsageLimit" ValidationExpression="^[1-9]\d*$" ErrorMessage="Usage limit must be a positive integer" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Status <span class="required">*</span></label>
                <asp:DropDownList ID="ddlOfferStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Active" Value="Active" Selected="True" />
                    <asp:ListItem Text="Inactive" Value="Inactive" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 24px;">
            <label class="form-label">Upload Promotional Banner</label>
            <div class="upload-dropzone">
                <svg class="upload-dropzone-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="17 8 12 3 7 8"></polyline><line x1="12" y1="3" x2="12" y2="15"></line></svg>
                <div class="upload-dropzone-text">Click to upload or drag and drop</div>
                <div class="upload-dropzone-hint">SVG, PNG, JPG or GIF (max. 5MB)</div>
                <asp:FileUpload ID="fuBanner" runat="server" CssClass="js-file-upload" />
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 28px;">
            <label class="form-label">Terms &amp; Conditions / Description</label>
            <asp:TextBox ID="txtTerms" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Add any specific rules, terms, or internal notes regarding this offer..."></asp:TextBox>
        </div>

        <div style="display: flex; justify-content: flex-end; gap: 12px;">
            <a href='<%= ResolveUrl("~/Admin/Offers.aspx") %>' class="btn btn-secondary">Cancel</a>
            <asp:Button ID="btnCreateOffer" runat="server" Text="Create Offer" CssClass="btn btn-primary" OnClick="btnCreateOffer_Click" />
        </div>
    </div>
</asp:Content>
