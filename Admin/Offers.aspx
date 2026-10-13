<%@ Page Title="Offers" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="Admin_Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .status-badge-expired { background-color: #fee2e2 !important; color: #b91c1c !important; }
        .status-badge-expired .status-dot { background-color: #ef4444 !important; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Offers
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Manage Promotional Offers</h2>
                <p class="admin-page-subheading">Create discount codes, set validity periods, and assign promotions to specific tours.</p>
            </div>
            <div>
                <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="btn-admin-add">+ Add New Offer</a>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 320px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtOfferSearch" runat="server" CssClass="admin-search-input" placeholder="Search by offer name or tour..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlOfferStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All" Value="" />
                    <asp:ListItem Text="Active" Value="active" />
                    <asp:ListItem Text="Inactive" Value="inactive" />
                    <asp:ListItem Text="Expired" Value="expired" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Offers Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
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
                    <tr data-status="active">
                        <td>
                            <div class="tour-info-cell">
                                <div class="tour-thumb-box" style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                    <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa" class="tour-thumb-img" style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                </div>
                                <div>
                                    <div class="tour-name">Goa Summer Special</div>
                                    <div class="tour-id">CODE: GOASUMMER20</div>
                                </div>
                            </div>
                        </td>
                        <td style="font-weight: 700; color: #2563eb;">20% OFF</td>
                        <td style="color: #64748b;">Goa Beach Adventure</td>
                        <td style="color: #64748b;">01 May 2026 &ndash; 30 Jun 2026</td>
                        <td>
                            <span class="status-pill status-active">
                                <span class="status-dot"></span>Active
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="action-btn" title="Edit Offer">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Offer" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-status="active">
                        <td>
                            <div class="tour-info-cell">
                                <div class="tour-thumb-box" style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                    <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali" class="tour-thumb-img" style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                </div>
                                <div>
                                    <div class="tour-name">Himalayan Offer</div>
                                    <div class="tour-id">CODE: HIMPEAK15</div>
                                </div>
                            </div>
                        </td>
                        <td style="font-weight: 700; color: #2563eb;">15% OFF</td>
                        <td style="color: #64748b;">Manali Snow Peaks</td>
                        <td style="color: #64748b;">01 Jun 2026 &ndash; 15 Jul 2026</td>
                        <td>
                            <span class="status-pill status-active">
                                <span class="status-dot"></span>Active
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="action-btn" title="Edit Offer">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Offer" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-status="inactive">
                        <td>
                            <div class="tour-info-cell">
                                <div class="tour-thumb-box" style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                    <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Bali" class="tour-thumb-img" style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                </div>
                                <div>
                                    <div class="tour-name">Festive Bonanza</div>
                                    <div class="tour-id">CODE: DIWALI5000</div>
                                </div>
                            </div>
                        </td>
                        <td style="font-weight: 700; color: #111827;">&#8377;5,000 Flat</td>
                        <td style="color: #64748b;">ALL TOURS</td>
                        <td style="color: #64748b;">01 Oct 2026 &ndash; 31 Oct 2026</td>
                        <td>
                            <span class="status-pill status-inactive">
                                <span class="status-dot"></span>Inactive
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="action-btn" title="Edit Offer">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Offer" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 4 -->
                    <tr data-status="expired">
                        <td>
                            <div class="tour-info-cell">
                                <div class="tour-thumb-box" style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                    <img src='<%= ResolveUrl("~/Assets/images/kashmir.jpg") %>' alt="Kashmir" class="tour-thumb-img" style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                </div>
                                <div>
                                    <div class="tour-name">Early Bird Discount</div>
                                    <div class="tour-id">CODE: EARLY10</div>
                                </div>
                            </div>
                        </td>
                        <td style="font-weight: 700; color: #94a3b8;">10% OFF</td>
                        <td style="color: #64748b;">ALL TOURS</td>
                        <td style="color: #64748b;">01 Jan 2025 &ndash; 31 Dec 2025</td>
                        <td>
                            <span class="status-pill status-badge-expired">
                                <span class="status-dot"></span>Expired
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddOffer.aspx") %>' class="action-btn" title="Edit Offer">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Offer" onclick="if(confirm('Delete offer?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 4 of 12 offers</span>
                <div class="pagination-controls">
                    <a href="javascript:void(0)" class="page-num-btn">&lt;</a>
                    <a href="javascript:void(0)" class="page-num-btn active">1</a>
                    <a href="javascript:void(0)" class="page-num-btn">2</a>
                    <a href="javascript:void(0)" class="page-num-btn">&gt;</a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            var searchInput = document.getElementById('<%= txtOfferSearch.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlOfferStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterOffers() {
                var query = (searchInput ? searchInput.value : '').toLowerCase().trim();
                var status = (statusSelect ? statusSelect.value : '').toLowerCase().trim();

                var rows = tableBody ? Array.from(tableBody.querySelectorAll('tr:not(.no-results-row)')) : [];
                var visibleCount = 0;

                rows.forEach(function (row) {
                    var text = row.textContent.toLowerCase();
                    var rowStatus = (row.getAttribute('data-status') || '').toLowerCase();

                    var matchesQuery = !query || text.indexOf(query) !== -1;
                    var matchesStatus = !status || rowStatus === status || text.indexOf(status) !== -1;

                    if (matchesQuery && matchesStatus) {
                        row.style.display = '';
                        visibleCount++;
                    } else {
                        row.style.display = 'none';
                    }
                });

                // Empty state display
                var emptyRow = tableBody.querySelector('.no-results-row');
                if (visibleCount === 0) {
                    if (!emptyRow) {
                        emptyRow = document.createElement('tr');
                        emptyRow.className = 'no-results-row';
                        emptyRow.innerHTML = '<td colspan="6" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching promotional offers found</div><div style="font-size: 0.82rem;">Try adjusting your search query or status filter.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 12 offers';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterOffers);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (statusSelect) statusSelect.addEventListener('change', filterOffers);
        });
    </script>
</asp:Content>
