<%@ Page Title="Bookings" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Admin_Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .status-badge-confirmed { background-color: #dcfce7 !important; color: #15803d !important; }
        .status-badge-confirmed .status-dot { background-color: #22c55e !important; }
        .status-badge-pending { background-color: #fef3c7 !important; color: #b45309 !important; }
        .status-badge-pending .status-dot { background-color: #f59e0b !important; }
        .status-badge-cancelled { background-color: #fee2e2 !important; color: #b91c1c !important; }
        .status-badge-cancelled .status-dot { background-color: #ef4444 !important; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Bookings
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Manage Customer Bookings</h2>
                <p class="admin-page-subheading">View, confirm, and manage all traveler reservations and payment statuses.</p>
            </div>
            <div>
                <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn-admin-add">+ Create Booking</a>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 320px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtBookingSearch" runat="server" CssClass="admin-search-input" placeholder="Search by ID, customer, phone, or tour..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlPackageFilter" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="All Tour Packages" Value="" />
                    <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                    <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                    <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                    <asp:ListItem Text="Rajasthan Heritage" Value="rajasthan" />
                </asp:DropDownList>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlBookingStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All" Value="" />
                    <asp:ListItem Text="Confirmed" Value="confirmed" />
                    <asp:ListItem Text="Pending" Value="pending" />
                    <asp:ListItem Text="Cancelled" Value="cancelled" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Bookings Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
                <thead>
                    <tr>
                        <th>BOOKING ID</th>
                        <th>CUSTOMER DETAILS</th>
                        <th>TOUR &amp; TRAVEL DATE</th>
                        <th>PAX</th>
                        <th>TOTAL AMOUNT</th>
                        <th>STATUS</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1 -->
                    <tr data-tour="goa" data-status="confirmed">
                        <td class="font-semibold" style="color: #2563eb; font-weight: 700;">TB10025</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Rahul Sharma</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 98765 43210</div>
                        </td>
                        <td>
                            <div style="font-weight: 500; color: #111827;">Goa Beach Adventure</div>
                            <div style="font-size: 0.78rem; color: #64748b;">15 Sep &ndash; 18 Sep 2026</div>
                        </td>
                        <td style="color: #64748b; font-weight: 500;">3 Guests</td>
                        <td>
                            <div style="font-weight: 700; color: #111827;">&#8377;36,000</div>
                            <div style="font-size: 0.75rem; color: #16a34a; font-weight: 600;">Paid (Card)</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-confirmed">
                                <span class="status-dot"></span>Confirmed
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="action-btn" title="View Details">
                                    <i class="far fa-eye"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Cancel Booking" onclick="if(confirm('Cancel booking TB10025?')) this.closest('tr').remove();">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-tour="manali" data-status="pending">
                        <td class="font-semibold" style="color: #2563eb; font-weight: 700;">TB10026</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Amit Kumar</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 87654 32109</div>
                        </td>
                        <td>
                            <div style="font-weight: 500; color: #111827;">Manali Snow Peaks</div>
                            <div style="font-size: 0.78rem; color: #64748b;">20 Sep &ndash; 24 Sep 2026</div>
                        </td>
                        <td style="color: #64748b; font-weight: 500;">2 Guests</td>
                        <td>
                            <div style="font-weight: 700; color: #111827;">&#8377;30,000</div>
                            <div style="font-size: 0.75rem; color: #d97706; font-weight: 600;">Awaiting Payment</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-pending">
                                <span class="status-dot"></span>Pending
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn action-btn-activate" title="Confirm Payment" onclick="alert('Booking approved and marked as Confirmed.');">
                                    <i class="fas fa-check"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Reject" onclick="if(confirm('Reject booking TB10026?')) this.closest('tr').remove();">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-tour="kerala" data-status="confirmed">
                        <td class="font-semibold" style="color: #2563eb; font-weight: 700;">TB10027</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Priya Patel</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 76543 21098</div>
                        </td>
                        <td>
                            <div style="font-weight: 500; color: #111827;">Kerala Backwaters</div>
                            <div style="font-size: 0.78rem; color: #64748b;">25 Sep &ndash; 27 Sep 2026</div>
                        </td>
                        <td style="color: #64748b; font-weight: 500;">2 Guests</td>
                        <td>
                            <div style="font-weight: 700; color: #111827;">&#8377;27,000</div>
                            <div style="font-size: 0.75rem; color: #16a34a; font-weight: 600;">Paid (UPI)</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-confirmed">
                                <span class="status-dot"></span>Confirmed
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="action-btn" title="View Details">
                                    <i class="far fa-eye"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Cancel Booking" onclick="if(confirm('Cancel booking TB10027?')) this.closest('tr').remove();">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 4 -->
                    <tr data-tour="rajasthan" data-status="cancelled">
                        <td class="font-semibold" style="color: #2563eb; font-weight: 700;">TB10028</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Vikram Singh</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 65432 10987</div>
                        </td>
                        <td>
                            <div style="font-weight: 500; color: #111827;">Rajasthan Heritage</div>
                            <div style="font-size: 0.78rem; color: #64748b;">01 Oct &ndash; 06 Oct 2026</div>
                        </td>
                        <td style="color: #64748b; font-weight: 500;">4 Guests</td>
                        <td>
                            <div style="font-weight: 700; color: #dc2626;">&#8377;88,000</div>
                            <div style="font-size: 0.75rem; color: #dc2626; font-weight: 600;">Refunded</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-cancelled">
                                <span class="status-dot"></span>Cancelled
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="action-btn" title="View Details">
                                    <i class="far fa-eye"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 4 of 680 bookings</span>
                <div class="pagination-controls">
                    <a href="javascript:void(0)" class="page-num-btn">&lt;</a>
                    <a href="javascript:void(0)" class="page-num-btn active">1</a>
                    <a href="javascript:void(0)" class="page-num-btn">2</a>
                    <a href="javascript:void(0)" class="page-num-btn">3</a>
                    <a href="javascript:void(0)" class="page-num-btn">&gt;</a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            var searchInput = document.getElementById('<%= txtBookingSearch.ClientID %>');
            var pkgSelect = document.getElementById('<%= ddlPackageFilter.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlBookingStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterBookings() {
                var query = (searchInput ? searchInput.value : '').toLowerCase().trim();
                var pkg = (pkgSelect ? pkgSelect.value : '').toLowerCase().trim();
                var status = (statusSelect ? statusSelect.value : '').toLowerCase().trim();

                var rows = tableBody ? Array.from(tableBody.querySelectorAll('tr:not(.no-results-row)')) : [];
                var visibleCount = 0;

                rows.forEach(function (row) {
                    var text = row.textContent.toLowerCase();
                    var rowTour = (row.getAttribute('data-tour') || '').toLowerCase();
                    var rowStatus = (row.getAttribute('data-status') || '').toLowerCase();

                    var matchesQuery = !query || text.indexOf(query) !== -1;
                    var matchesPkg = !pkg || rowTour.indexOf(pkg) !== -1 || text.indexOf(pkg) !== -1;
                    var matchesStatus = !status || rowStatus === status || text.indexOf(status) !== -1;

                    if (matchesQuery && matchesPkg && matchesStatus) {
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
                        emptyRow.innerHTML = '<td colspan="7" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching bookings found</div><div style="font-size: 0.82rem;">Try adjusting your search query or filters.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 680 bookings';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterBookings);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (pkgSelect) pkgSelect.addEventListener('change', filterBookings);
            if (statusSelect) statusSelect.addEventListener('change', filterBookings);
        });
    </script>
</asp:Content>
