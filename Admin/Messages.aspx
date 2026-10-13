<%@ Page Title="Message Center" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Admin_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .status-badge-unread { background-color: #fee2e2 !important; color: #b91c1c !important; }
        .status-badge-unread .status-dot { background-color: #ef4444 !important; }
        .status-badge-resolved { background-color: #dcfce7 !important; color: #15803d !important; }
        .status-badge-resolved .status-dot { background-color: #22c55e !important; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Message Center
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-card-container">
        <!-- Card Header -->
        <div class="admin-card-header">
            <div>
                <h2 class="admin-page-heading">Customer Inquiries &amp; Support</h2>
                <p class="admin-page-subheading">View, reply to, and resolve questions submitted through the public Contact Us page.</p>
            </div>
        </div>

        <!-- Filter Toolbar -->
        <div class="admin-filters-bar">
            <div class="admin-search-wrapper" style="width: 340px;">
                <i class="fas fa-search admin-search-icon"></i>
                <asp:TextBox ID="txtMessageSearch" runat="server" CssClass="admin-search-input" placeholder="Search by ticket ID, email, or subject..."></asp:TextBox>
            </div>
            <div class="admin-select-wrapper">
                <asp:DropDownList ID="ddlMessageStatus" runat="server" CssClass="admin-select-control">
                    <asp:ListItem Text="Status: All Messages" Value="" />
                    <asp:ListItem Text="Unread" Value="unread" />
                    <asp:ListItem Text="Resolved" Value="resolved" />
                </asp:DropDownList>
            </div>
        </div>

        <!-- Messages Table -->
        <div class="admin-table-wrap">
            <table class="admin-data-table">
                <thead>
                    <tr>
                        <th>TICKET ID</th>
                        <th>SENDER DETAILS</th>
                        <th>MESSAGE PREVIEW</th>
                        <th>STATUS</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1 -->
                    <tr data-status="unread">
                        <td style="font-weight: 700; color: #2563eb;">TCK-0102</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Aman Gupta</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">aman.g@example.com</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827; margin-bottom: 2px;">Payment Failure Issue</div>
                            <div style="font-size: 0.82rem; color: #64748b;">&ldquo;Hi, I tried booking the Goa tour but my credit card payment failed...&rdquo;</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-unread">
                                <span class="status-dot"></span>Unread
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Message" onclick="alert('Viewing inquiry TCK-0102');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-activate" title="Mark as Resolved" onclick="alert('Inquiry TCK-0102 marked as resolved.');">
                                    <i class="fas fa-check"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 2 -->
                    <tr data-status="unread">
                        <td style="font-weight: 700; color: #2563eb;">TCK-0101</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Neha Singh</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">neha.singh@example.com</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827; margin-bottom: 2px;">Customizing Manali Package</div>
                            <div style="font-size: 0.82rem; color: #64748b;">&ldquo;Hello, is it possible to add an extra day to the Manali itinerary?&rdquo;</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-unread">
                                <span class="status-dot"></span>Unread
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Message" onclick="alert('Viewing inquiry TCK-0101');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-activate" title="Mark as Resolved" onclick="alert('Inquiry TCK-0101 marked as resolved.');">
                                    <i class="fas fa-check"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Row 3 -->
                    <tr data-status="resolved">
                        <td style="font-weight: 700; color: #64748b;">TCK-0098</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Rahul Sharma</div>
                            <div style="font-size: 0.78rem; color: #94a3b8;">rahul@example.com</div>
                        </td>
                        <td>
                            <div style="font-weight: 600; color: #111827; margin-bottom: 2px;">Refund Confirmation</div>
                            <div style="font-size: 0.82rem; color: #64748b;">&ldquo;Thank you, I have successfully received the refund in my account.&rdquo;</div>
                        </td>
                        <td>
                            <span class="status-pill status-badge-resolved">
                                <span class="status-dot"></span>Resolved
                            </span>
                        </td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Message" onclick="alert('Viewing inquiry TCK-0098');">
                                    <i class="far fa-eye"></i>
                                </button>
                                <button type="button" class="action-btn action-btn-delete" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Table Pagination Footer -->
            <div class="admin-pagination-row">
                <span class="pagination-count">Showing 1 to 3 of 42 messages</span>
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
            var searchInput = document.getElementById('<%= txtMessageSearch.ClientID %>');
            var statusSelect = document.getElementById('<%= ddlMessageStatus.ClientID %>');
            var tableBody = document.querySelector('.admin-data-table tbody');
            var countLabel = document.querySelector('.pagination-count');

            function filterMessages() {
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
                        emptyRow.innerHTML = '<td colspan="5" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching inquiries found</div><div style="font-size: 0.82rem;">Try adjusting your search query or status filter.</div></td>';
                        tableBody.appendChild(emptyRow);
                    } else {
                        emptyRow.style.display = '';
                    }
                } else if (emptyRow) {
                    emptyRow.style.display = 'none';
                }

                if (countLabel) {
                    countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 42 messages';
                }
            }

            if (searchInput) {
                searchInput.addEventListener('input', filterMessages);
                searchInput.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') e.preventDefault();
                });
            }
            if (statusSelect) statusSelect.addEventListener('change', filterMessages);
        });
    </script>
</asp:Content>
