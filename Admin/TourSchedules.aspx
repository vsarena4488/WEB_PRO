<%@ Page Title="Tour Schedule Management" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="TourSchedules.aspx.cs" Inherits="Admin_TourSchedules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Tour Schedule Management
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; align-items: flex-start; justify-content: space-between; margin-bottom: 24px; gap: 16px; flex-wrap: wrap;">
        <div>
            <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Schedules &amp; Inventory</h2>
            <p style="font-size: 13px; color: var(--text-muted);">Organize departure dates, assign guides, and track seat availability for your tours.</p>
        </div>
        <div>
            <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="btn btn-primary">+ Add New Schedule</a>
        </div>
    </div>

    <!-- Filter Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <asp:DropDownList ID="ddlTourFilter" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Filter by Tour Package..." Value="" />
                <asp:ListItem Text="Goa Beach Adventure" Value="goa" />
                <asp:ListItem Text="Manali Snow Peaks" Value="manali" />
                <asp:ListItem Text="Kerala Backwaters" Value="kerala" />
                <asp:ListItem Text="Rajasthan Heritage" Value="rajasthan" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="September 2026" Value="sep2026" />
                <asp:ListItem Text="October 2026" Value="oct2026" />
                <asp:ListItem Text="August 2026" Value="aug2026" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlScheduleStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: Upcoming" Value="upcoming" />
                <asp:ListItem Text="Ongoing" Value="ongoing" />
                <asp:ListItem Text="Completed" Value="completed" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Schedules Table -->
    <div class="table-responsive">
        <table class="data-table">
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
                <tr>
                    <td class="font-semibold">001</td>
                    <td class="font-semibold text-primary">Goa Beach Adventure</td>
                    <td>15 Sep 2026 &ndash; 18 Sep 2026</td>
                    <td class="font-semibold">15 / 30 seats</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span class="admin-user-avatar-initials">RK</span>
                            <span>Ravi Kumar</span>
                        </div>
                    </td>
                    <td><span class="badge badge-upcoming"><span class="badge-dot"></span>Upcoming</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete schedule 001?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td class="font-semibold">002</td>
                    <td class="font-semibold text-primary">Manali Snow Peaks</td>
                    <td>10 Aug 2026 &ndash; 15 Aug 2026</td>
                    <td class="font-semibold" style="color:#DC2626;">0 / 20 seats</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span class="admin-user-avatar-initials">AS</span>
                            <span>Anil Sharma</span>
                        </div>
                    </td>
                    <td><span class="badge badge-ongoing"><span class="badge-dot"></span>Ongoing</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete schedule 002?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td class="font-semibold">003</td>
                    <td class="font-semibold text-primary">Kerala Backwaters</td>
                    <td>10 Oct 2026 &ndash; 12 Oct 2026</td>
                    <td class="font-semibold">15 / 15 seats</td>
                    <td><span style="color:var(--text-muted); font-style:italic;">Unassigned</span></td>
                    <td><span class="badge badge-upcoming"><span class="badge-dot"></span>Upcoming</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/Admin/AddSchedule.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete schedule 003?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td class="font-semibold">004</td>
                    <td class="font-semibold text-primary">Rajasthan Heritage</td>
                    <td>05 Aug 2026 &ndash; 10 Aug 2026</td>
                    <td class="font-semibold" style="color:#DC2626;">0 / 25 seats</td>
                    <td>
                        <div style="display:flex; align-items:center; gap:8px;">
                            <span class="admin-user-avatar-initials">SM</span>
                            <span>Suresh M.</span>
                        </div>
                    </td>
                    <td><span class="badge badge-completed"><span class="badge-dot"></span>Completed</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 4 of 12 schedules</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
