<%@ Page Title="Tours" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true"
    CodeFile="Tours.aspx.cs" Inherits="Admin_Tours" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            /* Admin Tours Page Styles (Figma Spec) */
            .admin-card-container {
                background-color: #ffffff !important;
                border: 1px solid #eef2f6 !important;
                border-radius: 16px !important;
                padding: 32px !important;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04) !important;
                margin: 0 !important;
                width: 100% !important;
                box-sizing: border-box !important;
            }

            .admin-card-header {
                display: flex !important;
                justify-content: space-between !important;
                align-items: flex-start !important;
                margin-bottom: 24px !important;
                gap: 16px !important;
                flex-wrap: wrap !important;
            }

            .admin-page-heading {
                font-size: 1.45rem !important;
                font-weight: 700 !important;
                color: #111827 !important;
                margin: 0 0 6px 0 !important;
                letter-spacing: -0.02em !important;
                line-height: 1.2 !important;
            }

            .admin-page-subheading {
                font-size: 0.88rem !important;
                color: #64748b !important;
                margin: 0 !important;
                font-weight: 400 !important;
            }

            .btn-admin-add {
                background-color: #2563eb !important;
                color: #ffffff !important;
                font-size: 0.88rem !important;
                font-weight: 600 !important;
                padding: 10px 20px !important;
                border-radius: 8px !important;
                text-decoration: none !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                border: none !important;
                cursor: pointer !important;
                transition: background-color 0.15s ease, box-shadow 0.15s ease !important;
                box-shadow: 0 1px 2px rgba(37, 99, 235, 0.2) !important;
            }

            .btn-admin-add:hover {
                background-color: #1d4ed8 !important;
                color: #ffffff !important;
                box-shadow: 0 2px 4px rgba(37, 99, 235, 0.3) !important;
            }

            .admin-filters-bar {
                display: flex !important;
                gap: 14px !important;
                align-items: center !important;
                margin-bottom: 28px !important;
                flex-wrap: wrap !important;
            }

            .admin-search-wrapper {
                position: relative !important;
                width: 280px !important;
            }

            .admin-search-wrapper .admin-search-icon {
                position: absolute !important;
                left: 14px !important;
                top: 50% !important;
                transform: translateY(-50%) !important;
                color: #94a3b8 !important;
                font-size: 0.85rem !important;
                pointer-events: none !important;
            }

            .admin-search-input {
                width: 100% !important;
                height: 42px !important;
                padding: 8px 14px 8px 38px !important;
                border: 1px solid #e2e8f0 !important;
                border-radius: 8px !important;
                font-size: 0.85rem !important;
                color: #111827 !important;
                background-color: #ffffff !important;
                outline: none !important;
                box-sizing: border-box !important;
                font-family: inherit !important;
                transition: border-color 0.15s, box-shadow 0.15s !important;
            }

            .admin-search-input:focus {
                border-color: #2563eb !important;
                box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12) !important;
            }

            .admin-search-input::placeholder {
                color: #94a3b8 !important;
            }

            .admin-select-wrapper {
                position: relative !important;
            }

            .admin-select-control {
                height: 42px !important;
                padding: 8px 38px 8px 16px !important;
                border: 1px solid #e2e8f0 !important;
                border-radius: 8px !important;
                font-size: 0.85rem !important;
                color: #374151 !important;
                background-color: #ffffff !important;
                outline: none !important;
                cursor: pointer !important;
                font-family: inherit !important;
                appearance: none !important;
                -webkit-appearance: none !important;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='%2364748b'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E") !important;
                background-repeat: no-repeat !important;
                background-position: right 14px center !important;
                background-size: 14px !important;
                box-sizing: border-box !important;
                transition: border-color 0.15s !important;
            }

            .admin-select-control:focus {
                border-color: #2563eb !important;
            }

            .admin-table-wrap {
                width: 100% !important;
                overflow-x: auto !important;
            }

            .admin-data-table {
                width: 100% !important;
                border-collapse: collapse !important;
                font-size: 0.88rem !important;
            }

            .admin-data-table th {
                text-align: left !important;
                padding: 14px 12px !important;
                font-size: 0.72rem !important;
                font-weight: 700 !important;
                color: #64748b !important;
                letter-spacing: 0.05em !important;
                border-bottom: 1px solid #e2e8f0 !important;
                text-transform: uppercase !important;
                white-space: nowrap !important;
            }

            .admin-data-table td {
                padding: 18px 12px !important;
                vertical-align: middle !important;
                border-bottom: 1px solid #f1f5f9 !important;
                white-space: nowrap !important;
            }

            .admin-data-table tbody tr:hover td {
                background-color: #fafcff !important;
            }

            .tour-info-cell {
                display: flex !important;
                align-items: center !important;
                gap: 14px !important;
            }

            .tour-thumb-box {
                width: 58px !important;
                height: 40px !important;
                border-radius: 8px !important;
                overflow: hidden !important;
                background-color: #f1f5f9 !important;
                flex-shrink: 0 !important;
                display: flex !important;
                align-items: center !important;
                justify-content: center !important;
                box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05) !important;
            }

            .tour-thumb-img {
                width: 58px !important;
                height: 40px !important;
                max-width: 58px !important;
                max-height: 40px !important;
                object-fit: cover !important;
                display: block !important;
            }

            .tour-name {
                font-size: 0.92rem !important;
                font-weight: 600 !important;
                color: #111827 !important;
                margin-bottom: 2px !important;
            }

            .tour-id {
                font-size: 0.76rem !important;
                color: #94a3b8 !important;
                font-weight: 500 !important;
            }

            .text-dest,
            .text-duration {
                color: #64748b !important;
                font-size: 0.88rem !important;
            }

            .text-price {
                font-weight: 700 !important;
                color: #111827 !important;
                font-size: 0.92rem !important;
            }

            .status-pill {
                display: inline-flex !important;
                align-items: center !important;
                gap: 6px !important;
                padding: 4px 12px !important;
                border-radius: 20px !important;
                font-size: 0.76rem !important;
                font-weight: 600 !important;
            }

            .status-active {
                background-color: #dcfce7 !important;
                color: #15803d !important;
            }

            .status-inactive {
                background-color: #f1f5f9 !important;
                color: #475569 !important;
            }

            .status-dot {
                width: 6px !important;
                height: 6px !important;
                border-radius: 50% !important;
                display: inline-block !important;
            }

            .status-active .status-dot {
                background-color: #22c55e !important;
            }

            .status-inactive .status-dot {
                background-color: #64748b !important;
            }

            .action-buttons-group {
                display: flex !important;
                align-items: center !important;
                gap: 8px !important;
            }

            .action-btn {
                width: 32px !important;
                height: 32px !important;
                border-radius: 6px !important;
                background-color: #ffffff !important;
                border: 1px solid #e2e8f0 !important;
                color: #64748b !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                cursor: pointer !important;
                transition: all 0.15s ease !important;
                text-decoration: none !important;
                font-size: 0.82rem !important;
                padding: 0 !important;
            }

            .action-btn:hover {
                color: #2563eb !important;
                border-color: #2563eb !important;
                background-color: #eff6ff !important;
            }

            .action-btn.action-btn-activate:hover {
                color: #16a34a !important;
                border-color: #16a34a !important;
                background-color: #f0fdf4 !important;
            }

            .action-btn.action-btn-delete:hover {
                color: #dc2626 !important;
                border-color: #dc2626 !important;
                background-color: #fef2f2 !important;
            }

            .admin-pagination-row {
                display: flex !important;
                justify-content: space-between !important;
                align-items: center !important;
                margin-top: 24px !important;
                padding-top: 18px !important;
                border-top: 1px solid #f1f5f9 !important;
                flex-wrap: wrap !important;
                gap: 12px !important;
            }

            .pagination-count {
                font-size: 0.82rem !important;
                color: #94a3b8 !important;
                font-weight: 400 !important;
            }

            .pagination-controls {
                display: flex !important;
                gap: 6px !important;
                align-items: center !important;
            }

            .page-num-btn {
                width: 32px !important;
                height: 32px !important;
                border-radius: 6px !important;
                border: 1px solid #e2e8f0 !important;
                background-color: #ffffff !important;
                color: #64748b !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                font-size: 0.82rem !important;
                font-weight: 500 !important;
                text-decoration: none !important;
                transition: all 0.15s ease !important;
            }

            .page-num-btn:hover {
                border-color: #cbd5e1 !important;
                background-color: #f8fafc !important;
                color: #334155 !important;
            }

            .page-num-btn.active {
                background-color: #2563eb !important;
                border-color: #2563eb !important;
                color: #ffffff !important;
                font-weight: 600 !important;
            }
        </style>
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
        Tours
    </asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Embedded Fallback Style to ensure 100% rendering regardless of browser cache -->
        <style type="text/css">
            .admin-card-container {
                background-color: #ffffff !important;
                border: 1px solid #eef2f6 !important;
                border-radius: 16px !important;
                padding: 32px !important;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04) !important;
                margin: 0 !important;
                width: 100% !important;
                box-sizing: border-box !important;
            }

            .admin-card-header {
                display: flex !important;
                justify-content: space-between !important;
                align-items: flex-start !important;
                margin-bottom: 24px !important;
                gap: 16px !important;
                flex-wrap: wrap !important;
            }

            .admin-page-heading {
                font-size: 1.45rem !important;
                font-weight: 700 !important;
                color: #111827 !important;
                margin: 0 0 6px 0 !important;
                letter-spacing: -0.02em !important;
                line-height: 1.2 !important;
            }

            .admin-page-subheading {
                font-size: 0.88rem !important;
                color: #64748b !important;
                margin: 0 !important;
                font-weight: 400 !important;
            }

            .btn-admin-add {
                background-color: #2563eb !important;
                color: #ffffff !important;
                font-size: 0.88rem !important;
                font-weight: 600 !important;
                padding: 10px 20px !important;
                border-radius: 8px !important;
                text-decoration: none !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                border: none !important;
                cursor: pointer !important;
                transition: background-color 0.15s ease, box-shadow 0.15s ease !important;
                box-shadow: 0 1px 2px rgba(37, 99, 235, 0.2) !important;
            }

            .btn-admin-add:hover {
                background-color: #1d4ed8 !important;
                color: #ffffff !important;
                box-shadow: 0 2px 4px rgba(37, 99, 235, 0.3) !important;
            }

            .admin-filters-bar {
                display: flex !important;
                gap: 14px !important;
                align-items: center !important;
                margin-bottom: 28px !important;
                flex-wrap: wrap !important;
            }

            .admin-search-wrapper {
                position: relative !important;
                width: 280px !important;
            }

            .admin-search-wrapper .admin-search-icon {
                position: absolute !important;
                left: 14px !important;
                top: 50% !important;
                transform: translateY(-50%) !important;
                color: #94a3b8 !important;
                font-size: 0.85rem !important;
                pointer-events: none !important;
            }

            .admin-search-input {
                width: 100% !important;
                height: 42px !important;
                padding: 8px 14px 8px 38px !important;
                border: 1px solid #e2e8f0 !important;
                border-radius: 8px !important;
                font-size: 0.85rem !important;
                color: #111827 !important;
                background-color: #ffffff !important;
                outline: none !important;
                box-sizing: border-box !important;
                font-family: inherit !important;
                transition: border-color 0.15s, box-shadow 0.15s !important;
            }

            .admin-search-input:focus {
                border-color: #2563eb !important;
                box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12) !important;
            }

            .admin-select-wrapper {
                position: relative !important;
            }

            .admin-select-control {
                height: 42px !important;
                padding: 8px 38px 8px 16px !important;
                border: 1px solid #e2e8f0 !important;
                border-radius: 8px !important;
                font-size: 0.85rem !important;
                color: #374151 !important;
                background-color: #ffffff !important;
                outline: none !important;
                cursor: pointer !important;
                font-family: inherit !important;
                appearance: none !important;
                -webkit-appearance: none !important;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='%2364748b'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E") !important;
                background-repeat: no-repeat !important;
                background-position: right 14px center !important;
                background-size: 14px !important;
                box-sizing: border-box !important;
            }

            .admin-table-wrap {
                width: 100% !important;
                overflow-x: auto !important;
            }

            .admin-data-table {
                width: 100% !important;
                border-collapse: collapse !important;
                font-size: 0.88rem !important;
            }

            .admin-data-table th {
                text-align: left !important;
                padding: 14px 12px !important;
                font-size: 0.72rem !important;
                font-weight: 700 !important;
                color: #64748b !important;
                letter-spacing: 0.05em !important;
                border-bottom: 1px solid #e2e8f0 !important;
                text-transform: uppercase !important;
                white-space: nowrap !important;
            }

            .admin-data-table td {
                padding: 18px 12px !important;
                vertical-align: middle !important;
                border-bottom: 1px solid #f1f5f9 !important;
                white-space: nowrap !important;
            }

            .admin-data-table tbody tr:hover td {
                background-color: #fafcff !important;
            }

            .tour-info-cell {
                display: flex !important;
                align-items: center !important;
                gap: 14px !important;
            }

            .tour-thumb-box {
                width: 58px !important;
                height: 40px !important;
                border-radius: 8px !important;
                overflow: hidden !important;
                background-color: #f1f5f9 !important;
                flex-shrink: 0 !important;
                display: flex !important;
                align-items: center !important;
                justify-content: center !important;
                box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05) !important;
            }

            .tour-thumb-img {
                width: 58px !important;
                height: 40px !important;
                max-width: 58px !important;
                max-height: 40px !important;
                object-fit: cover !important;
                display: block !important;
            }

            .tour-name {
                font-size: 0.92rem !important;
                font-weight: 600 !important;
                color: #111827 !important;
                margin-bottom: 2px !important;
            }

            .tour-id {
                font-size: 0.76rem !important;
                color: #94a3b8 !important;
                font-weight: 500 !important;
            }

            .text-dest,
            .text-duration {
                color: #64748b !important;
                font-size: 0.88rem !important;
            }

            .text-price {
                font-weight: 700 !important;
                color: #111827 !important;
                font-size: 0.92rem !important;
            }

            .status-pill {
                display: inline-flex !important;
                align-items: center !important;
                gap: 6px !important;
                padding: 4px 12px !important;
                border-radius: 20px !important;
                font-size: 0.76rem !important;
                font-weight: 600 !important;
            }

            .status-active {
                background-color: #dcfce7 !important;
                color: #15803d !important;
            }

            .status-inactive {
                background-color: #f1f5f9 !important;
                color: #475569 !important;
            }

            .status-dot {
                width: 6px !important;
                height: 6px !important;
                border-radius: 50% !important;
                display: inline-block !important;
            }

            .status-active .status-dot {
                background-color: #22c55e !important;
            }

            .status-inactive .status-dot {
                background-color: #64748b !important;
            }

            .action-buttons-group {
                display: flex !important;
                align-items: center !important;
                gap: 8px !important;
            }

            .action-btn {
                width: 32px !important;
                height: 32px !important;
                border-radius: 6px !important;
                background-color: #ffffff !important;
                border: 1px solid #e2e8f0 !important;
                color: #64748b !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                cursor: pointer !important;
                transition: all 0.15s ease !important;
                text-decoration: none !important;
                font-size: 0.82rem !important;
                padding: 0 !important;
            }

            .action-btn:hover {
                color: #2563eb !important;
                border-color: #2563eb !important;
                background-color: #eff6ff !important;
            }

            .action-btn.action-btn-activate:hover {
                color: #16a34a !important;
                border-color: #16a34a !important;
                background-color: #f0fdf4 !important;
            }

            .action-btn.action-btn-delete:hover {
                color: #dc2626 !important;
                border-color: #dc2626 !important;
                background-color: #fef2f2 !important;
            }

            .admin-pagination-row {
                display: flex !important;
                justify-content: space-between !important;
                align-items: center !important;
                margin-top: 24px !important;
                padding-top: 18px !important;
                border-top: 1px solid #f1f5f9 !important;
                flex-wrap: wrap !important;
                gap: 12px !important;
            }

            .pagination-count {
                font-size: 0.82rem !important;
                color: #94a3b8 !important;
                font-weight: 400 !important;
            }

            .pagination-controls {
                display: flex !important;
                gap: 6px !important;
                align-items: center !important;
            }

            .page-num-btn {
                width: 32px !important;
                height: 32px !important;
                border-radius: 6px !important;
                border: 1px solid #e2e8f0 !important;
                background-color: #ffffff !important;
                color: #64748b !important;
                display: inline-flex !important;
                align-items: center !important;
                justify-content: center !important;
                font-size: 0.82rem !important;
                font-weight: 500 !important;
                text-decoration: none !important;
                transition: all 0.15s ease !important;
            }

            .page-num-btn:hover {
                border-color: #cbd5e1 !important;
                background-color: #f8fafc !important;
                color: #334155 !important;
            }

            .page-num-btn.active {
                background-color: #2563eb !important;
                border-color: #2563eb !important;
                color: #ffffff !important;
                font-weight: 600 !important;
            }
        </style>

        <div class="admin-card-container">
            <!-- Top Header -->
            <div class="admin-card-header">
                <div>
                    <h2 class="admin-page-heading">Manage Tour Packages</h2>
                    <p class="admin-page-subheading">View, edit, and organize all available tour packages across your
                        platform.</p>
                </div>
                <div>
                    <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="btn-admin-add">+ Add New Tour</a>
                </div>
            </div>

            <!-- Filter Toolbar -->
            <div class="admin-filters-bar">
                <div class="admin-search-wrapper">
                    <i class="fas fa-search admin-search-icon"></i>
                    <asp:TextBox ID="txtTourSearch" runat="server" CssClass="admin-search-input"
                        placeholder="Search by tour name or ID..."></asp:TextBox>
                </div>
                <div class="admin-select-wrapper">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="admin-select-control">
                        <asp:ListItem Text="All Categories" Value="" />
                        <asp:ListItem Text="Beach" Value="beach" />
                        <asp:ListItem Text="Mountain" Value="mountain" />
                        <asp:ListItem Text="Heritage" Value="heritage" />
                    </asp:DropDownList>
                </div>
                <div class="admin-select-wrapper">
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="admin-select-control">
                        <asp:ListItem Text="Status: All" Value="" />
                        <asp:ListItem Text="Active" Value="active" />
                        <asp:ListItem Text="Inactive" Value="inactive" />
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Tours Table -->
            <div class="admin-table-wrap">
                <table class="admin-data-table">
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
                        <!-- Row 1: Goa Beach Adventure -->
                        <tr data-category="beach" data-status="active">
                            <td>
                                <div class="tour-info-cell">
                                    <div class="tour-thumb-box"
                                        style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                        <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa"
                                            class="tour-thumb-img"
                                            style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                    </div>
                                    <div>
                                        <div class="tour-name">Goa Beach Adventure</div>
                                        <div class="tour-id">ID: TR-8001</div>
                                    </div>
                                </div>
                            </td>
                            <td class="text-dest">Goa, India</td>
                            <td class="text-duration">4 Days / 3 Nights</td>
                            <td class="text-price">&#8377;12,000</td>
                            <td>
                                <span class="status-pill status-active">
                                    <span class="status-dot"></span>Active
                                </span>
                            </td>
                            <td>
                                <div class="action-buttons-group">
                                    <button type="button" class="action-btn" title="View Details"
                                        data-title="Goa Beach Vacation"
                                        data-id="TR-8001"
                                        data-location="Goa, India"
                                        data-duration="4 Days / 3 Nights"
                                        data-price="₹12,000"
                                        data-status="Active"
                                        data-category="Beach &amp; Adventure"
                                        data-img='<%= ResolveUrl("~/Assets/images/goa-details.jpg") %>'
                                        data-overview="Experience the vibrant culture and pristine beaches of North and South Goa. Enjoy thrilling water sports at Baga Beach, a scenic sunset river cruise on the Mandovi, historical church tours in Old Goa, and delicious coastal seafood dining."
                                        data-inclusions="3 Nights Accommodation in 4-Star Beach Resort|Daily Breakfast &amp; Dinner Buffet|Airport / Railway Station Private Transfers|North &amp; South Goa Guided Sightseeing Tour|Mandovi River Sunset Cruise Tickets"
                                        data-link='<%= ResolveUrl("~/Admin/AddTour.aspx") %>'
                                        onclick="openTourModalFromBtn(this)">
                                        <i class="far fa-eye"></i>
                                    </button>
                                    <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="action-btn"
                                        title="Edit Tour">
                                        <i class="far fa-edit"></i>
                                    </a>
                                    <button type="button" class="action-btn" title="Deactivate"
                                        onclick="alert('Tour deactivated');">
                                        <i class="fas fa-ban"></i>
                                    </button>
                                    <button type="button" class="action-btn action-btn-delete" title="Delete"
                                        onclick="if(confirm('Delete tour TR-8001?')) this.closest('tr').remove();">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2: Manali Snow Peaks -->
                        <tr data-category="mountain" data-status="active">
                            <td>
                                <div class="tour-info-cell">
                                    <div class="tour-thumb-box"
                                        style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                        <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali"
                                            class="tour-thumb-img"
                                            style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                    </div>
                                    <div>
                                        <div class="tour-name">Manali Snow Peaks</div>
                                        <div class="tour-id">ID: TR-8002</div>
                                    </div>
                                </div>
                            </td>
                            <td class="text-dest">Himachal, India</td>
                            <td class="text-duration">5 Days / 4 Nights</td>
                            <td class="text-price">&#8377;15,000</td>
                            <td>
                                <span class="status-pill status-active">
                                    <span class="status-dot"></span>Active
                                </span>
                            </td>
                            <td>
                                <div class="action-buttons-group">
                                    <button type="button" class="action-btn" title="View Details"
                                        data-title="Manali Snow Peaks"
                                        data-id="TR-8002"
                                        data-location="Himachal, India"
                                        data-duration="5 Days / 4 Nights"
                                        data-price="₹15,000"
                                        data-status="Active"
                                        data-category="Mountain &amp; Adventure"
                                        data-img='<%= ResolveUrl("~/Assets/images/manali.jpg") %>'
                                        data-overview="Embark on an unforgettable mountain getaway to Manali. Marvel at snow-clad peaks, visit Solang Valley for paragliding and zorbing, travel up to Rohtang Pass, stroll through old pine forests, and unwind beside scenic riversides."
                                        data-inclusions="4 Nights Deluxe Mountain View Chalet|Daily Breakfast &amp; Multi-Cuisine Dinner|Private AC Cab for Local &amp; Solang Valley Tours|Rohtang Pass Excursion Permits Included|Bonfire &amp; Music Evening at Resort"
                                        data-link='<%= ResolveUrl("~/Admin/AddTour.aspx") %>'
                                        onclick="openTourModalFromBtn(this)">
                                        <i class="far fa-eye"></i>
                                    </button>
                                    <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="action-btn"
                                        title="Edit Tour">
                                        <i class="far fa-edit"></i>
                                    </a>
                                    <button type="button" class="action-btn" title="Deactivate"
                                        onclick="alert('Tour deactivated');">
                                        <i class="fas fa-ban"></i>
                                    </button>
                                    <button type="button" class="action-btn action-btn-delete" title="Delete"
                                        onclick="if(confirm('Delete tour TR-8002?')) this.closest('tr').remove();">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3: Kerala Backwaters -->
                        <tr data-category="beach" data-status="inactive">
                            <td>
                                <div class="tour-info-cell">
                                    <div class="tour-thumb-box"
                                        style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                        <img src='<%= ResolveUrl("~/Assets/images/bali.jpg") %>' alt="Kerala"
                                            class="tour-thumb-img"
                                            style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                    </div>
                                    <div>
                                        <div class="tour-name">Kerala Backwaters</div>
                                        <div class="tour-id">ID: TR-8003</div>
                                    </div>
                                </div>
                            </td>
                            <td class="text-dest">Kerala, India</td>
                            <td class="text-duration">3 Days / 2 Nights</td>
                            <td class="text-price">&#8377;13,500</td>
                            <td>
                                <span class="status-pill status-inactive">
                                    <span class="status-dot"></span>Inactive
                                </span>
                            </td>
                            <td>
                                <div class="action-buttons-group">
                                    <button type="button" class="action-btn" title="View Details"
                                        data-title="Kerala Backwaters"
                                        data-id="TR-8003"
                                        data-location="Kerala, India"
                                        data-duration="3 Days / 2 Nights"
                                        data-price="₹13,500"
                                        data-status="Inactive"
                                        data-category="Nature &amp; Wellness"
                                        data-img='<%= ResolveUrl("~/Assets/images/bali.jpg") %>'
                                        data-overview="Drift through tranquil emerald backwaters on a traditional wooden houseboat in Alleppey. Experience breathtaking greenery, authentic Keralite meals prepared fresh onboard, and a soothing Ayurvedic rejuvenation session."
                                        data-inclusions="1 Night Private Houseboat + 1 Night Lake Resort|All Meals Onboard Houseboat (Traditional Kerala Fare)|Cochin Airport / Railway Station Pick &amp; Drop|Complimentary 60-min Ayurvedic Massage|Scenic Canoe Ride Through Village Canals"
                                        data-link='<%= ResolveUrl("~/Admin/AddTour.aspx") %>'
                                        onclick="openTourModalFromBtn(this)">
                                        <i class="far fa-eye"></i>
                                    </button>
                                    <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="action-btn"
                                        title="Edit Tour">
                                        <i class="far fa-edit"></i>
                                    </a>
                                    <button type="button" class="action-btn action-btn-activate" title="Activate"
                                        onclick="alert('Tour activated');">
                                        <i class="fas fa-check"></i>
                                    </button>
                                    <button type="button" class="action-btn action-btn-delete" title="Delete"
                                        onclick="if(confirm('Delete tour TR-8003?')) this.closest('tr').remove();">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 4: Rajasthan Heritage -->
                        <tr data-category="heritage" data-status="active">
                            <td>
                                <div class="tour-info-cell">
                                    <div class="tour-thumb-box"
                                        style="width: 58px; height: 40px; border-radius: 8px; overflow: hidden;">
                                        <img src='<%= ResolveUrl("~/Assets/images/kashmir.jpg") %>' alt="Rajasthan"
                                            class="tour-thumb-img"
                                            style="width: 58px; height: 40px; max-width: 58px; max-height: 40px; object-fit: cover; border-radius: 8px;" />
                                    </div>
                                    <div>
                                        <div class="tour-name">Rajasthan Heritage</div>
                                        <div class="tour-id">ID: TR-8004</div>
                                    </div>
                                </div>
                            </td>
                            <td class="text-dest">Rajasthan, India</td>
                            <td class="text-duration">6 Days / 5 Nights</td>
                            <td class="text-price">&#8377;22,000</td>
                            <td>
                                <span class="status-pill status-active">
                                    <span class="status-dot"></span>Active
                                </span>
                            </td>
                            <td>
                                <div class="action-buttons-group">
                                    <button type="button" class="action-btn" title="View Details"
                                        data-title="Rajasthan Heritage"
                                        data-id="TR-8004"
                                        data-location="Rajasthan, India"
                                        data-duration="6 Days / 5 Nights"
                                        data-price="₹22,000"
                                        data-status="Active"
                                        data-category="Heritage &amp; Royal"
                                        data-img='<%= ResolveUrl("~/Assets/images/kashmir.jpg") %>'
                                        data-overview="Step into royalty with an expansive cultural expedition across Jaipur, Jodhpur, and Udaipur. Explore majestic amber forts, opulent city palaces, camel rides over Sam Sand Dunes, and colorful heritage bazaars."
                                        data-inclusions="5 Nights Heritage Palace Hotel Accommodation|Daily Royal Buffet Breakfast &amp; Dinners|Chauffeur-Driven AC SUV for the Entire Circuit|Monument &amp; Fort Entry Passes with Guides|Desert Safari &amp; Rajasthani Folk Dance Night"
                                        data-link='<%= ResolveUrl("~/Admin/AddTour.aspx") %>'
                                        onclick="openTourModalFromBtn(this)">
                                        <i class="far fa-eye"></i>
                                    </button>
                                    <a href='<%= ResolveUrl("~/Admin/AddTour.aspx") %>' class="action-btn"
                                        title="Edit Tour">
                                        <i class="far fa-edit"></i>
                                    </a>
                                    <button type="button" class="action-btn" title="Deactivate"
                                        onclick="alert('Tour deactivated');">
                                        <i class="fas fa-ban"></i>
                                    </button>
                                    <button type="button" class="action-btn action-btn-delete" title="Delete"
                                        onclick="if(confirm('Delete tour TR-8004?')) this.closest('tr').remove();">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- Table Pagination Footer -->
                <div class="admin-pagination-row">
                    <span class="pagination-count">Showing 1 to 4 of 35 tours</span>
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
                var searchInput = document.getElementById('<%= txtTourSearch.ClientID %>');
                var catSelect = document.getElementById('<%= ddlCategory.ClientID %>');
                var statusSelect = document.getElementById('<%= ddlStatus.ClientID %>');
                var tableBody = document.querySelector('.admin-data-table tbody');
                var countLabel = document.querySelector('.pagination-count');

                function filterTours() {
                    var query = (searchInput ? searchInput.value : '').toLowerCase().trim();
                    var category = (catSelect ? catSelect.value : '').toLowerCase().trim();
                    var status = (statusSelect ? statusSelect.value : '').toLowerCase().trim();

                    var rows = tableBody ? Array.from(tableBody.querySelectorAll('tr:not(.no-results-row)')) : [];
                    var visibleCount = 0;

                    rows.forEach(function (row) {
                        var text = row.textContent.toLowerCase();
                        var rowCat = (row.getAttribute('data-category') || '').toLowerCase();
                        var rowStatus = (row.getAttribute('data-status') || '').toLowerCase();

                        var matchesQuery = !query || text.indexOf(query) !== -1;
                        var matchesCat = !category || rowCat.indexOf(category) !== -1 || text.indexOf(category) !== -1;
                        var matchesStatus = !status || rowStatus === status || text.indexOf(status) !== -1;

                        if (matchesQuery && matchesCat && matchesStatus) {
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
                            emptyRow.innerHTML = '<td colspan="6" style="text-align: center; padding: 40px 20px; color: #94a3b8;"><i class="fas fa-search" style="font-size: 2rem; margin-bottom: 12px; display: block; color: #cbd5e1;"></i><div style="font-size: 0.95rem; font-weight: 600; color: #475569; margin-bottom: 4px;">No matching tour packages found</div><div style="font-size: 0.82rem;">Try adjusting your search query or filters.</div></td>';
                            tableBody.appendChild(emptyRow);
                        } else {
                            emptyRow.style.display = '';
                        }
                    } else if (emptyRow) {
                        emptyRow.style.display = 'none';
                    }

                    if (countLabel) {
                        countLabel.textContent = 'Showing ' + (visibleCount > 0 ? '1 to ' + visibleCount : '0') + ' of 35 tours';
                    }
                }

                if (searchInput) {
                    searchInput.addEventListener('input', filterTours);
                    searchInput.addEventListener('keydown', function (e) {
                        if (e.key === 'Enter') e.preventDefault();
                    });
                }
                if (catSelect) catSelect.addEventListener('change', filterTours);
                if (statusSelect) statusSelect.addEventListener('change', filterTours);
            });
        </script>
    </asp:Content>