<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 3 KPI Cards -->
    <style type="text/css">
        .admin-kpi-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
            margin-bottom: 32px;
        }
        @media (max-width: 900px) {
            .admin-kpi-grid {
                grid-template-columns: 1fr;
                gap: 16px;
            }
        }
        .dashboard-table th {
            white-space: nowrap;
        }
        .dashboard-table td {
            white-space: nowrap;
        }
    </style>

    <div class="admin-kpi-grid">
        <!-- KPI 1: Total Users -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px; border-radius: 14px;">
            <div style="width: 52px; height: 52px; border-radius: 12px; background-color: #EFF6FF; color: #2563EB; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <svg class="icon-svg" style="width: 26px; height: 26px;" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            </div>
            <div>
                <div style="font-size: 13px; font-weight: 500; color: var(--text-muted); margin-bottom: 2px;">Total Users</div>
                <div style="font-size: 30px; font-weight: 700; color: var(--text-heading); line-height: 1.1;">1,250</div>
            </div>
        </div>

        <!-- KPI 2: Active Tours -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px; border-radius: 14px;">
            <div style="width: 52px; height: 52px; border-radius: 12px; background-color: #FAF5FF; color: #7C3AED; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <svg class="icon-svg" style="width: 26px; height: 26px;" viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
            </div>
            <div>
                <div style="font-size: 13px; font-weight: 500; color: var(--text-muted); margin-bottom: 2px;">Active Tours</div>
                <div style="font-size: 30px; font-weight: 700; color: var(--text-heading); line-height: 1.1;">35</div>
            </div>
        </div>

        <!-- KPI 3: Total Bookings -->
        <div class="card" style="display: flex; align-items: center; gap: 20px; padding: 22px 24px; border-radius: 14px;">
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
    <div class="card" style="padding: 24px; margin-bottom: 32px; border-radius: 14px;">
        <div class="card-section-header" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
            <h3 class="card-section-title" style="font-size: 1.15rem; font-weight: 700; color: #0f172a; margin: 0;">Recently Registered Users</h3>
            <a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="kpi-link" style="font-weight: 600; font-size: 0.85rem; color: #2563eb; text-decoration: none;">View All Users &rarr;</a>
        </div>

        <div class="table-responsive" style="border: none;">
            <table class="data-table dashboard-table">
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
                        <td class="font-semibold" style="color: #0f172a;">1045</td>
                        <td style="font-weight: 500;">Amit Patel</td>
                        <td style="color: #64748b;">amit.patel@example.com</td>
                        <td>+91 98765 43210</td>
                        <td>Ahmedabad, Gujarat</td>
                        <td><span class="status-pill status-active"><span class="status-dot"></span>Active</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">View User</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold" style="color: #0f172a;">1046</td>
                        <td style="font-weight: 500;">Priya Desai</td>
                        <td style="color: #64748b;">priya.desai@example.com</td>
                        <td>+91 87654 32109</td>
                        <td>Surat, Gujarat</td>
                        <td><span class="status-pill status-active"><span class="status-dot"></span>Active</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">View User</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold" style="color: #0f172a;">1047</td>
                        <td style="font-weight: 500;">Rahul Sharma</td>
                        <td style="color: #64748b;">rahul.sharma@example.com</td>
                        <td>+91 76543 21098</td>
                        <td>New Delhi, Delhi</td>
                        <td><span class="status-pill status-inactive"><span class="status-dot"></span>Inactive</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">View User</a></td>
                    </tr>
                    <tr>
                        <td class="font-semibold" style="color: #0f172a;">1048</td>
                        <td style="font-weight: 500;">Anjali Mehta</td>
                        <td style="color: #64748b;">anjali.m@example.com</td>
                        <td>+91 65432 10987</td>
                        <td>Rajkot, Gujarat</td>
                        <td><span class="status-pill status-active"><span class="status-dot"></span>Active</span></td>
                        <td><a href='<%= ResolveUrl("~/Admin/Users.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">View User</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Section 2: Recent Booking Requests -->
    <div class="card" style="padding: 24px; border-radius: 14px;">
        <div class="card-section-header" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
            <h3 class="card-section-title" style="font-size: 1.15rem; font-weight: 700; color: #0f172a; margin: 0;">Recent Booking Requests</h3>
            <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="kpi-link" style="font-weight: 600; font-size: 0.85rem; color: #2563eb; text-decoration: none;">View All &rarr;</a>
        </div>

        <div class="table-responsive" style="border: none;">
            <table class="data-table dashboard-table">
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
                        <td class="font-semibold text-primary" style="font-weight: 700; color: #2563eb;">TB10025</td>
                        <td style="font-weight: 500;">Amit Patel</td>
                        <td style="color: #0f172a; font-weight: 500;">Goa Beach Tour</td>
                        <td style="color: #64748b;">15 Sep 2026</td>
                        <td class="font-semibold" style="font-weight: 700;">&#8377;18,000</td>
                        <td><span class="status-pill status-active"><span class="status-dot"></span>Confirmed</span></td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Details"
                                    data-title="Goa Beach Tour (TB10025)"
                                    data-id="TB10025"
                                    data-location="Goa Beach Tour"
                                    data-lbl1="Tour Package"
                                    data-duration="15 Sep 2026 (4 Days / 3 Nights)"
                                    data-lbl2="Travel Date"
                                    data-price="₹18,000 (Confirmed)"
                                    data-lbl3="Amount &amp; Status"
                                    data-category="Amit Patel (+91 98765 43210)"
                                    data-lbl4="Customer"
                                    data-status="Confirmed"
                                    data-img='<%= ResolveUrl("~/Assets/images/goa-details.jpg") %>'
                                    data-desctitle="Booking Summary"
                                    data-overview="Booking #TB10025 for customer Amit Patel. Scheduled departure for Goa Beach Tour on 15 Sep 2026. Payment of ₹18,000 confirmed."
                                    data-inclusions="4-Star Beach Resort Stay|Airport Private Transfer|North &amp; South Goa Sightseeing Tour|Complimentary Buffet Breakfast"
                                    data-link='<%= ResolveUrl("~/Admin/Bookings.aspx") %>'
                                    data-actiontext="Manage Booking"
                                    onclick="openTourModalFromBtn(this)">
                                    <i class="far fa-eye"></i>
                                </button>
                                <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">Manage</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary" style="font-weight: 700; color: #2563eb;">TB10026</td>
                        <td style="font-weight: 500;">Amit Kumar</td>
                        <td style="color: #0f172a; font-weight: 500;">Manali Adventure</td>
                        <td style="color: #64748b;">20 Sep 2026</td>
                        <td class="font-semibold" style="font-weight: 700;">&#8377;30,000</td>
                        <td><span class="status-pill status-badge-pending"><span class="status-dot"></span>Pending</span></td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Details"
                                    data-title="Manali Adventure (TB10026)"
                                    data-id="TB10026"
                                    data-location="Manali Adventure"
                                    data-lbl1="Tour Package"
                                    data-duration="20 Sep 2026 (5 Days / 4 Nights)"
                                    data-lbl2="Travel Date"
                                    data-price="₹30,000 (Pending)"
                                    data-lbl3="Amount &amp; Status"
                                    data-category="Amit Kumar (+91 87654 32109)"
                                    data-lbl4="Customer"
                                    data-status="Pending"
                                    data-img='<%= ResolveUrl("~/Assets/images/manali.jpg") %>'
                                    data-desctitle="Booking Summary"
                                    data-overview="Booking #TB10026 for customer Amit Kumar. Scheduled departure for Manali Adventure on 20 Sep 2026. Awaiting payment clearance."
                                    data-inclusions="Deluxe Mountain Resort Stay|Volvo AC Coach Transfer|Solang Valley &amp; Rohtang Pass Tour|Bonfire &amp; Musical Night"
                                    data-link='<%= ResolveUrl("~/Admin/Bookings.aspx") %>'
                                    data-actiontext="Manage Booking"
                                    onclick="openTourModalFromBtn(this)">
                                    <i class="far fa-eye"></i>
                                </button>
                                <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">Manage</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary" style="font-weight: 700; color: #2563eb;">TB10027</td>
                        <td style="font-weight: 500;">Priya Patel</td>
                        <td style="color: #0f172a; font-weight: 500;">Kerala Backwaters</td>
                        <td style="color: #64748b;">10 Oct 2026</td>
                        <td class="font-semibold" style="font-weight: 700;">&#8377;22,000</td>
                        <td><span class="status-pill status-active"><span class="status-dot"></span>Confirmed</span></td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Details"
                                    data-title="Kerala Backwaters (TB10027)"
                                    data-id="TB10027"
                                    data-location="Kerala Backwaters"
                                    data-lbl1="Tour Package"
                                    data-duration="10 Oct 2026 (4 Days / 3 Nights)"
                                    data-lbl2="Travel Date"
                                    data-price="₹22,000 (Confirmed)"
                                    data-lbl3="Amount &amp; Status"
                                    data-category="Priya Patel (Surat, Gujarat)"
                                    data-lbl4="Customer"
                                    data-status="Confirmed"
                                    data-img='<%= ResolveUrl("~/Assets/images/kerala.jpg") %>'
                                    data-desctitle="Booking Summary"
                                    data-overview="Booking #TB10027 for customer Priya Patel. Scheduled departure for Kerala Backwaters on 10 Oct 2026. Luxury houseboat accommodation reserved."
                                    data-inclusions="Traditional Alleppey Houseboat Stay|Munnar Tea Plantation Tour|All Meals Included Onboard|Private Airport Pickup from Kochi"
                                    data-link='<%= ResolveUrl("~/Admin/Bookings.aspx") %>'
                                    data-actiontext="Manage Booking"
                                    onclick="openTourModalFromBtn(this)">
                                    <i class="far fa-eye"></i>
                                </button>
                                <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">Manage</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="font-semibold text-primary" style="font-weight: 700; color: #2563eb;">TB10028</td>
                        <td style="font-weight: 500;">Vikram Singh</td>
                        <td style="color: #0f172a; font-weight: 500;">Rajasthan Heritage</td>
                        <td style="color: #64748b;">25 Oct 2026</td>
                        <td class="font-semibold" style="font-weight: 700;">&#8377;25,500</td>
                        <td><span class="status-pill status-badge-cancelled"><span class="status-dot"></span>Cancelled</span></td>
                        <td>
                            <div class="action-buttons-group">
                                <button type="button" class="action-btn" title="View Details"
                                    data-title="Rajasthan Heritage (TB10028)"
                                    data-id="TB10028"
                                    data-location="Rajasthan Heritage"
                                    data-lbl1="Tour Package"
                                    data-duration="25 Oct 2026 (5 Days / 4 Nights)"
                                    data-lbl2="Travel Date"
                                    data-price="₹25,500 (Cancelled)"
                                    data-lbl3="Amount &amp; Status"
                                    data-category="Vikram Singh (New Delhi)"
                                    data-lbl4="Customer"
                                    data-status="Cancelled"
                                    data-img='<%= ResolveUrl("~/Assets/images/rajasthan.jpg") %>'
                                    data-desctitle="Booking Summary"
                                    data-overview="Booking #TB10028 for customer Vikram Singh. Booking was cancelled upon customer request. Refund processed as per cancellation policy."
                                    data-inclusions="Heritage Haveli Accommodation|Desert Safari &amp; Camel Ride in Jaisalmer|Jaipur Forts Guided Tour|Cultural Dance &amp; Dinner Experience"
                                    data-link='<%= ResolveUrl("~/Admin/Bookings.aspx") %>'
                                    data-actiontext="Manage Booking"
                                    onclick="openTourModalFromBtn(this)">
                                    <i class="far fa-eye"></i>
                                </button>
                                <a href='<%= ResolveUrl("~/Admin/Bookings.aspx") %>' class="btn btn-secondary btn-sm" style="border-radius: 6px; font-weight: 500; padding: 5px 12px;">Manage</a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
