<%@ Page Title="My Bookings" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="MyBookings.aspx.cs" Inherits="User_MyBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    My Bookings
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Success Alert if redirected from payment -->
    <asp:Panel ID="pnlBookingSuccess" runat="server" Visible="false" CssClass="badge badge-confirmed" style="padding: 14px 20px; font-size: 14px; margin-bottom: 24px; width: 100%; border-radius: var(--radius-md);">
        <svg class="icon-svg" style="width:18px; height:18px; margin-right:8px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
        Payment Successful! Your tour booking (TB10025) has been confirmed.
    </asp:Panel>

    <!-- Filter Tabs -->
    <div style="display: flex; gap: 10px; margin-bottom: 24px;">
        <button type="button" class="btn btn-primary js-filter-tab active" data-filter="all">All Bookings</button>
        <button type="button" class="btn btn-secondary js-filter-tab" data-filter="upcoming">Upcoming</button>
        <button type="button" class="btn btn-secondary js-filter-tab" data-filter="completed">Completed</button>
        <button type="button" class="btn btn-secondary js-filter-tab" data-filter="cancelled">Cancelled</button>
    </div>

    <!-- Booking Cards List -->
    <div class="bookings-list">
        <!-- Card 1: Goa Beach Tour -->
        <div class="booking-item-card js-filterable-item" data-category="upcoming">
            <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Tour" class="booking-item-thumb" />
            <div class="booking-item-details">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Goa Beach Tour</h3>
                <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 8px;">
                    Booking ID: <strong class="text-primary">TB10025</strong>
                </div>
                <div class="booking-item-meta">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        15 Jun 2025 &ndash; 17 Jun 2025
                    </span>
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle></svg>
                        2 Adults, 1 Child
                    </span>
                </div>
            </div>

            <div class="booking-item-actions">
                <div>
                    <span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span>
                </div>
                <div style="text-align: right;">
                    <div style="font-size: 11px; color: var(--text-muted);">Total Amount</div>
                    <div style="font-size: 20px; font-weight: 700; color: var(--primary);">18,000/-</div>
                </div>
                <div style="display: flex; gap: 10px; margin-top: 6px;">
                    <button type="button" class="btn btn-secondary btn-sm">Cancel Booking</button>
                    <a href="javascript:alert('Ticket downloaded successfully.')" class="btn btn-primary btn-sm">Download Ticket</a>
                </div>
            </div>
        </div>

        <!-- Card 2: Manali Adventure -->
        <div class="booking-item-card js-filterable-item" data-category="completed">
            <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali Adventure" class="booking-item-thumb" />
            <div class="booking-item-details">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manali Adventure</h3>
                <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 8px;">
                    Booking ID: <strong class="text-primary">TB10019</strong>
                </div>
                <div class="booking-item-meta">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        10 Jan 2025 &ndash; 14 Jan 2025
                    </span>
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle></svg>
                        4 Adults
                    </span>
                </div>
            </div>

            <div class="booking-item-actions">
                <div>
                    <span class="badge badge-completed"><span class="badge-dot"></span>Completed</span>
                </div>
                <div style="text-align: right;">
                    <div style="font-size: 11px; color: var(--text-muted);">Total Amount</div>
                    <div style="font-size: 20px; font-weight: 700; color: var(--text-heading);">22,500/-</div>
                </div>
                <div style="display: flex; gap: 10px; margin-top: 6px;">
                    <a href='<%= ResolveUrl("~/User/MyReviews.aspx") %>' class="btn btn-secondary btn-sm">Write a Review</a>
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">Book Again</a>
                </div>
            </div>
        </div>

        <!-- Card 3: Kerala Backwaters -->
        <div class="booking-item-card js-filterable-item" data-category="cancelled">
            <img src='<%= ResolveUrl("~/Assets/images/kerala.jpg") %>' alt="Kerala Backwaters" class="booking-item-thumb" />
            <div class="booking-item-details">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Kerala Backwaters</h3>
                <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 8px;">
                    Booking ID: <strong class="text-primary">TB10008</strong>
                </div>
                <div class="booking-item-meta">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        05 Dec 2024 &ndash; 08 Dec 2024
                    </span>
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle></svg>
                        2 Adults
                    </span>
                </div>
            </div>

            <div class="booking-item-actions">
                <div>
                    <span class="badge badge-cancelled"><span class="badge-dot"></span>Cancelled</span>
                </div>
                <div style="text-align: right;">
                    <div style="font-size: 11px; color: var(--text-muted);">Total Amount</div>
                    <div style="font-size: 20px; font-weight: 700; color: var(--text-light); text-decoration: line-through;">16,000/-</div>
                </div>
                <div style="display: flex; gap: 10px; margin-top: 6px;">
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-secondary btn-sm">View Details</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Pagination -->
    <div style="display: flex; justify-content: center; margin-top: 32px;">
        <div class="pagination">
            <a href="javascript:void(0)" class="page-btn">&lt;</a>
            <a href="javascript:void(0)" class="page-btn active">1</a>
            <a href="javascript:void(0)" class="page-btn">2</a>
            <a href="javascript:void(0)" class="page-btn">3</a>
            <a href="javascript:void(0)" class="page-btn">&gt;</a>
        </div>
    </div>
</asp:Content>
