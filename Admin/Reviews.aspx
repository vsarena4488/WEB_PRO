<%@ Page Title="Reviews" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Admin_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .status-badge-approved { background-color: #dcfce7 !important; color: #15803d !important; }
        .status-badge-approved .status-dot { background-color: #22c55e !important; }
        .status-badge-pending { background-color: #fef3c7 !important; color: #b45309 !important; }
        .status-badge-pending .status-dot { background-color: #f59e0b !important; }
        .status-badge-hidden { background-color: #fee2e2 !important; color: #b91c1c !important; }
        .status-badge-hidden .status-dot { background-color: #ef4444 !important; }
        .star-gold { color: #f59e0b; }
        .star-gray { color: #cbd5e1; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Reviews
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Monitor Customer Feedback</h2>
                <p class="admin-page-subheading">Approve, hide, or moderate customer ratings and written reviews across all tours.</p>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 320px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtReviewSearch" runat="server" CssClass="admin-search-input" placeholder="Search by customer, tour, or comment..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlRatingFilter" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Rating: All Stars" Value="" />
                    <asp:ListItem Text="5 Stars" Value="5" />
                    <asp:ListItem Text="4 Stars" Value="4" />
                    <asp:ListItem Text="3 Stars & Below" Value="3" />
                </asp:DropDownList>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlReviewStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All" Value="" />
                    <asp:ListItem Text="Approved" Value="approved" />
                    <asp:ListItem Text="Pending" Value="pending" />
                    <asp:ListItem Text="Hidden" Value="hidden" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Reviews Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
                <thead>
                    <tr>
                        <th>CUSTOMER</th>
                        <th>TOUR PACKAGE</th>
                        <th>RATING &amp; REVIEW</th>
                        <th>DATE</th>
                        <th>STATUS</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1 -->
                    <tr data-rating="5" data-status="approved">
                        <td>
                            <div style="font-weight: 600; color: #111827;">Rahul Sharma</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">User ID: USR-1045</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Goa Beach Adventure</div>
                            <div style="font-size: 0.78rem; color: #64748b;">Booking: TB10025</div>
                        </td>
                        <td>
                            <div style="margin-bottom: 2px;">
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                            </div>
                            <div style="font-size: 0.82rem; color: #64748b; line-height: 1.4;">&ldquo;Amazing experience! The guide was very helpful throughout the trip.&rdquo;</div>
                        </td>
                        <td style="color: #64748b;">20 Sep 2026</td>
                        <td>
                            <span class="status-pill status-badge-approved">
                                <span class="status-dot"></span>Approved
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Review" onclick="alert('Viewing review by Rahul Sharma');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Review" onclick="if(confirm('Delete this review?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-rating="4" data-status="pending">
                        <td>
                            <div style="font-weight: 600; color: #111827;">Amit Kumar</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">User ID: USR-1046</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Manali Snow Peaks</div>
                            <div style="font-size: 0.78rem; color: #64748b;">Booking: TB10026</div>
                        </td>
                        <td>
                            <div style="margin-bottom: 2px;">
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="fas fa-star star-gold"></i>
                                <i class="far fa-star star-gray"></i>
                            </div>
                            <div style="font-size: 0.82rem; color: #64748b; line-height: 1.4;">&ldquo;Great tour and breathtaking views, but hotel food could be improved.&rdquo;</div>
                        </td>
                        <td style="color: #64748b;">25 Sep 2026</td>
                        <td>
                            <span class="status-pill status-badge-pending">
                                <span class="status-dot"></span>Pending
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn action-btn-activate" title="Approve Review" onclick="alert('Review approved.');">
                                    <i class="fas fa-check"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Review" onclick="if(confirm('Delete this review?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-rating="1" data-status="hidden">
                        <td>
                            <div style="font-weight: 600; color: #111827;">Vikram Singh</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">User ID: USR-1048</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Kerala Backwaters</div>
                            <div style="font-size: 0.78rem; color: #64748b;">Booking: TB10028</div>
                        </td>
                        <td>
                            <div style="margin-bottom: 2px;">
                                <i class="fas fa-star star-gold"></i>
                                <i class="far fa-star star-gray"></i>
                                <i class="far fa-star star-gray"></i>
                                <i class="far fa-star star-gray"></i>
                                <i class="far fa-star star-gray"></i>
                            </div>
                            <div style="font-size: 0.82rem; color: #dc2626; font-style: italic;">[Inappropriate comment flagged and hidden by admin]</div>
                        </td>
                        <td style="color: #64748b;">28 Sep 2026</td>
                        <td>
                            <span class="status-pill status-badge-hidden">
                                <span class="status-dot"></span>Hidden
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="Unhide Review" onclick="alert('Review unhidden.');">
                                    <i class="fas fa-undo"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete Review" onclick="if(confirm('Delete this review?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 3 of 85 reviews</span>
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
            var searchInput = document.getElementById('<%= txtReviewSearch.ClientID %>');
            var ratingSelect = document.getElementById('<%= ddlRatingFilter.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlReviewStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterReviews() {
                var query = (searchInput ? searchInput.value : '').toLowerCase().trim();
                var rating = (ratingSelect ? ratingSelect.value : '').toLowerCase().trim();
                var status = (statusSelect ? statusSelect.value : '').toLowerCase().trim();

                var rows = tableBody ? Array.from(tableBody.querySelectorAll('tr:not(.no-results-row)')) : [];
                var visibleCount = 0;

                rows.forEach(function (row) {
                    var text = row.textContent.toLowerCase();
                    var rowRating = (row.getAttribute('data-rating') || '').toLowerCase();
                    var rowStatus = (row.getAttribute('data-status') || '').toLowerCase();

                    var matchesQuery = !query || text.indexOf(query) !== -1;
                    var matchesRating = !rating || (rating === '3' ? parseInt(rowRating) <= 3 : rowRating === rating);
                    var matchesStatus = !status || rowStatus === status || text.indexOf(status) !== -1;

                    if (matchesQuery && matchesRating && matchesStatus) {
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
                        emptyRow.innerHTML = '<td colspan="6" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching reviews found</div><div style="font-size: 0.82rem;">Try adjusting your search query or filters.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 85 reviews';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterReviews);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (ratingSelect) ratingSelect.addEventListener('change', filterReviews);
            if (statusSelect) statusSelect.addEventListener('change', filterReviews);
        });
    </script>
</asp:Content>
