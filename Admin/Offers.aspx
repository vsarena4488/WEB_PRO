<%@ Page Title="Offer Management" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="Admin_Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Offer Management
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; align-items: flex-start; justify-content: space-between; margin-bottom: 24px; gap: 16px; flex-wrap: wrap;">
        <div>
            <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Promotional Offers</h2>
            <p style="font-size: 13px; color: var(--text-muted);">Create discount codes, set validity periods, and assign promotions to specific tours.</p>
        </div>
        <div>
            <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn btn-primary">+ Add New Offer</a>
        </div>
    </div>

    <!-- Filters Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtOfferSearch" runat="server" CssClass="form-control" placeholder="Search by Promo Code or Name..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlOfferStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: All" Value="" />
                <asp:ListItem Text="Active" Value="active" />
                <asp:ListItem Text="Inactive" Value="inactive" />
                <asp:ListItem Text="Expired" Value="expired" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Offers Table -->
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>PROMO CODE &amp; NAME</th>
                    <th>DISCOUNT VALUE</th>
                    <th>APPLICABLE TOUR(S)</th>
                    <th>VALIDITY PERIOD</th>
                    <th>STATUS</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa" class="admin-table-thumb" />
                            <span style="font-weight: 600; color: var(--text-heading);">Goa Summer Special</span>
                        </div>
                    </td>
                    <td class="font-semibold text-primary">20% OFF</td>
                    <td>Goa Beach Adventure</td>
                    <td>01 May 2026 &ndash; 30 Jun 2026</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali" class="admin-table-thumb" />
                            <span style="font-weight: 600; color: var(--text-heading);">Himalayan Offer</span>
                        </div>
                    </td>
                    <td class="font-semibold text-primary">15% OFF</td>
                    <td>Manali Snow Peaks</td>
                    <td>01 Jun 2026 &ndash; 15 Jul 2026</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Bali" class="admin-table-thumb" />
                            <span style="font-weight: 600; color: var(--text-heading);">Festive Bonanza</span>
                        </div>
                    </td>
                    <td class="font-semibold">&#8377;5,000 Flat</td>
                    <td>ALL TOURS</td>
                    <td>01 Oct 2026 &ndash; 31 Oct 2026</td>
                    <td><span class="badge badge-inactive"><span class="badge-dot"></span>Inactive</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Bali" class="admin-table-thumb" />
                            <span style="font-weight: 600; color: var(--text-heading);">Early Bird Discount</span>
                        </div>
                    </td>
                    <td class="font-semibold text-primary">10% OFF</td>
                    <td>ALL TOURS</td>
                    <td>01 Jan 2025 &ndash; 31 Dec 2025</td>
                    <td><span class="badge badge-expired"><span class="badge-dot"></span>Expired</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 4 of 12 offers</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
