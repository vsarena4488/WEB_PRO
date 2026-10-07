<%@ Page Title="Booking" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="User_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Booking
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="checkout-layout">
        <!-- Left: Traveler Details Form -->
        <div>
            <!-- Step 1: Traveler Details -->
            <div class="checkout-step-box">
                <div class="step-header">
                    <span class="step-number">1</span>
                    <h2 class="step-title">Traveler Details</h2>
                </div>

                <asp:ValidationSummary ID="vsBooking" runat="server" CssClass="validation-summary-errors" DisplayMode="BulletList" HeaderText="Please check traveler details:" />

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">First Name <span class="required">*</span></label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text="Arjun"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" CssClass="val-error" Display="Dynamic" />
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Last Name <span class="required">*</span></label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text="Kothivar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">Email Address <span class="required">*</span></label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="akothivar063@rku.ac.in"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="val-error" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Valid email required" CssClass="val-error" Display="Dynamic" />
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Phone Number <span class="required">*</span></label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 9328206703"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">ID Proof Type <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlIdType" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Aadhar Card" Value="Aadhar" Selected="True" />
                            <asp:ListItem Text="Passport" Value="Passport" />
                            <asp:ListItem Text="Voter ID" Value="VoterID" />
                            <asp:ListItem Text="Driving License" Value="DrivingLicense" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">ID Number <span class="required">*</span></label>
                        <asp:TextBox ID="txtIdNumber" runat="server" CssClass="form-control" placeholder="Enter ID number" Text="XXXX-XXXX-4589"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvIdNumber" runat="server" ControlToValidate="txtIdNumber" ErrorMessage="ID number is required" CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-col form-group">
                        <label class="form-label">Adults <span class="required">*</span></label>
                        <asp:TextBox ID="txtAdults" runat="server" CssClass="form-control" Text="2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdults" runat="server" ControlToValidate="txtAdults" ErrorMessage="Number of adults is required" CssClass="val-error" Display="Dynamic" />
                        <asp:RangeValidator ID="rvAdults" runat="server" ControlToValidate="txtAdults" MinimumValue="1" MaximumValue="20" Type="Integer" ErrorMessage="Adults must be 1 to 20" CssClass="val-error" Display="Dynamic" />
                    </div>
                    <div class="form-col form-group">
                        <label class="form-label">Childes</label>
                        <asp:TextBox ID="txtChildren" runat="server" CssClass="form-control" Text="0"></asp:TextBox>
                        <asp:RangeValidator ID="rvChildren" runat="server" ControlToValidate="txtChildren" MinimumValue="0" MaximumValue="10" Type="Integer" ErrorMessage="Children must be 0 to 10" CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <div class="form-check" style="margin-top: 8px;">
                    <asp:CheckBox ID="chkSaveDetails" runat="server" Checked="true" />
                    <label for="<%= chkSaveDetails.ClientID %>">Save traveler details for future bookings</label>
                </div>
            </div>

            <!-- Step 2: Special Requests -->
            <div class="checkout-step-box">
                <div class="step-header">
                    <span class="step-number" style="background-color: var(--text-light);">2</span>
                    <h2 class="step-title">Special Requests (Optional)</h2>
                </div>

                <div class="form-group" style="margin-bottom: 0;">
                    <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="E.g., Vegetarian meals, early check-in, wheelchair access..."></asp:TextBox>
                </div>
            </div>
        </div>

        <!-- Right: Tour Summary Card -->
        <div>
            <div class="order-summary-card">
                <div class="summary-tour-info">
                    <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Adventure" class="summary-thumb" />
                    <div>
                        <h3 style="font-size: 16px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Goa Beach Adventure</h3>
                        <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 2px;">
                            <strong>Date:</strong> 15 Jun '26 &ndash; 17 Jun '26
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">
                            <strong>Guests:</strong> 2 Adults
                        </div>
                    </div>
                </div>

                <!-- Price Details Breakdown -->
                <div style="margin-bottom: 16px;">
                    <div style="font-weight: 600; font-size: 14px; color: var(--text-heading); margin-bottom: 12px;">Price Details</div>
                    <div class="price-breakdown-row">
                        <span>Base Price (2 Adults)</span>
                        <span class="font-semibold text-dark">17,998/-</span>
                    </div>
                    <div class="price-breakdown-row">
                        <span>Taxes &amp; Fees (18% GST)</span>
                        <span class="font-semibold text-dark">3,239/-</span>
                    </div>
                    <div class="price-total-row">
                        <span>Total Payable</span>
                        <span class="text-primary font-bold">21,237/-</span>
                    </div>
                </div>

                <asp:Button ID="btnConfirmPay" runat="server" Text="🔒 Confirm &amp; Pay" CssClass="btn btn-dark btn-block btn-lg" OnClick="btnConfirmPay_Click" />
            </div>
        </div>
    </div>
</asp:Content>
