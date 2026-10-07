<%@ Page Title="Secure Payment" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Secure Payment
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="checkout-layout">
        <!-- Left: Payment Methods & Inputs -->
        <div>
            <div class="card" style="padding: 28px;">
                <h3 style="font-size: 16px; font-weight: 700; color: var(--text-heading); margin-bottom: 14px;">Payment Options</h3>

                <div class="payment-tabs">
                    <button type="button" class="payment-tab-btn active js-payment-tab" data-target="card">
                        <svg class="icon-svg" viewBox="0 0 24 24"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg>
                        <span>Credit / Debit Card</span>
                    </button>
                    <button type="button" class="payment-tab-btn js-payment-tab" data-target="upi">
                        <svg class="icon-svg" viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                        <span>UPI / QR</span>
                    </button>
                </div>

                <!-- Card Form -->
                <div id="cardPaymentForm">
                    <h3 style="font-size: 16px; font-weight: 700; color: var(--text-heading); margin-bottom: 16px;">Enter Card Details</h3>

                    <div class="form-group">
                        <label class="form-label" for="<%= txtCardNumber.ClientID %>">Card Number</label>
                        <div class="input-with-icon">
                            <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" Text="4111 2222 3333 4444" placeholder="•••• •••• •••• ••••"></asp:TextBox>
                            <span class="input-icon-right" style="color:#10B981;">
                                <svg class="icon-svg" viewBox="0 0 24 24"><polyline points="20 6 9 17 4 12"></polyline></svg>
                            </span>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card number is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                        <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="txtCardNumber" ValidationExpression="^[\d\s]{15,19}$" ErrorMessage="Enter a valid 16-digit card number" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="<%= txtCardName.ClientID %>">Name on Card</label>
                        <asp:TextBox ID="txtCardName" runat="server" CssClass="form-control" Text="vishal sarena" placeholder="e.g. John Doe"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardName" runat="server" ControlToValidate="txtCardName" ErrorMessage="Cardholder name is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                    </div>

                    <div class="form-row">
                        <div class="form-col form-group">
                            <label class="form-label" for="<%= txtCardExpiry.ClientID %>">Expiry Date</label>
                            <asp:TextBox ID="txtCardExpiry" runat="server" CssClass="form-control" Text="12 / 28" placeholder="MM / YY"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCardExpiry" runat="server" ControlToValidate="txtCardExpiry" ErrorMessage="Expiry date is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                            <asp:RegularExpressionValidator ID="revCardExpiry" runat="server" ControlToValidate="txtCardExpiry" ValidationExpression="^(0[1-9]|1[0-2])\s*\/?\s*([0-9]{2})$" ErrorMessage="Format MM/YY" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                        </div>
                        <div class="form-col form-group">
                            <label class="form-label" for="<%= txtCardCvv.ClientID %>">CVV</label>
                            <div class="input-with-icon">
                                <asp:TextBox ID="txtCardCvv" runat="server" TextMode="Password" MaxLength="4" CssClass="form-control" Text="888" placeholder="•••"></asp:TextBox>
                                <span class="input-icon-right" style="color:var(--text-light); font-weight:600; font-size:14px;">?</span>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvCardCvv" runat="server" ControlToValidate="txtCardCvv" ErrorMessage="CVV is required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                            <asp:RegularExpressionValidator ID="revCardCvv" runat="server" ControlToValidate="txtCardCvv" ValidationExpression="^[0-9]{3,4}$" ErrorMessage="3-4 digits required" CssClass="val-error" Display="Dynamic" ValidationGroup="vgPayment" />
                        </div>
                    </div>

                    <div class="form-check" style="margin: 14px 0 24px;">
                        <asp:CheckBox ID="chkSaveCard" runat="server" Checked="true" />
                        <div>
                            <label for="<%= chkSaveCard.ClientID %>" style="font-weight: 500; color: var(--text-heading);">Securely save this card for future bookings</label>
                            <div style="font-size: 12px; color: var(--text-muted); margin-top: 2px;">Your card details are encrypted and securely stored.</div>
                        </div>
                    </div>

                    <asp:Button ID="btnPayNow" runat="server" Text="🔒 Pay ₹21,237" CssClass="btn btn-primary btn-block btn-lg" ValidationGroup="vgPayment" OnClick="btnPayNow_Click" />

                    <div class="secure-notice">
                        <svg class="icon-svg" style="width:14px; height:14px;" viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                        <span>Payments are 100% secure and encrypted.</span>
                    </div>
                </div>

                <!-- UPI Container (Hidden by default, switched by JS) -->
                <div id="upiPaymentForm" style="display: none; text-align: center; padding: 24px 0;">
                    <h4 style="font-size: 16px; font-weight: 600; margin-bottom: 12px;">Scan UPI QR Code</h4>
                    <div style="width: 180px; height: 180px; margin: 0 auto 16px; background: #FFF; border: 2px dashed #CBD5E1; border-radius: 12px; display: flex; align-items: center; justify-content: center;">
                        <svg class="icon-svg" style="width: 80px; height: 80px; color: #2563EB;" viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                    </div>
                    <p style="font-size: 13px; color: var(--text-muted); margin-bottom: 20px;">Scan using GPay, PhonePe, Paytm or any UPI App</p>
                    <asp:Button ID="btnUpiPay" runat="server" Text="Confirm UPI Payment" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnPayNow_Click" />
                </div>
            </div>
        </div>

        <!-- Right: Summary, Contact & Total -->
        <div>
            <div class="order-summary-card">
                <div class="summary-tour-info">
                    <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Adventure" class="summary-thumb" />
                    <div>
                        <h3 style="font-size: 16px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Goa Beach Adventure</h3>
                        <div style="margin-bottom: 6px;">
                            <span class="badge badge-upcoming" style="font-size: 11px;">Booking ID: TB10025</span>
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 2px;">
                            &bull; <strong>Date:</strong> 15 Jun '26 &ndash; 17 Jun '26
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">
                            &bull; <strong>Guests:</strong> 2 Adults
                        </div>
                    </div>
                </div>

                <!-- Contact Details -->
                <div style="margin-bottom: 20px; padding-bottom: 16px; border-bottom: 1px solid var(--border-light);">
                    <div style="font-weight: 600; font-size: 14px; color: var(--text-heading); margin-bottom: 8px;">Contact Details</div>
                    <div style="font-size: 13px; color: var(--text-heading); font-weight: 500;">vishal sarena</div>
                    <div style="font-size: 13px; color: var(--text-muted);">vsarena753@rku.ac.in</div>
                    <div style="font-size: 13px; color: var(--text-muted);">+91 98765 43210</div>
                </div>

                <!-- Price Details Breakdown -->
                <div>
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
            </div>
        </div>
    </div>
</asp:Content>
