<%@ Page Title="Users" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Admin_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Users
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 24px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Traveler Accounts</h2>
        <p style="font-size: 13px; color: var(--text-muted);">View registered users, edit profiles, and manage account access statuses.</p>
    </div>

    <!-- Filters Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtUserSearch" runat="server" CssClass="form-control" placeholder="Search by Name, Email, or User ID..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlUserStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: All Users" Value="" />
                <asp:ListItem Text="Active" Value="active" />
                <asp:ListItem Text="Inactive" Value="inactive" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Users Table -->
    <div class="table-responsive">
        <table class="data-table">
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
                <tr>
                    <td class="font-semibold">1045</td>
                    <td>
                        <div class="admin-table-item-info">
                            <span class="admin-user-avatar-initials">RS</span>
                            <span style="font-weight: 600; color: var(--text-heading);">Rahul Sharma</span>
                        </div>
                    </td>
                    <td>
                        <div>rahul@example.com</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 98765 43210</div>
                    </td>
                    <td>New Delhi</td>
                    <td>15 Jan 2026</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Suspend User" onclick="alert('User 1045 status updated.');"><svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td class="font-semibold">1046</td>
                    <td>
                        <div class="admin-table-item-info">
                            <span class="admin-user-avatar-initials">AK</span>
                            <span style="font-weight: 600; color: var(--text-heading);">Amit Kumar</span>
                        </div>
                    </td>
                    <td>
                        <div>amit.k@example.com</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 87654 32109</div>
                    </td>
                    <td>Mumbai</td>
                    <td>22 Mar 2026</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Suspend User" onclick="alert('User 1046 status updated.');"><svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td class="font-semibold">1047</td>
                    <td>
                        <div class="admin-table-item-info">
                            <span class="admin-user-avatar-initials">PP</span>
                            <span style="font-weight: 600; color: var(--text-heading);">Priya Patel</span>
                        </div>
                    </td>
                    <td>
                        <div>priya.p@example.com</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 76543 21098</div>
                    </td>
                    <td>Ahmedabad</td>
                    <td>10 Jun 2026</td>
                    <td><span class="badge badge-inactive"><span class="badge-dot"></span>Inactive</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></button>
                            <button type="button" class="btn-icon" title="Activate User" onclick="alert('User 1047 activated.');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td class="font-semibold">1048</td>
                    <td>
                        <div class="admin-table-item-info">
                            <span class="admin-user-avatar-initials">VS</span>
                            <span style="font-weight: 600; color: var(--text-heading);">Vikram Singh</span>
                        </div>
                    </td>
                    <td>
                        <div>vikram.s@example.com</div>
                        <div style="font-size: 12px; color: var(--text-muted);">+91 65432 10987</div>
                    </td>
                    <td>Jaipur</td>
                    <td>05 Aug 2026</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Suspend User" onclick="alert('User 1048 status updated.');"><svg class="icon-svg" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 4 of 1,250 users</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">3</a>
                <span style="padding: 0 4px; color: var(--text-light);">&hellip;</span>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
