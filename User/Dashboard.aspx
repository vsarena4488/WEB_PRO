<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true"
    CodeFile="Dashboard.aspx.cs" Inherits="User_Dashboard" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">Dashboard</asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Welcome Banner -->
        <div class="welcome-banner">
            <h1>Welcome back, Arjun!</h1>
            <p>Find and book your dream tour with us.</p>
        </div>

        <!-- Stat Cards (5 Cards) -->
        <div class="stat-cards-grid">
            <!-- Card 1 -->
            <div class="stat-card">
                <div class="stat-icon-wrap blue"><i class="fas fa-suitcase"></i></div>
                <div class="stat-number">8</div>
                <div class="stat-label">Total Bookings</div>
                <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="stat-link">View all</a>
            </div>
            <!-- Card 2 -->
            <div class="stat-card">
                <div class="stat-icon-wrap orange"><i class="fas fa-clock"></i></div>
                <div class="stat-number">2</div>
                <div class="stat-label">Pending Bookings</div>
                <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="stat-link">View all</a>
            </div>
            <!-- Card 3 -->
            <div class="stat-card">
                <div class="stat-icon-wrap green"><i class="fas fa-check-circle"></i></div>
                <div class="stat-number">5</div>
                <div class="stat-label">Confirmed Bookings</div>
                <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="stat-link">View all</a>
            </div>
            <!-- Card 4 -->
            <div class="stat-card">
                <div class="stat-icon-wrap purple"><i class="fas fa-calendar-check"></i></div>
                <div class="stat-number">1</div>
                <div class="stat-label">Completed Tours</div>
                <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="stat-link">View all</a>
            </div>
            <!-- Card 5 -->
            <div class="stat-card">
                <div class="stat-icon-wrap red"><i class="fas fa-times-circle"></i></div>
                <div class="stat-number">1</div>
                <div class="stat-label">Cancelled Bookings</div>
                <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>' class="stat-link">View all</a>
            </div>
        </div>

        <!-- Recent Bookings Section -->
        <div class="section-header">
            <h5>Recent Bookings</h5>
            <a href='<%= ResolveUrl("~/User/MyBookings.aspx") %>'>View all</a>
        </div>
        <div class="table-container">
            <div class="table-responsive">
                <table class="table">
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
                            <td><strong>TB10025</strong></td>
                            <td>Goa Beach Tour</td>
                            <td>15 Jun 2025</td>
                            <td><strong>18,000/-</strong></td>
                            <td><span class="badge-status badge-confirmed">Confirmed</span></td>
                        </tr>
                        <tr>
                            <td><strong>TB10024</strong></td>
                            <td>Manali Adventure</td>
                            <td>20 Jul 2025</td>
                            <td><strong>22,500/-</strong></td>
                            <td><span class="badge-status badge-pending">Pending</span></td>
                        </tr>
                        <tr>
                            <td><strong>TB10023</strong></td>
                            <td>Kerala Backwaters</td>
                            <td>10 Aug 2025</td>
                            <td><strong>16,000/-</strong></td>
                            <td><span class="badge-status badge-confirmed">Confirmed</span></td>
                        </tr>
                        <tr>
                            <td><strong>TB10022</strong></td>
                            <td>Kashmir Paradise</td>
                            <td>05 Sep 2025</td>
                            <td><strong>25,000/-</strong></td>
                            <td><span class="badge-status badge-upcoming">Upcoming</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Latest Offers Section -->
        <div class="section-header">
            <h5>Latest Offers</h5>
            <a href='<%= ResolveUrl("~/User/Offers.aspx") %>'>View all</a>
        </div>
        <div class="offers-grid">
            <!-- Offer 1 -->
            <div class="offer-card">
                <div class="offer-img-box">
                    <img src='<%= ResolveUrl("~/Assets/images/summer-special.jpg") %>' alt="Summer Special"
                        class="offer-img" />
                </div>
                <div class="offer-content">
                    <h5 class="offer-title">Summer Special</h5>
                    <p class="offer-desc">Get 20% OFF on Goa Tours</p>
                    <span class="offer-validity">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-discount">
                    <div class="discount-percent">20%</div>
                    <div class="discount-label">OFF</div>
                </div>
            </div>
            <!-- Offer 2 -->
            <div class="offer-card">
                <div class="offer-img-box">
                    <img src='<%= ResolveUrl("~/Assets/images/himalayan-offer.jpg") %>' alt="Himalayan Offer"
                        class="offer-img cover" />
                </div>
                <div class="offer-content">
                    <h5 class="offer-title">Himalayan Offer</h5>
                    <p class="offer-desc">Flat 15% OFF on Himachal &amp; Kashmir Tours</p>
                    <span class="offer-validity">Valid till 15 Jul 2025</span>
                </div>
                <div class="offer-discount">
                    <div class="discount-percent">15%</div>
                    <div class="discount-label">OFF</div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <div class="footer-brand">
                <i class="fas fa-suitcase-rolling"></i> TravelGo
            </div>
            <p class="footer-desc">
                Explore the world with us and make your journey memorable.
            </p>
            <div class="social-links">
                <a href="javascript:void(0)" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="javascript:void(0)" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="javascript:void(0)" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
            </div>
            <div class="footer-bottom">
                &copy; 2025 TravelGo. All Rights Reserved.
            </div>
        </footer>
    </asp:Content>