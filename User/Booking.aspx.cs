using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class User_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] != null)
            {
                try
                {
                    string query = "SELECT FullName, Email, Phone, IdType, IdNumber FROM [dbo].[Users] WHERE UserId = @UserId";
                    SqlParameter[] p = { new SqlParameter("@UserId", SqlDbType.Int) { Value = Session["UserId"] } };
                    DataTable dt = DbHelper.ExecuteDataTable(query, p);
                    if (dt.Rows.Count > 0)
                    {
                        string fullName = dt.Rows[0]["FullName"].ToString();
                        string[] parts = fullName.Split(' ');
                        if (parts.Length > 0) txtFirstName.Text = parts[0];
                        if (parts.Length > 1) txtLastName.Text = parts[1];
                        txtEmail.Text = dt.Rows[0]["Email"].ToString();
                        if (dt.Rows[0]["Phone"] != DBNull.Value && !string.IsNullOrEmpty(dt.Rows[0]["Phone"].ToString()))
                            txtPhone.Text = dt.Rows[0]["Phone"].ToString();
                    }
                }
                catch
                {
                }
            }
        }
    }

    protected void btnConfirmPay_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                int userId = Session["UserId"] != null ? Convert.ToInt32(Session["UserId"]) : 1;
                int tourId = 1;
                if (!string.IsNullOrEmpty(Request.QueryString["tourId"]))
                {
                    int.TryParse(Request.QueryString["tourId"], out tourId);
                }

                int adults = 1;
                int.TryParse(txtAdults.Text.Trim(), out adults);
                int children = 0;
                int.TryParse(txtChildren.Text.Trim(), out children);

                decimal totalAmount = 21237.00m;
                string bookingCode = "BK-" + DateTime.Now.ToString("yyyyMMdd") + "-" + new Random().Next(100, 999);

                string insertBooking = @"INSERT INTO [dbo].[Bookings] 
                    ([BookingCode], [UserId], [TourId], [ScheduleId], [FirstName], [LastName], [Email], [Phone], [IdType], [IdNumber], [Adults], [Children], [SpecialRequests], [TotalAmount], [PaymentMethod], [PaymentStatus], [BookingStatus], [CreatedAt])
                    OUTPUT INSERTED.BookingId
                    VALUES (@BookingCode, @UserId, @TourId, 1, @FirstName, @LastName, @Email, @Phone, @IdType, @IdNumber, @Adults, @Children, @SpecialRequests, @TotalAmount, 'Card', 'Pending', 'Upcoming', GETDATE());";

                SqlParameter[] bParams = {
                    new SqlParameter("@BookingCode", SqlDbType.NVarChar, 50) { Value = bookingCode },
                    new SqlParameter("@UserId", SqlDbType.Int) { Value = userId },
                    new SqlParameter("@TourId", SqlDbType.Int) { Value = tourId },
                    new SqlParameter("@FirstName", SqlDbType.NVarChar, 100) { Value = txtFirstName.Text.Trim() },
                    new SqlParameter("@LastName", SqlDbType.NVarChar, 100) { Value = txtLastName.Text.Trim() },
                    new SqlParameter("@Email", SqlDbType.NVarChar, 150) { Value = txtEmail.Text.Trim() },
                    new SqlParameter("@Phone", SqlDbType.NVarChar, 50) { Value = txtPhone.Text.Trim() },
                    new SqlParameter("@IdType", SqlDbType.NVarChar, 50) { Value = ddlIdType.SelectedValue },
                    new SqlParameter("@IdNumber", SqlDbType.NVarChar, 100) { Value = txtIdNumber.Text.Trim() },
                    new SqlParameter("@Adults", SqlDbType.Int) { Value = adults },
                    new SqlParameter("@Children", SqlDbType.Int) { Value = children },
                    new SqlParameter("@SpecialRequests", SqlDbType.NVarChar, 500) { Value = string.IsNullOrEmpty(txtSpecialRequests.Text) ? (object)DBNull.Value : txtSpecialRequests.Text.Trim() },
                    new SqlParameter("@TotalAmount", SqlDbType.Decimal) { Value = totalAmount }
                };

                object newId = DbHelper.ExecuteScalar(insertBooking, bParams);
                int bookingId = Convert.ToInt32(newId);
                Session["CurrentBookingId"] = bookingId;

                Response.Redirect("~/User/Payment.aspx?bookingId=" + bookingId);
            }
            catch (Exception ex)
            {
                vsBooking.HeaderText = "Booking failed: " + ex.Message;
            }
        }
    }
}
