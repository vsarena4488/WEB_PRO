<%@ Page Title="Tours" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeFile="Tours.aspx.cs" Inherits="Admin_Tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Tours
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; align-items: flex-start; justify-content: space-between; margin-bottom: 24px; gap: 16px; flex-wrap: wrap;">
        <div>
            <h2 style="font-size: 22px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Manage Tour Packages</h2>
            <p style="font-size: 13px; color: var(--text-muted);">View, edit, and organize all available tour packages across your platform.</p>
        </div>
        <div>
            <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn btn-primary">+ Add New Tour</a>
        </div>
    </div>

    <!-- Filter Toolbar -->
    <div class="admin-toolbar">
        <div class="admin-toolbar-left">
            <div class="admin-search-box">
                <svg class="admin-search-icon icon-svg" viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <asp:TextBox ID="txtTourSearch" runat="server" CssClass="form-control" placeholder="Search by tour name or ID..."></asp:TextBox>
            </div>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="All Categories" Value="" />
                <asp:ListItem Text="Beach" Value="beach" />
                <asp:ListItem Text="Mountain" Value="mountain" />
                <asp:ListItem Text="Heritage" Value="heritage" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control admin-select-filter">
                <asp:ListItem Text="Status: All" Value="" />
                <asp:ListItem Text="Active" Value="active" />
                <asp:ListItem Text="Inactive" Value="inactive" />
            </asp:DropDownList>
        </div>
    </div>

    <!-- Tours Table -->
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>TOUR INFO</th>
                    <th>DESTINATION</th>
                    <th>DURATION</th>
                    <th>BASE PRICE</th>
                    <th>STATUS</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa" class="admin-table-thumb" />
                            <div>
                                <div style="font-weight: 600; color: var(--text-heading);">Goa Beach Adventure</div>
                                <div style="font-size: 11px; color: var(--text-muted);">ID: TR-8001</div>
                            </div>
                        </div>
                    </td>
                    <td>Goa, India</td>
                    <td>4 Days / 3 Nights</td>
                    <td class="font-semibold">&#8377;12,000</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete tour TR-8001?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali" class="admin-table-thumb" />
                            <div>
                                <div style="font-weight: 600; color: var(--text-heading);">Manali Snow Peaks</div>
                                <div style="font-size: 11px; color: var(--text-muted);">ID: TR-8002</div>
                            </div>
                        </div>
                    </td>
                    <td>Himachal, India</td>
                    <td>5 Days / 4 Nights</td>
                    <td class="font-semibold">&#8377;15,000</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete tour TR-8002?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Kerala" class="admin-table-thumb" />
                            <div>
                                <div style="font-weight: 600; color: var(--text-heading);">Kerala Backwaters</div>
                                <div style="font-size: 11px; color: var(--text-muted);">ID: TR-8003</div>
                            </div>
                        </div>
                    </td>
                    <td>Kerala, India</td>
                    <td>3 Days / 2 Nights</td>
                    <td class="font-semibold">&#8377;13,500</td>
                    <td><span class="badge badge-inactive"><span class="badge-dot"></span>Inactive</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <button type="button" class="btn-icon" title="Activate" onclick="alert('Tour activated');"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg></button>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete tour TR-8003?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td>
                        <div class="admin-table-item-info">
                            <img src='<%= ResolveUrl("~/Assets/images/rajasthan.jpg") %>' alt="Rajasthan" class="admin-table-thumb" />
                            <div>
                                <div style="font-weight: 600; color: var(--text-heading);">Rajasthan Heritage</div>
                                <div style="font-size: 11px; color: var(--text-muted);">ID: TR-8004</div>
                            </div>
                        </div>
                    </td>
                    <td>Rajasthan, India</td>
                    <td>6 Days / 5 Nights</td>
                    <td class="font-semibold">&#8377;22,000</td>
                    <td><span class="badge badge-active"><span class="badge-dot"></span>Active</span></td>
                    <td>
                        <div class="admin-table-actions">
                            <a href='<%= ResolveUrl("~/User/TourDetails.aspx") %>' class="btn-icon" title="View"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="10" r="3"></circle></svg></a>
                            <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn-icon" title="Edit"><svg class="icon-svg" viewBox="0 0 24 24"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                            <button type="button" class="btn-icon btn-icon-danger" title="Delete" onclick="if(confirm('Delete tour TR-8004?')) this.closest('tr').remove();"><svg class="icon-svg" viewBox="0 0 24 24"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Table Pagination Footer -->
        <div class="pagination-wrapper">
            <div>Showing 1 to 4 of 35 tours</div>
            <div class="pagination">
                <a href="javascript:void(0)" class="page-btn">&lt;</a>
                <a href="javascript:void(0)" class="page-btn active">1</a>
                <a href="javascript:void(0)" class="page-btn">2</a>
                <a href="javascript:void(0)" class="page-btn">&gt;</a>
            </div>
        </div>
    </div>
</asp:Content>
