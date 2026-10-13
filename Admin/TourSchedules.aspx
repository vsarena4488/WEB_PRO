<%@ Page Title="Tour Schedules" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="TourSchedules.aspx.cs" Inherits="Admin_TourSchedules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .status-badge-upcoming { background-color: #dbeafe !important; color: #1e40af !important; }
        .status-badge-upcoming .status-dot { background-color: #3b82f6 !important; }
        .status-badge-ongoing { background-color: #fef3c7 !important; color: #b45309 !important; }
        .status-badge-ongoing .status-dot { background-color: #f59e0b !important; }
        .status-badge-completed { background-color: #f1f5f9 !important; color: #475569 !important; }
        .status-badge-completed .status-dot { background-color: #64748b !important; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Tour Schedules
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Manage Schedules &amp; Inventory</h2>
                <p class="admin-page-subheading">Organize departure dates, assign tour guides, and track seat availability across your tours.</p>
            </div>
            <div>
                <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="btn-admin-add">+ Add New Schedule</a>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 320px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtScheduleSearch" runat="server" CssClass="admin-search-input" placeholder="Search by schedule ID, tour, or guide..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlTourFilter" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Filter by Tour Package..." Value="" />
                    <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                    <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                    <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                    <asp:ListItem Text="Rajasthan Heritage" Value="rajasthan" />
                </asp:DropDownList>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlScheduleStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All" Value="" />
                    <asp:ListItem Text="Upcoming" Value="upcoming" />
                    <asp:ListItem Text="Ongoing" Value="ongoing" />
                    <asp:ListItem Text="Completed" Value="completed" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Schedules Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
                <thead>
                    <tr>
                        <th>SCH ID</th>
                        <th>TOUR PACKAGE</th>
                        <th>DATES &amp; TIMING</th>
                        <th>INVENTORY</th>
                        <th>TOUR GUIDE</th>
                        <th>STATUS</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1 -->
                    <tr data-tour="goa" data-status="upcoming">
                        <td style="font-weight: 700; color: #2563eb;">SCH-001</td>
                        <td style="font-weight: 600; color: #111827;">Goa Beach Adventure</td>
                        <td style="color: #64748b;">15 Sep 2026 &ndash; 18 Sep 2026</td>
                        <td style="font-weight: 600; color: #111827;">15 / 30 seats</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 8px;">
                                <div style="width: 28px; height: 28px; border-radius: 50%; background: #e0e7ff; color: #2563eb; display: flex; align-items: center; justify-content: center; font-size: 0.72rem; font-weight: 700;">RK</div>
                                <span style="font-weight: 500; color: #111827;">Ravi Kumar</span>
                            </div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-upcoming">
                                <span class="status-dot"></span>Upcoming
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="action-btn" title="Edit Schedule">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete schedule SCH-001?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-tour="manali" data-status="ongoing">
                        <td style="font-weight: 700; color: #2563eb;">SCH-002</td>
                        <td style="font-weight: 600; color: #111827;">Manali Snow Peaks</td>
                        <td style="color: #64748b;">10 Aug 2026 &ndash; 15 Aug 2026</td>
                        <td style="font-weight: 600; color: #dc2626;">0 / 20 seats (Full)</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 8px;">
                                <div style="width: 28px; height: 28px; border-radius: 50%; background: #fef3c7; color: #b45309; display: flex; align-items: center; justify-content: center; font-size: 0.72rem; font-weight: 700;">AS</div>
                                <span style="font-weight: 500; color: #111827;">Anil Sharma</span>
                            </div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-ongoing">
                                <span class="status-dot"></span>Ongoing
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="action-btn" title="Edit Schedule">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete schedule SCH-002?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-tour="kerala" data-status="upcoming">
                        <td style="font-weight: 700; color: #2563eb;">SCH-003</td>
                        <td style="font-weight: 600; color: #111827;">Kerala Backwaters</td>
                        <td style="color: #64748b;">10 Oct 2026 &ndash; 12 Oct 2026</td>
                        <td style="font-weight: 600; color: #111827;">15 / 15 seats</td>
                        <td>
                            <span style="color: #94a3b8; font-style: italic;">Unassigned</span>
                        </td>
                        <td>
                            <span class="status-pill status-badge-upcoming">
                                <span class="status-dot"></span>Upcoming
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="action-btn" title="Edit Schedule">
                                    <i class="far fa-edit"></i>
                                </a>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete schedule SCH-003?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 4 -->
                    <tr data-tour="rajasthan" data-status="completed">
                        <td style="font-weight: 700; color: #2563eb;">SCH-004</td>
                        <td style="font-weight: 600; color: #111827;">Rajasthan Heritage</td>
                        <td style="color: #64748b;">05 Aug 2026 &ndash; 10 Aug 2026</td>
                        <td style="font-weight: 600; color: #64748b;">Completed (25/25)</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 8px;">
                                <div style="width: 28px; height: 28px; border-radius: 50%; background: #f1f5f9; color: #475569; display: flex; align-items: center; justify-content: center; font-size: 0.72rem; font-weight: 700;">SM</div>
                                <span style="font-weight: 500; color: #111827;">Suresh M.</span>
                            </div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-completed">
                                <span class="status-dot"></span>Completed
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="action-btn" title="View Tour">
                                    <i class="far fa-eye"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 4 of 12 schedules</span>
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
            var searchInput = document.getElementById('<%= txtScheduleSearch.ClientID %>');
            var tourSelect = document.getElementById('<%= ddlTourFilter.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlScheduleStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterSchedules() {
                var query = (searchInput ? searchInput.value : '').toLowerCase().trim();
                var tour = (tourSelect ? tourSelect.value : '').toLowerCase().trim();
                var status = (statusSelect ? statusSelect.value : '').toLowerCase().trim();

                var rows = tableBody ? Array.from(tableBody.querySelectorAll('tr:not(.no-results-row)')) : [];
                var visibleCount = 0;

                rows.forEach(function (row) {
                    var text = row.textContent.toLowerCase();
                    var rowTour = (row.getAttribute('data-tour') || '').toLowerCase();
                    var rowStatus = (row.getAttribute('data-status') || '').toLowerCase();

                    var matchesQuery = !query || text.indexOf(query) !== -1;
                    var matchesTour = !tour || rowTour.indexOf(tour) !== -1 || text.indexOf(tour) !== -1;
                    var matchesStatus = !status || rowStatus === status || text.indexOf(status) !== -1;

                    if (matchesQuery && matchesTour && matchesStatus) {
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
                        emptyRow.innerHTML = '<td colspan="7" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching tour schedules found</div><div style="font-size: 0.82rem;">Try adjusting your search query or filters.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 12 schedules';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterSchedules);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (tourSelect) tourSelect.addEventListener('change', filterSchedules);
            if (statusSelect) statusSelect.addEventListener('change', filterSchedules);
        });
    </script>
</asp:Content>
