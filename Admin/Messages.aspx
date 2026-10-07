<%@ Page Title="Message Center" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Admin_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Message Center
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 24px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Customer Inquiries &amp; Support</h2>
        <p style="font-size: 13px; color: var(--text-muted);">View, reply to, and resolve questions submitted through the public Contact Us page.</p>
    </div>

    <!-- Filters Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtMessageSearch" runat="server" CssClass="form-control" placeholder="Search by ticket ID, email, or subject..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlMessageStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: All Messages" Value="" />
                <asp:ListItem Text="Unread" Value="unread" />
                <asp:ListItem Text="Resolved" Value="resolved" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Messages Table -->
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>TICKET ID</th>
                    <th>SENDER DETAILS</th>
                    <th>MESSAGE PREVIEW</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1 -->
                <tr>
                    <td class="font-semibold text-primary">0102</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span style="font-weight: 600; color: var(--text-heading);">Aman Gupta</span>
                            <span class="badge badge-pending" style="font-size: 10px; padding: 2px 6px;">Guest</span>
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">aman.g@example.com</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading); margin-bottom: 2px;">Payment Failure Issue</div>
                        <div style="font-size: 13px; color: var(--text-muted);">&ldquo;Hi, I tried booking the Goa tour but my credit card...&rdquo;</div>
                    </td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View Message" onclick="alert('Viewing inquiry #0102');"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Mark as Resolved" onclick="alert('Inquiry #0102 marked as resolved.');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td class="font-semibold text-primary">0101</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span style="font-weight: 600; color: var(--text-heading);">Neha Singh</span>
                            <span class="badge badge-upcoming" style="font-size: 10px; padding: 2px 6px;">User</span>
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">neha.singh@example.com</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading); margin-bottom: 2px;">Customizing Manali Package</div>
                        <div style="font-size: 13px; color: var(--text-muted);">&ldquo;Hello, is it possible to add an extra day to the Manali...&rdquo;</div>
                    </td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View Message" onclick="alert('Viewing inquiry #0101');"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Mark as Resolved" onclick="alert('Inquiry #0101 marked as resolved.');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td class="font-semibold text-muted">0098</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span style="font-weight: 600; color: var(--text-heading);">Rahul Sharma</span>
                            <span class="badge badge-upcoming" style="font-size: 10px; padding: 2px 6px;">User</span>
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">rahul@example.com</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading); margin-bottom: 2px;">Refund Status</div>
                        <div style="font-size: 13px; color: var(--text-muted);">&ldquo;Thank you, I have successfully received my refund...&rdquo;</div>
                    </td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View Message" onclick="alert('Viewing inquiry #0098');"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete message?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 3 of 42 messages</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
