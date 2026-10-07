<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="User_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="welcome-banner">
        <h2 class="welcome-title">Welcome back, Arjun!</h2>
        <p class="welcome-subtitle">Find and book your dream tour with us.</p>
    </div>

    <!-- 5 KPI Stat Cards -->
    <div class="kpi-grid-5">
        <div class="kpi-card">
            <div class="kpi-icon kpi-icon-blue">
                <svg class="icon-svg" viewBox="0 0 24 24"><path d="M19 6h-3V4c0-1.1-.9-2-2-2h-4c-1.1 0-2 .9-2 2v2H5c-1.1 0-2 .9-2 2v11c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-9-2h4v2h-4V4zm9 15H5V8h14v11z"/></svg>
            </div>
            <div class="kpi-value">8</div>
            <div class="kpi-label">Total Bookings</div>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link">View all</a>
        </div>

        <div class="kpi-card">
            <div class="kpi-icon kpi-icon-orange">
                <svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
            </div>
            <div class="kpi-value">2</div>
            <div class="kpi-label">Pending Bookings</div>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link">View all</a>
        </div>

        <div class="kpi-card">
            <div class="kpi-icon kpi-icon-green">
                <svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
            </div>
            <div class="kpi-value">5</div>
            <div class="kpi-label">Confirmed Bookings</div>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link">View all</a>
        </div>

        <div class="kpi-card">
            <div class="kpi-icon kpi-icon-purple">
                <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
            </div>
            <div class="kpi-value">1</div>
            <div class="kpi-label">Completed Tours</div>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link">View all</a>
        </div>

        <div class="kpi-card">
            <div class="kpi-icon kpi-icon-red">
                <svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
            </div>
            <div class="kpi-value">1</div>
            <div class="kpi-label">Cancelled Bookings</div>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link">View all</a>
        </div>
    </div>

    <!-- Recent Bookings Table -->
    <div class="card" style="margin-bottom: 32px; padding: 20px 24px;">
        <div class="card-section-header">
            <h3 class="card-section-title">Recent Bookings</h3>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="kpi-link" style="font-weight: 600;">View all</a>
        </div>

        <div class="table-responsive" style="border: none;">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Tour Name</th>
                        <th>Travel Date</th>
                        <th>Amount</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="font-semibold">TB10025</td>
                        <td>Goa Beach Tour</td>
                        <td>15 Jun 2025</td>
                        <td class="font-semibold">18,000/-</td>
                        <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">TB10024</td>
                        <td>Manali Adventure</td>
                        <td>20 Jul 2025</td>
                        <td class="font-semibold">22,500/-</td>
                        <td><span class="badge badge-pending"><span class="badge-dot"></span>Pending</span></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">TB10023</td>
                        <td>Kerala Backwaters</td>
                        <td>10 Aug 2025</td>
                        <td class="font-semibold">16,000/-</td>
                        <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">TB10022</td>
                        <td>Kashmir Paradise</td>
                        <td>05 Sep 2025</td>
                        <td class="font-semibold">25,000/-</td>
                        <td><span class="badge badge-upcoming"><span class="badge-dot"></span>Upcoming</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Latest Offers Section -->
    <div class="card" style="padding: 20px 24px; margin-bottom: 40px;">
        <div class="card-section-header">
            <h3 class="card-section-title">Latest Offers</h3>
            <a href='<%= ResolveUrl("~/User/Offers.aspx") %>' class="kpi-link" style="font-weight: 600;">View all</a>
        </div>

        <div class="offers-grid-2" style="margin-bottom: 0;">
            <!-- Offer 1 -->
            <div class="offer-card">
                <img src='<%= ResolveUrl("~/Assets/images/summer-special.jpg") %>' alt="Summer Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Summer Special</h3>
                    <p class="offer-card-desc">Get 20% OFF on Goa Tours</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>

            <!-- Offer 2 -->
            <div class="offer-card">
                <img src='<%= ResolveUrl("~/Assets/images/himalayan-offer.jpg") %>' alt="Himalayan Offer" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Himalayan Offer</h3>
                    <p class="offer-card-desc">Flat 15% OFF on Himachal &amp; Kashmir Tours</p>
                    <span class="offer-card-valid">Valid till 15 Jul 2025</span>
                </div>
                <div class="offer-badge">
                    15%<small>OFF</small>
                </div>
            </div>
        </div>
    </div>

    <!-- Dark Footer inside Dashboard -->
    <footer class="public-footer" style="margin-top: 30px; border-radius: var(--radius-xl); padding: 40px 32px 24px;">
        <div class="footer-top" style="margin-bottom: 24px;">
            <a href='<%= ResolveUrl("~/Public/Home.aspx") %>' class="footer-brand">
                <svg viewBox="0 0 24 24">
                    <path d="M19 6h-3V4c0-1.1-.9-2-2-2h-4c-1.1 0-2 .9-2 2v2H5c-1.1 0-2 .9-2 2v11c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-9-2h4v2h-4V4zm9 15H5V8h14v11z"/>
                </svg>
                <span>TravelGo</span>
            </a>
            <p class="footer-slogan">Explore the world with us and make your journey memorable.</p>
            <div class="social-links">
                <a href="javascript:void(0)" class="social-btn" aria-label="Facebook"><svg class="icon-svg-fill" viewBox="0 0 24 24"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg></a>
                <a href="javascript:void(0)" class="social-btn" aria-label="Instagram"><svg class="icon-svg" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg></a>
                <a href="javascript:void(0)" class="social-btn" aria-label="X"><svg class="icon-svg-fill" viewBox="0 0 24 24"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg></a>
                <a href="javascript:void(0)" class="social-btn" aria-label="LinkedIn"><svg class="icon-svg-fill" viewBox="0 0 24 24"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg></a>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; 2025 TravelGo. All Rights Reserved.
        </div>
    </footer>
</asp:Content>
