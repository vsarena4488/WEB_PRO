<%@ Page Title="Tour Details" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="TourDetails.aspx.cs" Inherits="User_TourDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Tour Details
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <a href='<%= ResolveUrl("~/User/BrowseTours.aspx") %>'>Browse Tours</a> &gt; <span class="text-dark font-medium">Goa Beach Adventure</span>
    </div>

    <div class="tour-details-layout">
        <!-- Left Column: Details, Itinerary, Overview -->
        <div>
            <!-- Hero Image Box -->
            <div class="tour-hero-img-box">
                <img src='<%= ResolveUrl("~/Assets/images/goa-details.jpg") %>' alt="Goa Beach Adventure" />
            </div>

            <h2 class="tour-detail-title">Goa Beach Adventure</h2>
            <div class="tour-detail-location">
                <svg class="icon-svg text-primary" style="width:16px; height:16px;" viewBox="0 0 24 24"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                <span>Goa, India</span>
            </div>

            <!-- Meta Pills -->
            <div class="meta-pills-row">
                <div class="meta-pill">
                    <div class="meta-pill-icon">
                        <svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                    </div>
                    <div>
                        <div class="meta-pill-label">Duration</div>
                        <div class="meta-pill-value">4 Days / 3 Nights</div>
                    </div>
                </div>

                <div class="meta-pill">
                    <div class="meta-pill-icon">
                        <svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76"></polygon></svg>
                    </div>
                    <div>
                        <div class="meta-pill-label">Tour Type</div>
                        <div class="meta-pill-value">Adventure &amp; Relax</div>
                    </div>
                </div>

                <div class="meta-pill">
                    <div class="meta-pill-icon">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                    </div>
                    <div>
                        <div class="meta-pill-label">Group Size</div>
                        <div class="meta-pill-value">Up to 30 People</div>
                    </div>
                </div>
            </div>

            <!-- Tour Overview -->
            <div class="detail-section">
                <h3 class="detail-section-title">Tour Overview</h3>
                <p style="font-size: 14px; color: var(--text-muted); line-height: 1.7;">
                    Experience the vibrant culture and pristine beaches of Goa on this 4-day adventure.
                    From thrilling water sports at Baga Beach to a serene sunset cruise on the Mandovi
                    River, this tour offers the perfect blend of excitement and relaxation. Explore ancient
                    churches in Old Goa, savor delicious local seafood, and enjoy the lively nightlife.
                </p>
            </div>

            <!-- What's Included & Excluded -->
            <div class="detail-section">
                <h3 class="detail-section-title">What's Included &amp; Excluded</h3>
                <div class="inclusions-grid">
                    <ul class="inclusion-list">
                        <li class="inclusion-item included">
                            <svg class="icon-svg" style="color:#059669; width:16px; height:16px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>3 Nights Hotel Accommodation (4-Star)</span>
                        </li>
                        <li class="inclusion-item included">
                            <svg class="icon-svg" style="color:#059669; width:16px; height:16px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>Daily Breakfast &amp; Dinner</span>
                        </li>
                        <li class="inclusion-item included">
                            <svg class="icon-svg" style="color:#059669; width:16px; height:16px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>Airport/Railway Station Transfers</span>
                        </li>
                        <li class="inclusion-item included">
                            <svg class="icon-svg" style="color:#059669; width:16px; height:16px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>Guided Sightseeing Tour of North &amp; South Goa</span>
                        </li>
                    </ul>

                    <ul class="inclusion-list">
                        <li class="inclusion-item excluded">
                            <svg class="icon-svg" style="color:#DC2626; width:16px; height:16px;" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                            <span>Flight / Train Tickets to Goa</span>
                        </li>
                        <li class="inclusion-item excluded">
                            <svg class="icon-svg" style="color:#DC2626; width:16px; height:16px;" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                            <span>Personal Expenses &amp; Tips</span>
                        </li>
                        <li class="inclusion-item excluded">
                            <svg class="icon-svg" style="color:#DC2626; width:16px; height:16px;" viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                            <span>Water Sports &amp; Adventure Activity Fees</span>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Tour Itinerary -->
            <div class="detail-section">
                <h3 class="detail-section-title">Tour Itinerary</h3>
                <div class="itinerary-timeline">
                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <h4 class="timeline-day-title">Day 1: Arrival &amp; Check-in</h4>
                        <p class="timeline-day-desc">Arrive at Goa Airport/Station. Meet our representative and transfer to your hotel. Spend the evening relaxing at the nearby beach.</p>
                    </div>

                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <h4 class="timeline-day-title">Day 2: North Goa Sightseeing</h4>
                        <p class="timeline-day-desc">After breakfast, visit Aguada Fort, Baga Beach, Calangute Beach, and Anjuna Beach. Enjoy optional water sports.</p>
                    </div>

                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <h4 class="timeline-day-title">Day 3: South Goa &amp; Sunset Cruise</h4>
                        <p class="timeline-day-desc">Explore the ancient churches of Old Goa, Mangueshi Fort, and Dona Paula. End the day with a spectacular Mandovi River cruise.</p>
                    </div>

                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <h4 class="timeline-day-title">Day 4: Departure</h4>
                        <p class="timeline-day-desc">After a hearty breakfast, check out from the hotel. Transfer to the airport with beautiful memories of your trip.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column: Sticky Booking Widget -->
        <div>
            <div class="sticky-book-card">
                <div class="book-price-row">
                    <div style="font-size: 13px; color: var(--text-muted);">Starting from</div>
                    <div class="book-price-amount">18,000/-</div>
                    <div class="book-price-note">Price per adult, inclusive of taxes.</div>
                </div>

                <div class="form-group">
                    <label class="form-label">Select Date</label>
                    <div class="input-with-icon">
                        <asp:TextBox ID="txtDateRange" runat="server" CssClass="form-control" Text="15 Jun 2026 - 18 Jun 2026"></asp:TextBox>
                        <span class="input-icon-right">
                            <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        </span>
                    </div>
                </div>

                <div class="form-group" style="margin-bottom: 24px;">
                    <label class="form-label">Guests</label>
                    <div class="input-with-icon">
                        <asp:TextBox ID="txtGuests" runat="server" CssClass="form-control" Text="2 Adults, 0 Children"></asp:TextBox>
                        <span class="input-icon-right">
                            <svg class="icon-svg" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle></svg>
                        </span>
                    </div>
                </div>

                <div style="display: flex; flex-direction: column; gap: 10px;">
                    <asp:Button ID="btnProceed" runat="server" Text="Proceed to Book" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnProceed_Click" />
                    <button type="button" class="btn btn-secondary btn-block js-wishlist-toggle" style="gap: 8px;">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                        <span>Add to Wishlist</span>
                    </button>
                </div>

                <!-- Need Help Box -->
                <div class="book-help-box">
                    <div style="font-weight: 600; font-size: 13px; color: var(--text-heading); margin-bottom: 4px;">Need Help Booking?</div>
                    <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 8px;">Our travel experts are ready to assist you.</div>
                    <div style="font-size: 14px; font-weight: 700; color: var(--primary);">
                        &#128222; +91 800 123 4567
                    </div>
                </div>

                <!-- Why Book With Us -->
                <div style="margin-top: 24px; padding-top: 20px; border-top: 1px solid var(--border-light);">
                    <div style="font-weight: 600; font-size: 14px; color: var(--text-heading); margin-bottom: 12px;">Why Book With Us?</div>
                    <ul style="list-style: none; display: flex; flex-direction: column; gap: 8px; font-size: 13px; color: var(--text-muted);">
                        <li style="display: flex; align-items: center; gap: 8px;">
                            <svg class="icon-svg text-primary" style="width:14px; height:14px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>Best Price Guarantee</span>
                        </li>
                        <li style="display: flex; align-items: center; gap: 8px;">
                            <svg class="icon-svg text-primary" style="width:14px; height:14px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>Free Cancellation up to 48 hours</span>
                        </li>
                        <li style="display: flex; align-items: center; gap: 8px;">
                            <svg class="icon-svg text-primary" style="width:14px; height:14px;" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            <span>24/7 Customer Support</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
