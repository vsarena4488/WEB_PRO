<%@ Page Title="Add New Schedule" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="AddSchedule.aspx.cs" Inherits="Admin_AddSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Add New Schedule
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <a href='<%= ResolveUrl("~/Admin/TourSchedules.aspx") %>'>Tour Schedules</a> &gt; <span class="text-dark font-medium">Add New Schedule</span>
    </div>

    <div class="card" style="padding: 32px; max-width: 980px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Create Tour Schedule</h2>
        <p style="font-size: 13px; color: var(--text-muted); margin-bottom: 24px;">Enter the departure dates, assign a guide, and set inventory for the tour.</p>

        <asp:ValidationSummary ID="vsAddSchedule" runat="server" CssClass="validation-summary-errors" HeaderText="Please fix the following errors:" />

        <div class="form-group">
            <label class="form-label">Select Tour Package <span class="required">*</span></label>
            <asp:DropDownList ID="ddlTourPackage" runat="server" CssClass="form-control">
                <asp:ListItem Text="Select a tour package..." Value="" />
                <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                <asp:ListItem Text="Rajasthan Heritage" Value="rajasthan" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvTourPackage" runat="server" ControlToValidate="ddlTourPackage" InitialValue="" ErrorMessage="Please select a tour package" CssClass="val-error" Display="Dynamic" />
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Departure Date <span class="required">*</span></label>
                <asp:TextBox ID="txtDepartureDate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDepartureDate" runat="server" ControlToValidate="txtDepartureDate" ErrorMessage="Departure date is required" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Return Date <span class="required">*</span></label>
                <asp:TextBox ID="txtReturnDate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvReturnDate" runat="server" ControlToValidate="txtReturnDate" ErrorMessage="Return date is required" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Total Seats (Inventory) <span class="required">*</span></label>
                <asp:TextBox ID="txtSeats" runat="server" CssClass="form-control" placeholder="e.g., 30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeats" runat="server" ControlToValidate="txtSeats" ErrorMessage="Total seats is required" CssClass="val-error" Display="Dynamic" />
                <asp:RangeValidator ID="rvSeats" runat="server" ControlToValidate="txtSeats" MinimumValue="1" MaximumValue="500" Type="Integer" ErrorMessage="Enter valid seats (1-500)" CssClass="val-error" Display="Dynamic" />
            </div>
            <div class="form-col form-group">
                <label class="form-label">Base Price Override (Optional)</label>
                <asp:TextBox ID="txtPriceOverride" runat="server" CssClass="form-control" placeholder="/- Leave blank to use default tour price"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPriceOverride" runat="server" ControlToValidate="txtPriceOverride" ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a valid price amount" CssClass="val-error" Display="Dynamic" />
            </div>
        </div>

        <div class="form-row">
            <div class="form-col form-group">
                <label class="form-label">Assign Tour Guide</label>
                <asp:DropDownList ID="ddlGuide" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select a tour guide..." Value="" />
                    <asp:ListItem Text="Ravi Kumar" Value="ravi" />
                    <asp:ListItem Text="Anil Sharma" Value="anil" />
                    <asp:ListItem Text="Suresh M." Value="suresh" />
                </asp:DropDownList>
            </div>
            <div class="form-col form-group">
                <label class="form-label">Schedule Status <span class="required">*</span></label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Upcoming" Value="Upcoming" Selected="True" />
                    <asp:ListItem Text="Ongoing" Value="Ongoing" />
                    <asp:ListItem Text="Completed" Value="Completed" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 28px;">
            <label class="form-label">Meeting Point &amp; Internal Notes</label>
            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Provide detailed boarding instructions or private notes for the guide..."></asp:TextBox>
        </div>

        <div style="display: flex; justify-content: flex-end; gap: 12px;">
            <a href='<%= ResolveUrl("~/Admin/TourSchedules.aspx") %>' class="btn btn-secondary">Cancel</a>
            <asp:Button ID="btnCreateSchedule" runat="server" Text="Create Schedule" CssClass="btn btn-primary" OnClick="btnCreateSchedule_Click" />
        </div>
    </div>
</asp:Content>
