<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPages/Public.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Public_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="padding-top: 40px;">
        <!-- Centered Page Title -->
        <h1 class="text-center" style="font-size: 42px; font-weight: 700; color: var(--text-heading); margin-bottom: 20px;">About Us</h1>

        <!-- Story & Photo Row -->
        <div class="about-hero-row">
            <div>
                <h2 class="about-hero-title">We Create Unforgettable<br />Travel Experiences</h2>
                <p class="about-hero-p">
                    At TravelGo, we believe that travel is more than just visiting new places &ndash; it's about discovering new cultures, making lifelong memories, and enriching your soul.
                </p>
                <p class="about-hero-p">
                    Our mission is to provide well-planned, affordable, and enjoyable tour packages for everyone. Whether you are looking for a relaxing beach vacation, an adventurous trek, or a cultural getaway, we have something perfect for you.
                </p>
            </div>
            <div>
                <img src='<%= ResolveUrl("~/Assets/images/about-hero.jpg") %>' alt="Travelers with plane overhead" class="about-hero-img" />
            </div>
        </div>

        <!-- Why Choose Us Section -->
        <section class="why-choose-section">
            <span class="why-tag">WHY CHOOSE US</span>
            <h2 class="why-title">We Offer The Best For You</h2>

            <div class="features-grid-4">
                <!-- Feature 1 -->
                <div class="feature-box">
                    <div class="feature-icon-circle">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path></svg>
                    </div>
                    <h3 class="feature-box-title">Best Price Guarantee</h3>
                    <p class="feature-box-desc">We ensure the best prices for all our tour packages.</p>
                </div>

                <!-- Feature 2 -->
                <div class="feature-box">
                    <div class="feature-icon-circle">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                    </div>
                    <h3 class="feature-box-title">24/7 Customer Support</h3>
                    <p class="feature-box-desc">Our support team is always here to help you anytime.</p>
                </div>

                <!-- Feature 3 -->
                <div class="feature-box">
                    <div class="feature-icon-circle">
                        <svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg>
                    </div>
                    <h3 class="feature-box-title">Trusted & Safe</h3>
                    <p class="feature-box-desc">Your safety and satisfaction are our top priority.</p>
                </div>

                <!-- Feature 4 -->
                <div class="feature-box">
                    <div class="feature-icon-circle">
                        <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                    </div>
                    <h3 class="feature-box-title">Easy Booking</h3>
                    <p class="feature-box-desc">Book your favorite tours easily and quickly.</p>
                </div>
            </div>

            <!-- Stats Bar -->
            <div class="stats-card-strip">
                <div class="stat-item-box">
                    <svg class="stat-icon" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                    <div>
                        <div class="stat-number">10,00+</div>
                        <div class="stat-label">Happy<br />Travelers</div>
                    </div>
                </div>

                <div class="stat-item-box">
                    <svg class="stat-icon" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>
                    <div>
                        <div class="stat-number">150+</div>
                        <div class="stat-label">Destinations</div>
                    </div>
                </div>

                <div class="stat-item-box">
                    <svg class="stat-icon" viewBox="0 0 24 24"><path d="M19 6h-3V4c0-1.1-.9-2-2-2h-4c-1.1 0-2 .9-2 2v2H5c-1.1 0-2 .9-2 2v11c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-9-2h4v2h-4V4zm9 15H5V8h14v11z"/></svg>
                    <div>
                        <div class="stat-number">500+</div>
                        <div class="stat-label">Tour<br />Packages</div>
                    </div>
                </div>

                <div class="stat-item-box">
                    <svg class="stat-icon" viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                    <div>
                        <div class="stat-number">4.8/5</div>
                        <div class="stat-label">Customer Rating</div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
