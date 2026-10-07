<%@ Page Title="Wishlist" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="User_Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Wishlist
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-size: 20px; font-weight: 700; color: var(--text-heading); margin-bottom: 24px;">
        Your Saved Tours <span style="font-size: 15px; font-weight: 500; color: var(--text-muted);">(3 items)</span>
    </div>

    <div class="tours-grid-3">
        <!-- Wishlist Tour 1: Kashmir Paradise -->
        <div class="tour-card tour-card-interactive" id="wish1">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Remove from Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/kashmir.jpg") %>' alt="Kashmir Paradise" />
            </div>
            <h3 class="tour-card-title">Kashmir Paradise</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Kashmir, India</span> &bull; <span>5 Days / 4 Nights</span>
            </div>
            <div class="tour-card-price">16,999/-</div>
            <div class="tour-card-actions">
                <button type="button" class="btn btn-secondary btn-sm" onclick="document.getElementById('wish1').style.display='none';">Remove</button>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Wishlist Tour 2: Andaman Escape -->
        <div class="tour-card tour-card-interactive" id="wish2">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Remove from Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/andaman.jpg") %>' alt="Andaman Escape" />
            </div>
            <h3 class="tour-card-title">Andaman Escape</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Andaman, India</span> &bull; <span>4 Days / 3 Nights</span>
            </div>
            <div class="tour-card-price">19,999/-</div>
            <div class="tour-card-actions">
                <button type="button" class="btn btn-secondary btn-sm" onclick="document.getElementById('wish2').style.display='none';">Remove</button>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Wishlist Tour 3: Rajasthan Heritage -->
        <div class="tour-card tour-card-interactive" id="wish3">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Remove from Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/rajasthan.jpg") %>' alt="Rajasthan Heritage" />
            </div>
            <h3 class="tour-card-title">Rajasthan Heritage</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Rajasthan, India</span> &bull; <span>4 Days / 3 Nights</span>
            </div>
            <div class="tour-card-price">11,999/-</div>
            <div class="tour-card-actions">
                <button type="button" class="btn btn-secondary btn-sm" onclick="document.getElementById('wish3').style.display='none';">Remove</button>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>
    </div>
</asp:Content>
