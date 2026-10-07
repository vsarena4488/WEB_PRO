<%@ Page Title="Offers & Promotions" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="User_Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Offers &amp; Promotions
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 28px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Exclusive Offers</h2>
        <p style="font-size: 14px; color: var(--text-muted);">Apply these promo codes during checkout to save on your next adventure.</p>
    </div>

    <div class="offers-grid-2">
        <!-- Offer 1 -->
        <div class="offer-card" style="flex-direction: column; align-items: stretch;">
            <div style="display: flex; gap: 20px; align-items: center;">
                <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Summer Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Goa Summer Special</h3>
                    <p class="offer-card-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>
            <div style="display: flex; gap: 10px; margin-top: 16px; border-top: 1px solid var(--border-light); padding-top: 14px;">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm" style="flex: 1;">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm" style="flex: 1;">Book Now</a>
            </div>
        </div>

        <!-- Offer 2 -->
        <div class="offer-card" style="flex-direction: column; align-items: stretch;">
            <div style="display: flex; gap: 20px; align-items: center;">
                <img src='<%= ResolveUrl("~/Assets/images/paris.jpg") %>' alt="Paris Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Paris Special</h3>
                    <p class="offer-card-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>
            <div style="display: flex; gap: 10px; margin-top: 16px; border-top: 1px solid var(--border-light); padding-top: 14px;">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm" style="flex: 1;">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm" style="flex: 1;">Book Now</a>
            </div>
        </div>

        <!-- Offer 3 -->
        <div class="offer-card" style="flex-direction: column; align-items: stretch;">
            <div style="display: flex; gap: 20px; align-items: center;">
                <img src='<%= ResolveUrl("~/Assets/images/taj-mahal.jpg") %>' alt="Taj Mahal Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Taj Mahal Special</h3>
                    <p class="offer-card-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>
            <div style="display: flex; gap: 10px; margin-top: 16px; border-top: 1px solid var(--border-light); padding-top: 14px;">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm" style="flex: 1;">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm" style="flex: 1;">Book Now</a>
            </div>
        </div>

        <!-- Offer 4 -->
        <div class="offer-card" style="flex-direction: column; align-items: stretch;">
            <div style="display: flex; gap: 20px; align-items: center;">
                <img src='<%= ResolveUrl("~/Assets/images/himalayan.jpg") %>' alt="Himalayan Special" class="offer-card-img" />
                <div class="offer-card-content">
                    <h3 class="offer-card-title">Himalayan Special</h3>
                    <p class="offer-card-desc">Get a flat 20% discount on all Goa beach tour packages.</p>
                    <span class="offer-card-valid">Valid till 30 Jun 2025</span>
                </div>
                <div class="offer-badge">
                    20%<small>OFF</small>
                </div>
            </div>
            <div style="display: flex; gap: 10px; margin-top: 16px; border-top: 1px solid var(--border-light); padding-top: 14px;">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm" style="flex: 1;">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm" style="flex: 1;">Book Now</a>
            </div>
        </div>
    </div>
</asp:Content>
