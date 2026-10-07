    <%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/Public.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Public_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1 class="hero-title">Explore The World</h1>
            <p class="hero-subtitle">Find the best tour packages and make your trip memorable.</p>

            <!-- Search Bar Container -->
            <div class="search-bar-container">
                <div class="search-bar-form">
                    <div class="search-field">
                        <asp:TextBox ID="txtSearchDestination" runat="server" placeholder="Select destination or tour..." CssClass="form-control" style="border:none; box-shadow:none;"></asp:TextBox>
                    </div>
                    <div class="search-field">
                        <asp:TextBox ID="txtSearchDate" runat="server" TextMode="Date" placeholder="Select Date" CssClass="form-control" style="border:none; box-shadow:none;"></asp:TextBox>
                    </div>
                    <div class="search-field">
                        <asp:DropDownList ID="ddlTravelers" runat="server" CssClass="form-control" style="border:none; box-shadow:none;">
                            <asp:ListItem Text="Travelers" Value="" />
                            <asp:ListItem Text="1 Traveler" Value="1" />
                            <asp:ListItem Text="2 Travelers" Value="2" Selected="True" />
                            <asp:ListItem Text="3 Travelers" Value="3" />
                            <asp:ListItem Text="4+ Travelers" Value="4" />
                        </asp:DropDownList>
                    </div>
                    <asp:Button ID="btnHeroSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnHeroSearch_Click" />
                </div>
            </div>
        </div>
    </section>

    <!-- Popular Tours Section -->
    <section class="container" id="tours" style="margin-bottom: 70px;">
        <div class="section-header">
            <h2 class="section-title">Popular Tours</h2>
        </div>

        <div class="tours-grid-4">
            <!-- Tour 1: Goa Beach Tour -->
            <div class="tour-card">
                <div class="tour-card-image-box">
                    <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Tour" />
                </div>
                <h3 class="tour-card-title">Goa Beach Tour</h3>
                <p class="tour-card-duration">3 Days | 2 Nights</p>
                <div class="tour-card-bottom">
                    <span class="tour-card-price">8,999 /-</span>
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                </div>
            </div>

            <!-- Tour 2: Manali Tour -->
            <div class="tour-card">
                <div class="tour-card-image-box">
                    <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali Tour" />
                </div>
                <h3 class="tour-card-title">Manali Tour</h3>
                <p class="tour-card-duration">4 Days | 3 Nights</p>
                <div class="tour-card-bottom">
                    <span class="tour-card-price">12,999 /-</span>
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                </div>
            </div>

            <!-- Tour 3: Himalayan Tour -->
            <div class="tour-card">
                <div class="tour-card-image-box">
                    <img src='<%= ResolveUrl("~/Assets/images/himalayan.jpg") %>' alt="Himalayan Tour" />
                </div>
                <h3 class="tour-card-title">Himalayan Tour</h3>
                <p class="tour-card-duration">5 Days | 4 Nights</p>
                <div class="tour-card-bottom">
                    <span class="tour-card-price">15,999 /-</span>
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                </div>
            </div>

            <!-- Tour 4: Kerala Tour -->
            <div class="tour-card">
                <div class="tour-card-image-box">
                    <img src='<%= ResolveUrl("~/Assets/images/kerala.jpg") %>' alt="Kerala Tour" />
                </div>
                <h3 class="tour-card-title">Kerala Tour</h3>
                <p class="tour-card-duration">4 Days | 3 Nights</p>
                <div class="tour-card-bottom">
                    <span class="tour-card-price">13,999 /-</span>
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Special Offers Section -->
    <section class="container" id="offers" style="margin-bottom: 70px;">
        <div class="section-header section-header-simple">
            <h2 class="section-title">Special Offers</h2>
        </div>

        <div class="offers-grid-2">
            <!-- Offer 1: Goa Summer Special -->
            <div class="offer-card">
                <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Summer Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Goa Summer Special</h3>
                    <p class="offer-card-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2026</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>

            <!-- Offer 2: Manali Early Bird -->
            <div class="offer-card">
                <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali Early Bird" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Manali Early Bird</h3>
                    <p class="offer-card-desc">Book 60 days in advance and save big on your mountain trip.</p>
                    <span class="offer-card-valid">Valid till 15 Aug 2026</span>
                </div>
                <div class="offer-badge">
                    15%<small>OFF</small>
                </div>
            </div>
        </div>
    </section>

    <!-- About Us & Contact Us Split Section -->
    <section class="container"  style="margin-bottom: 50px;">
        <div class="split-cards-row">
            <!-- About Us Card -->
            <div class="info-card">
                <div class="info-card-icon">
                    <svg class="icon-svg" viewBox="0 0 24 24"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>
                </div>
                <h3 class="info-card-title">About Us</h3>
                <p class="info-card-text">
                    We are a travel company that provides the best tour packages at affordable prices. We ensure safe, comfortable and memorable journeys for all our customers.
                </p>
                <div>
                    <a href='<%= ResolveUrl("~/Public/About.aspx") %>' class="btn btn-primary">Read More</a>
                </div>
            </div>

            <!-- Contact card: single card with left details and right form -->
            <div class="info-card contact-card" id="contact" style="display:flex;flex-wrap:wrap;gap:24px;align-items:flex-start;padding:22px;border-radius:10px;background:#fff;border:1px solid #eef6fb;box-shadow:0 6px 18px rgba(31,45,61,0.04);">
                <!-- Left column -->
                <div style="flex:1 1 45%;min-width:260px;display:flex;flex-direction:column;gap:14px;padding:6px 8px;">
                    <div style="display:flex;align-items:center;gap:12px;">
                        <div style="width:48px;height:48px;border-radius:50%;background:#eef7ff;display:flex;align-items:center;justify-content:center;border:1px solid #e1f0ff;">
                            <svg viewBox="0 0 24 24" style="width:22px;height:22px;fill:#2176ff;"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
                        </div>
                        <div>
                            <h3 style="margin:0;font-size:18px;font-weight:600;color:#122232;">Contact Us</h3>
                            <p style="margin:4px 0 0;font-size:13px;color:#6f7b86;">Have questions? We are here to help!</p>
                        </div>
                    </div>

                    <div style="margin-top:6px;display:flex;flex-direction:column;gap:10px;padding-left:60px;">
                        <div style="font-weight:600;color:#111827;">vsarena753@rku.ac.in</div>
                        <div style="font-weight:600;color:#111827;">+91 9876543210</div>
                        <div style="color:#111827;">123, Travel Street, Rajkot , India</div>
                    </div>
                </div>

                <!-- Right column: form -->
                <div style="flex:1 1 45%;min-width:300px;padding:6px 8px;">
                    <asp:Panel ID="pnlContactSuccess" runat="server" Visible="false" CssClass="badge badge-confirmed" style="padding:10px 14px; margin-bottom:12px; width:100%; justify-content:center;">
                        Thank you! Your message has been sent successfully.
                    </asp:Panel>

                    <div style="display:flex;flex-direction:column;gap:10px;">
                        <div>
                            <asp:TextBox ID="txtContactName" runat="server" CssClass="form-control" placeholder="Your Name" style="width:100%;padding:10px 12px;border-radius:8px;border:1px solid #e6eef6;background:#fbfdff;box-shadow:inset 0 1px 0 rgba(16,24,40,0.02);"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContactName" runat="server" ControlToValidate="txtContactName" ErrorMessage="Name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgContact" />
                        </div>

                        <div>
                            <asp:TextBox ID="txtContactEmail" runat="server" CssClass="form-control" placeholder="Your Email" style="width:100%;padding:10px 12px;border-radius:8px;border:1px solid #e6eef6;background:#fbfdff;box-shadow:inset 0 1px 0 rgba(16,24,40,0.02);"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContactEmail" runat="server" ControlToValidate="txtContactEmail" ErrorMessage="Email is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgContact" />
                            <asp:RegularExpressionValidator ID="revContactEmail" runat="server" ControlToValidate="txtContactEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Enter a valid email" CssClass="val-error" Display="Dynamic" ValidationGroup="vgContact" />
                        </div>

                        <div>
                            <asp:TextBox ID="txtContactMessage" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Your Message" style="width:100%;padding:10px 12px;border-radius:8px;border:1px solid #e6eef6;background:#fbfdff;box-shadow:inset 0 1px 0 rgba(16,24,40,0.02);min-height:110px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContactMessage" runat="server" ControlToValidate="txtContactMessage" ErrorMessage="Message is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgContact" />
                        </div>

                        <div>
                            <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="btn btn-primary btn-block" ValidationGroup="vgContact" OnClick="btnSendMessage_Click" style="width:100%;padding:12px 18px;border-radius:8px;background:#1976f3;border:none;color:#fff;font-weight:600;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
