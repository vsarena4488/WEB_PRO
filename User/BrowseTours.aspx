<%@ Page Title="Browse Tours" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="BrowseTours.aspx.cs" Inherits="User_BrowseTours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Browse Tours
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Filter Bar -->
    <div class="browse-filter-bar">
        <div class="browse-search-row">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by tour name or destination..."></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
        </div>

        <div class="browse-filters-row">
            <div class="browse-filter-item">
                <asp:DropDownList ID="ddlDestination" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed">
                    <asp:ListItem Text="All Destinations" Value="" />
                    <asp:ListItem Text="Goa, India" Value="goa" />
                    <asp:ListItem Text="Paris, France" Value="paris" />
                    <asp:ListItem Text="Kerala, India" Value="kerala" />
                    <asp:ListItem Text="Agra, India" Value="agra" />
                    <asp:ListItem Text="Geneva, Switzerland" Value="geneva" />
                    <asp:ListItem Text="Bali, Indonesia" Value="bali" />
                </asp:DropDownList>
            </div>

            <div class="browse-filter-item">
                <asp:DropDownList ID="ddlPrice" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed">
                    <asp:ListItem Text="All Prices" Value="" />
                    <asp:ListItem Text="Under ₹10,000" Value="1" />
                    <asp:ListItem Text="₹10,000 - ₹20,000" Value="2" />
                    <asp:ListItem Text="Above ₹20,000" Value="3" />
                </asp:DropDownList>
            </div>

            <div class="browse-filter-item">
                <asp:DropDownList ID="ddlDuration" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed">
                    <asp:ListItem Text="All Durations" Value="" />
                    <asp:ListItem Text="3 - 4 Days" Value="short" />
                    <asp:ListItem Text="5 - 6 Days" Value="medium" />
                    <asp:ListItem Text="7+ Days" Value="long" />
                </asp:DropDownList>
            </div>

            <div class="browse-filter-item">
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed">
                    <asp:ListItem Text="All Categories" Value="" />
                    <asp:ListItem Text="Beach" Value="beach" />
                    <asp:ListItem Text="Heritage & Culture" Value="heritage" />
                    <asp:ListItem Text="Adventure & Mountain" Value="mountain" />
                    <asp:ListItem Text="International" Value="intl" />
                </asp:DropDownList>
            </div>

            <div>
                <asp:LinkButton ID="btnReset" runat="server" CssClass="btn-icon" ToolTip="Reset Filters" OnClick="btnReset_Click">
                    <svg class="icon-svg" viewBox="0 0 24 24"><path d="M23 4v6h-6"></path><path d="M20.49 15a9 9 0 1 1-2.12-9.36L23 10"></path></svg>
                </asp:LinkButton>
            </div>
        </div>
    </div>

    <!-- Tours Count Header -->
    <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 20px;">
        Showing 1 to 6 of 24 tours
    </div>

    <!-- 6 Tours Grid -->
    <div class="tours-grid-3">
        <!-- Tour 1: Goa Beach Tour -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Tour" />
            </div>
            <h3 class="tour-card-title">Goa Beach Tour</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Goa, India</span> &bull; <span>3 Days / 2 Nights</span>
            </div>
            <div class="tour-card-price">8,999/-</div>
            <div class="tour-seats-info">Available Seats: 15</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Tour 2: Paris City Tour -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/paris.jpg") %>' alt="Paris City Tour" />
            </div>
            <h3 class="tour-card-title">Paris City Tour</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Paris, France</span> &bull; <span>4 Days / 3 Nights</span>
            </div>
            <div class="tour-card-price">12,999/-</div>
            <div class="tour-seats-info">Available Seats: 10</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Tour 3: Kerala Backwaters -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/kerala-card.jpg") %>' alt="Kerala Backwaters" />
            </div>
            <h3 class="tour-card-title">Kerala Backwaters</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Kerala, India</span> &bull; <span>4 Days / 3 Nights</span>
            </div>
            <div class="tour-card-price">13,499/-</div>
            <div class="tour-seats-info">Available Seats: 12</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Tour 4: Taj Mahal -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/taj-mahal.jpg") %>' alt="Taj Mahal" />
            </div>
            <h3 class="tour-card-title">Taj Mahal</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Agra, India</span> &bull; <span>5 Days / 4 Nights</span>
            </div>
            <div class="tour-card-price">14,999/-</div>
            <div class="tour-seats-info">Available Seats: 8</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Tour 5: Swiss Alps Explorer -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/swiss-alps.jpg") %>' alt="Swiss Alps Explorer" />
            </div>
            <h3 class="tour-card-title">Swiss Alps Explorer</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Geneva, Switzerland</span> &bull; <span>6 Days / 5 Nights</span>
            </div>
            <div class="tour-card-price">45,999/-</div>
            <div class="tour-seats-info">Available Seats: 5</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
            </div>
        </div>

        <!-- Tour 6: Bali Island Escape -->
        <div class="tour-card tour-card-interactive">
            <button type="button" class="wishlist-btn-overlay js-wishlist-toggle" aria-label="Save to Wishlist">
                <svg class="icon-svg-fill" viewBox="0 0 24 24" fill="#EF4444"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
            </button>
            <div class="tour-card-image-box">
                <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Bali Island Escape" />
            </div>
            <h3 class="tour-card-title">Bali Island Escape</h3>
            <div style="font-size: 13px; color: var(--text-muted); margin-bottom: 6px;">
                <span>Bali, Indonesia</span> &bull; <span>7 Days / 6 Nights</span>
            </div>
            <div class="tour-card-price">22,999/-</div>
            <div class="tour-seats-info">Available Seats: 20</div>
            <div class="tour-card-actions">
                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn btn-outline btn-sm">View Details</a>
                <a href='<%= ResolveUrl("~/User/Booking.aspx") %>' class="btn btn-primary btn-sm">Book Now</a>
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
            <span style="padding: 0 4px; color: var(--text-light);">&hellip;</span>
            <a href="javascript:void(0)" class="page-btn">&gt;</a>
        </div>
    </div>
</asp:Content>
