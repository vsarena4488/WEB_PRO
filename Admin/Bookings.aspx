<%@ Page Title="Booking" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Admin_Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Booking
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 24px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Customer Bookings</h2>
        <p style="font-size: 13px; color: var(--text-muted);">View, confirm, and manage all traveler reservations and payment statuses.</p>
    </div>

    <!-- Filters Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtBookingSearch" runat="server" CssClass="form-control" placeholder="Search by Booking ID or Customer..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlPackageFilter" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="All Tour Packages" Value="" />
                <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                <asp:ListItem Text="Rajasthan Heritage" Value="rajasthan" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlBookingStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: Pending (12)" Value="pending" />
                <asp:ListItem Text="Confirmed" Value="confirmed" />
                <asp:ListItem Text="Cancelled" Value="cancelled" />
                <asp:ListItem Text="All" Value="all" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Bookings Table -->
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>BOOKING ID</th>
                    <th>CUSTOMER DETAILS</th>
                    <th>TOUR &amp; TRAVEL DATE</th>
                    <th>PAX</th>
                    <th>TOTAL AMOUNT</th>
                    <th>STATUS</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1 -->
                <tr>
                    <td class="font-semibold text-primary">TB10025</td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Rahul Sharma</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 98765 43210</div>
                    </td>
                    <td>Goa Beach Adventure</td>
                    <td>3</td>
                    <td>
                        <div class="font-semibold">36,000/-</div>
                        <div style="font-size: 11px; color: #10B981;">Paid (Card)</div>
                    </td>
                    <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Cancel Booking" onclick="if(confirm('Cancel this booking?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td class="font-semibold text-primary">TB10026</td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Amit Kumar</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 87654 32109</div>
                    </td>
                    <td>Manali Snow Peaks</td>
                    <td>2</td>
                    <td>
                        <div class="font-semibold">30,000/-</div>
                        <div style="font-size: 11px; color: #F59E0B;">Awaiting Payment</div>
                    </td>
                    <td><span class="badge badge-pending"><span class="badge-dot"></span>Pending</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="Confirm Payment" onclick="alert('Booking approved and marked as Confirmed.');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Reject" onclick="if(confirm('Reject booking?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td class="font-semibold text-primary">TB10027</td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Priya Patel</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 76543 21098</div>
                    </td>
                    <td>Kerala Backwaters</td>
                    <td>2</td>
                    <td>
                        <div class="font-semibold">27,000/-</div>
                        <div style="font-size: 11px; color: #10B981;">Paid (UPI)</div>
                    </td>
                    <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Cancel Booking" onclick="if(confirm('Cancel booking?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td class="font-semibold text-primary">TB10028</td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Vikram Singh</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 65432 10987</div>
                    </td>
                    <td>Rajasthan Heritage</td>
                    <td>4</td>
                    <td>
                        <div class="font-semibold" style="color:#DC2626;">88,000/-</div>
                        <div style="font-size: 11px; color: #DC2626;">Refunded</div>
                    </td>
                    <td><span class="badge badge-cancelled"><span class="badge-dot"></span>Cancelled</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 4 of 680 bookings</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">3</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
