<%@ Page Title="Offers & Promotions" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="User_Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Offers &amp; Promotions
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="offers-page-header">
        <h2 class="offers-page-title">Exclusive Offers</h2>
        <p class="offers-page-subtitle">Apply these promo codes during checkout to save on your next adventure.</p>
    </div>

    <div class="offers-page-grid">
        <!-- Card 1: Goa Summer Special -->
        <div class="offer-card-item">
            <div class="offer-card-thumb">
                <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Summer Special" class="contain" />
            </div>
            <div class="offer-card-info">
                <h3 class="offer-info-title">Goa Summer Special</h3>
                <p class="offer-info-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                <span class="offer-info-valid">Valid till 30 Jun 2025</span>
                <div class="offer-info-discount">20% OFF</div>
                <div class="offer-info-actions">
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-offer-outline">View Details</a>
                    <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn-offer-primary">Book Now</a>
                </div>
            </div>
        </div>

        <!-- Card 2: Paris Special -->
        <div class="offer-card-item">
            <div class="offer-card-thumb">
                <img src='<%= ResolveUrl("~/Assets/images/paris.jpg") %>' alt="Paris Special" />
            </div>
            <div class="offer-card-info">
                <h3 class="offer-info-title">Paris Special</h3>
                <p class="offer-info-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                <span class="offer-info-valid">Valid till 30 Jun 2025</span>
                <div class="offer-info-discount">20% OFF</div>
                <div class="offer-info-actions">
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-offer-outline">View Details</a>
                    <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn-offer-primary">Book Now</a>
                </div>
            </div>
        </div>

        <!-- Card 3: Taj Mahal Special -->
        <div class="offer-card-item">
            <div class="offer-card-thumb">
                <img src='<%= ResolveUrl("~/Assets/images/taj-mahal.jpg") %>' alt="Taj Mahal Special" />
            </div>
            <div class="offer-card-info">
                <h3 class="offer-info-title">Taj Mahal Special</h3>
                <p class="offer-info-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                <span class="offer-info-valid">Valid till 30 Jun 2025</span>
                <div class="offer-info-discount">20% OFF</div>
                <div class="offer-info-actions">
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-offer-outline">View Details</a>
                    <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn-offer-primary">Book Now</a>
                </div>
            </div>
        </div>

        <!-- Card 4: Himalayan Special -->
        <div class="offer-card-item">
            <div class="offer-card-thumb">
                <img src='<%= ResolveUrl("~/Assets/images/himalayan.jpg") %>' alt="Himalayan Special" />
            </div>
            <div class="offer-card-info">
                <h3 class="offer-info-title">Himalayan Special</h3>
                <p class="offer-info-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                <span class="offer-info-valid">Valid till 30 Jun 2025</span>
                <div class="offer-info-discount">20% OFF</div>
                <div class="offer-info-actions">
                    <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-offer-outline">View Details</a>
                    <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn-offer-primary">Book Now</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
