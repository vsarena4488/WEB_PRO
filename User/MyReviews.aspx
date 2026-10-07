<%@ Page Title="My Reviews" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeFile="MyReviews.aspx.cs" Inherits="User_MyReviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    My Reviews
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Tabs -->
    <div style="display: flex; gap: 10px; margin-bottom: 24px;">
        <button type="button" class="btn btn-primary js-filter-tab active" data-filter="submitted">Submitted (2)</button>
        <button type="button" class="btn btn-secondary js-filter-tab" data-filter="pending">To Review (1)</button>
    </div>

    <!-- Submitted Reviews Container -->
    <div id="submittedReviewsList" style="display: flex; flex-direction: column; gap: 20px; margin-bottom: 36px;">
        <!-- Review 1 -->
        <div class="card" id="rev1" style="padding: 24px;">
            <div style="display: flex; gap: 20px; align-items: flex-start;">
                <img src='<%= ResolveUrl("~/Assets/images/manali.jpg") %>' alt="Manali Adventure" style="width: 140px; height: 90px; border-radius: var(--radius-md); object-fit: cover; flex-shrink: 0;" />
                <div style="flex: 1;">
                    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 4px;">
                        <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading);">Manali Adventure</h3>
                        <div style="display: flex; gap: 8px;">
                            <button type="button" class="btn btn-dark btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm" onclick="document.getElementById('rev1').style.display='none';">Delete</button>
                        </div>
                    </div>
                    <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 8px;">Reviewed on 18 Jan 2025</div>
                    <div class="star-rating" style="margin-bottom: 10px;">
                        &#9733;&#9733;&#9733;&#9733;&#9733;
                    </div>
                    <p style="font-size: 13px; color: var(--text-muted); line-height: 1.6; font-style: italic;">
                        &ldquo;The trip was perfectly organized! The hotel stay was comfortable, and the tour guide was very knowledgeable about the local spots. Highly recommended for families.&rdquo;
                    </p>
                </div>
            </div>
        </div>

        <!-- Review 2 -->
        <div class="card" id="rev2" style="padding: 24px;">
            <div style="display: flex; gap: 20px; align-items: flex-start;">
                <img src='<%= ResolveUrl("~/Assets/images/kerala.jpg") %>' alt="Kerala Backwaters" style="width: 140px; height: 90px; border-radius: var(--radius-md); object-fit: cover; flex-shrink: 0;" />
                <div style="flex: 1;">
                    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 4px;">
                        <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading);">Kerala Backwaters</h3>
                        <div style="display: flex; gap: 8px;">
                            <button type="button" class="btn btn-dark btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm" onclick="document.getElementById('rev2').style.display='none';">Delete</button>
                        </div>
                    </div>
                    <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 8px;">Reviewed on 12 Dec 2024</div>
                    <div class="star-rating" style="margin-bottom: 10px;">
                        &#9733;&#9733;&#9733;&#9733;<span class="star-empty">&#9733;</span>
                    </div>
                    <p style="font-size: 13px; color: var(--text-muted); line-height: 1.6; font-style: italic;">
                        &ldquo;Beautiful scenery and very relaxing. The houseboat was clean and the food was great, but the Wi-Fi connection was quite poor during the journey.&rdquo;
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Pending Reviews Section -->
    <div style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 16px;">
        Pending Reviews (1)
    </div>

    <div class="card" style="padding: 24px;">
        <div style="display: flex; gap: 20px; align-items: center;">
            <img src='<%= ResolveUrl("~/Assets/images/goa.jpg") %>' alt="Goa Beach Tour" style="width: 140px; height: 90px; border-radius: var(--radius-md); object-fit: cover; flex-shrink: 0;" />
            <div style="flex: 1;">
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-heading); margin-bottom: 4px;">Goa Beach Tour</h3>
                <div style="font-size: 12px; color: var(--text-muted); margin-bottom: 6px;">Completed on 17 Jun 2025</div>
                <div style="font-size: 13px; color: var(--primary);">How was your trip? Rate your experience to help other travelers!</div>
            </div>
            <div>
                <button type="button" class="btn btn-primary" onclick="alert('Write a review dialog opened');">Write a Review</button>
            </div>
        </div>
    </div>
</asp:Content>
