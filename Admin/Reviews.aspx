<%@ Page Title="Review Management" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Admin_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Review Management
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 24px;">
        <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Monitor Customer Feedback</h2>
        <p style="font-size: 13px; color: var(--text-muted);">Approve, hide, or delete reviews left by travelers on your tour packages.</p>
    </div>

    <!-- Filters Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtReviewSearch" runat="server" CssClass="form-control" placeholder="Search by Review ID, Tour, or User..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlRatingFilter" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Rating: All Stars" Value="" />
                <asp:ListItem Text="5 Stars" Value="5" />
                <asp:ListItem Text="4 Stars" Value="4" />
                <asp:ListItem Text="3 Stars & Below" Value="3" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlReviewStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: Pending (2)" Value="pending" />
                <asp:ListItem Text="Approved" Value="approved" />
                <asp:ListItem Text="Hidden" Value="hidden" />
                <asp:ListItem Text="All" Value="all" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Reviews Table -->
    <div class="table-responsive">
        <table class="data-table">
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
                <tr>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Rahul Sharma</div>
                        <div style="font-size: 12px; color: var(--text-muted);">1045</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Goa Beach Adventure</div>
                        <div style="font-size: 12px; color: var(--text-muted);">Booking: TB10025</div>
                    </td>
                    <td>
                        <div class="star-rating" style="margin-bottom: 4px;">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                        <div style="font-size: 13px; color: var(--text-muted); line-height: 1.4;">&ldquo;Amazing experience! The guide was very helpful...&rdquo;</div>
                    </td>
                    <td>20 Sep 2026</td>
                    <td><span class="badge badge-approved"><span class="badge-dot"></span>Approved</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="View Details"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete Review" onclick="if(confirm('Delete review?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Amit Kumar</div>
                        <div style="font-size: 12px; color: var(--text-muted);">1046</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Manali Snow Peaks</div>
                        <div style="font-size: 12px; color: var(--text-muted);">Booking: TB10026</div>
                    </td>
                    <td>
                        <div class="star-rating" style="margin-bottom: 4px;">&#9733;&#9733;&#9733;&#9733;<span class="star-empty">&#9733;</span></div>
                        <div style="font-size: 13px; color: var(--text-muted); line-height: 1.4;">&ldquo;Great tour, but the hotel food could be better.&rdquo;</div>
                    </td>
                    <td>25 Sep 2026</td>
                    <td><span class="badge badge-pending"><span class="badge-dot"></span>Pending</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="Approve Review" onclick="alert('Review approved.');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete Review" onclick="if(confirm('Delete review?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Vikram Singh</div>
                        <div style="font-size: 12px; color: var(--text-muted);">1048</div>
                    </td>
                    <td>
                        <div style="font-weight: 600; color: var(--text-heading);">Kerala Backwaters</div>
                        <div style="font-size: 12px; color: var(--text-muted);">Booking: TB10028</div>
                    </td>
                    <td>
                        <div class="star-rating" style="margin-bottom: 4px;">&#9733;<span class="star-empty">&#9733;&#9733;&#9733;&#9733;</span></div>
                        <div style="font-size: 13px; color: #DC2626; font-style: italic;">[Inappropriate comment hidden by admin]</div>
                    </td>
                    <td>28 Sep 2026</td>
                    <td><span class="badge badge-hidden"><span class="badge-dot"></span>Hidden</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <button type="button" class="btn-icon" title="Unhide Review" onclick="alert('Review unhidden.');"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path><line x1="1" y1="1" x2="23" y2="23"></line></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete Review" onclick="if(confirm('Delete review?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 3 of 85 reviews</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
