using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class User_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnPayNow_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                int bookingId = 1;
                if (!string.IsNullOrEmpty(Request.QueryString["bookingId"]))
                {
                    int.TryParse(Request.QueryString["bookingId"], out bookingId);
                }
                else if (Session["CurrentBookingId"] != null)
                {
                    bookingId = Convert.ToInt32(Session["CurrentBookingId"]);
                }

                string cardName = txtCardName.Text.Trim();
                string rawCardNumber = txtCardNumber.Text.Trim();
                string maskedCard = rawCardNumber.Length >= 4 
                    ? "•••• •••• •••• " + rawCardNumber.Substring(rawCardNumber.Length - 4) 
                    : "•••• •••• •••• 4444";

                decimal amount = 21237.00m;
                string txnId = "TXN-" + new Random().Next(10000000, 99999999).ToString();

                // 1. Insert into Payments Table
                string insertPayment = @"INSERT INTO [dbo].[Payments] 
                    ([BookingId], [PaymentMethod], [CardNumberMasked], [CardHolderName], [Amount], [PaymentStatus], [TransactionId], [CreatedAt])
                    VALUES (@BookingId, 'Credit / Debit Card', @MaskedCard, @CardHolderName, @Amount, 'Completed', @TxnId, GETDATE());";

                SqlParameter[] payParams = {
                    new SqlParameter("@BookingId", SqlDbType.Int) { Value = bookingId },
                    new SqlParameter("@MaskedCard", SqlDbType.NVarChar, 50) { Value = maskedCard },
                    new SqlParameter("@CardHolderName", SqlDbType.NVarChar, 100) { Value = cardName },
                    new SqlParameter("@Amount", SqlDbType.Decimal) { Value = amount },
                    new SqlParameter("@TxnId", SqlDbType.NVarChar, 100) { Value = txnId }
                };

                DbHelper.ExecuteNonQuery(insertPayment, payParams);

                // 2. Update Bookings table
                string updateBooking = @"UPDATE [dbo].[Bookings] 
                    SET [PaymentStatus] = 'Completed', [BookingStatus] = 'Upcoming' 
                    WHERE [BookingId] = @BookingId;";

                SqlParameter[] updateParams = {
                    new SqlParameter("@BookingId", SqlDbType.Int) { Value = bookingId }
                };

                DbHelper.ExecuteNonQuery(updateBooking, updateParams);

                // 3. Log Admin Activity
                string actQuery = @"INSERT INTO [dbo].[AdminActivities] 
                    ([ActivityType], [Title], [Description], [BadgeColor], [Amount], [CreatedAt])
                    VALUES ('Payment', 'Payment Received', @Desc, 'green', @Amount, GETDATE());";

                SqlParameter[] actParams = {
                    new SqlParameter("@Desc", SqlDbType.NVarChar, 300) { Value = "Payment of Rs." + amount.ToString("N0") + " received for Booking #" + bookingId + " (" + txnId + ")" },
                    new SqlParameter("@Amount", SqlDbType.Decimal) { Value = amount }
                };

                DbHelper.ExecuteNonQuery(actQuery, actParams);

                Response.Redirect("~/User/MyBookings.aspx?booked=1");
            }
            catch (Exception ex)
            {
                // If there's an error on payment, log or show
                Response.Redirect("~/User/MyBookings.aspx?booked=1");
            }
        }
    }
}
