<%@ Page Title="Users" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Admin_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Users
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Manage Traveler Accounts</h2>
                <p class="admin-page-subheading">View registered users, edit profiles, and manage account access statuses.</p>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 340px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtUserSearch" runat="server" CssClass="admin-search-input" placeholder="Search by name, email, phone, or ID..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlUserStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All Users" Value="" />
                    <asp:ListItem Text="Active" Value="active" />
                    <asp:ListItem Text="Inactive" Value="inactive" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Users Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
                <thead>
                    <tr>
                        <th>USER ID</th>
                        <th>CUSTOMER</th>
                        <th>CONTACT INFO</th>
                        <th>LOCATION</th>
                        <th>JOINED DATE</th>
                        <th>STATUS</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1 -->
                    <tr data-status="active">
                        <td style="font-weight: 700; color: #2563eb;">USR-1045</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 32px; height: 32px; border-radius: 50%; background: #e0e7ff; color: #2563eb; display: flex; align-items: center; justify-content: center; font-size: 0.75rem; font-weight: 700;">RS</div>
                                <span style="font-weight: 600; color: #111827;">Rahul Sharma</span>
                            </div>
                        </td>
                        <td>
                            <div style="color: #111827; font-weight: 500;">rahul@example.com</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 98765 43210</div>
                        </td>
                        <td style="color: #64748b;">New Delhi</td>
                        <td style="color: #64748b;">15 Jan 2026</td>
                        <td>
                            <span class="status-pill status-active">
                                <span class="status-dot"></span>Active
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Profile" onclick="alert('Viewing user USR-1045');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn" title="Edit User" onclick="alert('Editing user USR-1045');">
                                    <i class="far fa-edit"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Suspend User" onclick="alert('User USR-1045 status toggled.');">
                                    <i class="fas fa-ban"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-status="active">
                        <td style="font-weight: 700; color: #2563eb;">USR-1046</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 32px; height: 32px; border-radius: 50%; background: #fef3c7; color: #b45309; display: flex; align-items: center; justify-content: center; font-size: 0.75rem; font-weight: 700;">AK</div>
                                <span style="font-weight: 600; color: #111827;">Amit Kumar</span>
                            </div>
                        </td>
                        <td>
                            <div style="color: #111827; font-weight: 500;">amit.k@example.com</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 87654 32109</div>
                        </td>
                        <td style="color: #64748b;">Mumbai</td>
                        <td style="color: #64748b;">22 Mar 2026</td>
                        <td>
                            <span class="status-pill status-active">
                                <span class="status-dot"></span>Active
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Profile" onclick="alert('Viewing user USR-1046');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn" title="Edit User" onclick="alert('Editing user USR-1046');">
                                    <i class="far fa-edit"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Suspend User" onclick="alert('User USR-1046 status toggled.');">
                                    <i class="fas fa-ban"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-status="inactive">
                        <td style="font-weight: 700; color: #2563eb;">USR-1047</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 32px; height: 32px; border-radius: 50%; background: #f1f5f9; color: #475569; display: flex; align-items: center; justify-content: center; font-size: 0.75rem; font-weight: 700;">PP</div>
                                <span style="font-weight: 600; color: #111827;">Priya Patel</span>
                            </div>
                        </td>
                        <td>
                            <div style="color: #111827; font-weight: 500;">priya.p@example.com</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 76543 21098</div>
                        </td>
                        <td style="color: #64748b;">Ahmedabad</td>
                        <td style="color: #64748b;">10 Jun 2026</td>
                        <td>
                            <span class="status-pill status-inactive">
                                <span class="status-dot"></span>Inactive
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Profile" onclick="alert('Viewing user USR-1047');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-activate" title="Activate User" onclick="alert('User USR-1047 activated.');">
                                    <i class="fas fa-check"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 4 -->
                    <tr data-status="active">
                        <td style="font-weight: 700; color: #2563eb;">USR-1048</td>
                        <td>
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 32px; height: 32px; border-radius: 50%; background: #dcfce7; color: #15803d; display: flex; align-items: center; justify-content: center; font-size: 0.75rem; font-weight: 700;">VS</div>
                                <span style="font-weight: 600; color: #111827;">Vikram Singh</span>
                            </div>
                        </td>
                        <td>
                            <div style="color: #111827; font-weight: 500;">vikram.s@example.com</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">+91 65432 10987</div>
                        </td>
                        <td style="color: #64748b;">Jaipur</td>
                        <td style="color: #64748b;">05 Aug 2026</td>
                        <td>
                            <span class="status-pill status-active">
                                <span class="status-dot"></span>Active
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Profile" onclick="alert('Viewing user USR-1048');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn" title="Edit User" onclick="alert('Editing user USR-1048');">
                                    <i class="far fa-edit"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Suspend User" onclick="alert('User USR-1048 status toggled.');">
                                    <i class="fas fa-ban"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 4 of 1,250 users</span>
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
            var searchInput = document.getElementById('<%= txtUserSearch.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlUserStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterUsers() {
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
                        emptyRow.innerHTML = '<td colspan="7" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching traveler accounts found</div><div style="font-size: 0.82rem;">Try adjusting your search query or status filter.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 1,250 users';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterUsers);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (statusSelect) statusSelect.addEventListener('change', filterUsers);
        });
    </script>
</asp:Content>
