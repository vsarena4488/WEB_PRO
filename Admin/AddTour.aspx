<%@ Page Title="Add New Tour" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="AddTour.aspx.cs" Inherits="Admin_AddTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Add New Tour
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <a href='<%= ResolveUrl("~/Admin/Tours.aspx") %>'>Tours</a> &gt; <span class="text-dark font-medium">Add New Tour</span>
    </div>

    <div class="card" style="padding: 32px; max-width: 980px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Create Tour Package</h2>
        <p style="font-size: 13px; color: var(--text-muted); margin-bottom: 24px;">Enter the details, upload images, and set pricing for the new tour destination.</p>

        <asp:ValidationSummary ID="vsAddTour" runat="server" CssClass="validation-summary-errors" HeaderText="Please fix the following errors:" />

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Tour Name <span class="required">*</span></label>
                <asp:TextBox ID="txtTourName" runat="server" CssClass="form-control" placeholder="e.g., Goa Beach Adventure"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTourName" runat="server" ControlToValidate="txtTourName" ErrorMessage="Tour name is required" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Destination Location <span class="required">*</span></label>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" placeholder="City, State, Country"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation" ErrorMessage="Destination location is required" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Category <span class="required">*</span></label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select a category..." Value="" />
                    <asp:ListItem Text="Beach" Value="beach" />
                    <asp:ListItem Text="Mountain" Value="mountain" />
                    <asp:ListItem Text="Heritage" Value="heritage" />
                    <asp:ListItem Text="International" Value="intl" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Please select a category" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Duration <span class="required">*</span></label>
                <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control" placeholder="e.g., 4 Days / 3 Nights"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDuration" runat="server" ControlToValidate="txtDuration" ErrorMessage="Duration is required" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Base Price <span class="required">*</span></label>
                <asp:TextBox ID="txtBasePrice" runat="server" CssClass="form-control" placeholder="/- Enter amount"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBasePrice" runat="server" ControlToValidate="txtBasePrice" ErrorMessage="Base price is required" CssClass="val-error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revBasePrice" runat="server" ControlToValidate="txtBasePrice" ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a valid price (e.g. 15000)" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Tour Status <span class="required">*</span></label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Active" Value="Active" Selected="True" />
                    <asp:ListItem Text="Inactive" Value="Inactive" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <label class="form-label">Tour Description</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Provide a detailed description of the tour package, highlights, and itinerary..."></asp:TextBox>
        </div>

        <div class="form-group" style="margin-bottom: 28px;">
            <label class="form-label">Upload Cover Image</label>
            <div class="upload-dropzone">
                <svg class="upload-dropzone-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="17 8 12 3 7 8"></polyline><line x1="12" y1="3" x2="12" y2="15"></line></svg>
                <div class="upload-dropzone-text">Click to upload or drag and drop</div>
                <div class="upload-dropzone-hint">SVG, PNG, JPG or GIF (max. 8MB)</div>
                <asp:FileUpload ID="fuCoverImage" runat="server" CssClass="js-file-upload" />
            </div>
        </div>

        <div style="display: flex; justify-content: flex-end; gap: 12px;">
            <a href='<%= ResolveUrl("~/Admin/Tours.aspx") %>' class="btn btn-secondary">Cancel</a>
            <asp:Button ID="btnCreateTour" runat="server" Text="Create Tour Package" CssClass="btn btn-primary" OnClick="btnCreateTour_Click" />
        </div>
    </div>
</asp:Content>
