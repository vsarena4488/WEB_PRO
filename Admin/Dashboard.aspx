<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 3 KPI Cards -->
    <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px; margin-bottom: 32px;">
        <!-- KPI 1: Total Users -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px;">
            <div style="width: 52px; height: 52px; border-radius: 12px; background-color: #EFF6FF; color: #2563EB; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <svg class="icon-svg" style="width: 26px; height: 26px;" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            </div>
            <div>
                <div style="font-size: 13px; font-weight: 500; color: var(--text-muted); margin-bottom: 2px;">Total Users</div>
                <div style="font-size: 30px; font-weight: 700; color: var(--text-heading); line-height: 1.1;">1,250</div>
            </div>
        </div>

        <!-- KPI 2: Active Tours -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px;">
            <div style="width: 52px; height: 52px; border-radius: 12px; background-color: #FAF5FF; color: #7C3AED; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <svg class="icon-svg" style="width: 26px; height: 26px;" viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
            </div>
            <div>
                <div style="font-size: 13px; font-weight: 500; color: var(--text-muted); margin-bottom: 2px;">Active Tours</div>
                <div style="font-size: 30px; font-weight: 700; color: var(--text-heading); line-height: 1.1;">35</div>
            </div>
        </div>

        <!-- KPI 3: Total Bookings -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px;">
            <div style="width: 52px; height: 52px; border-radius: 12px; background-color: #FFF7ED; color: #EA580C; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <svg class="icon-svg" style="width: 26px; height: 26px;" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
            </div>
            <div>
                <div style="font-size: 13px; font-weight: 500; color: var(--text-muted); margin-bottom: 2px;">Total Bookings</div>
                <div style="font-size: 30px; font-weight: 700; color: var(--text-heading); line-height: 1.1;">680</div>
            </div>
        </div>
    </div>

    <!-- Section 1: Recently Registered Users -->
    <div class="card" style="padding: 20px 24px; margin-bottom: 32px;">
        <div class="card-section-header">
            <h3 class="card-section-title">Recently Registered Users</h3>
            <a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="kpi-link" style="font-weight: 600;">View All Users</a>
        </div>

        <div class="table-responsive" style="border: none;">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>USER ID</th>
                        <th>NAME</th>
                        <th>EMAIL ADDRESS</th>
                        <th>MOBILE NUMBER</th>
                        <th>LOCATION</th>
                        <th>STATUS</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="font-semibold">1045</td>
                        <td>Amit Patel</td>
                        <td>amit.patel@example.com</td>
                        <td>+91 98765 43210</td>
                        <td>Ahmedabad, Gujarat</td>
                        <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                        <td><button type="button" class="btn btn-secondary btn-sm">Inactive</button></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">1046</td>
                        <td>Priya Desai</td>
                        <td>priya.desai@example.com</td>
                        <td>+91 87654 32109</td>
                        <td>Surat, Gujarat</td>
                        <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                        <td><button type="button" class="btn btn-secondary btn-sm">Inactive</button></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">1047</td>
                        <td>Rahul Sharma</td>
                        <td>rahul.sharma@example.com</td>
                        <td>+91 76543 21098</td>
                        <td>New Delhi, Delhi</td>
                        <td><span class="badge badge-inactive"><span class="badge-dot"></span>Inactive</span></td>
                        <td><button type="button" class="btn btn-secondary btn-sm">Inactive</button></td>
                    </tr>
                    <tr>
                        <td class="font-semibold">1048</td>
                        <td>Anjali Mehta</td>
                        <td>anjali.m@example.com</td>
                        <td>+91 65432 10987</td>
                        <td>Rajkot, Gujarat</td>
                        <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                        <td><button type="button" class="btn btn-secondary btn-sm">Inactive</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Section 2: Recent Booking Requests -->
    <div class="card" style="padding: 20px 24px;">
        <div class="card-section-header">
            <h3 class="card-section-title">Recent Booking Requests</h3>
            <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="kpi-link" style="font-weight: 600;">View All</a>
        </div>

        <div class="table-responsive" style="border: none;">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>BOOKING ID</th>
                        <th>CUSTOMER</th>
                        <th>TOUR PACKAGE</th>
                        <th>TRAVEL DATE</th>
                        <th>AMOUNT</th>
                        <th>STATUS</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="font-semibold text-primary">TB10025</td>
                        <td>Amit Patel</td>
                        <td>Goa Beach Tour</td>
                        <td>15 Sep 2026</td>
                        <td class="font-semibold">18,000/-</td>
                        <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm">Manage</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary">TB10026</td>
                        <td>Amit Kumar</td>
                        <td>Manali Adventure</td>
                        <td>20 Sep 2026</td>
                        <td class="font-semibold">30,000/-</td>
                        <td><span class="badge badge-pending"><span class="badge-dot"></span>Pending</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm">Manage</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary">TB10027</td>
                        <td>Priya Patel</td>
                        <td>Kerala Backwaters</td>
                        <td>10 Oct 2026</td>
                        <td class="font-semibold">22,000/-</td>
                        <td><span class="badge badge-confirmed"><span class="badge-dot"></span>Confirmed</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm">Manage</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary">TB10028</td>
                        <td>Vikram Singh</td>
                        <td>Rajasthan Heritage</td>
                        <td>25 Oct 2026</td>
                        <td class="font-semibold">25,500/-</td>
                        <td><span class="badge badge-cancelled"><span class="badge-dot"></span>Cancelled</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm">Manage</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
