using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

public partial class Admin_AddTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCreateTour_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            string tourName = txtTourName.Text.Trim();
            string location = txtLocation.Text.Trim();
            string categoryKey = ddlCategory.SelectedValue.ToLower();
            string duration = txtDuration.Text.Trim();
            decimal basePrice = 0;
            decimal.TryParse(txtBasePrice.Text.Trim(), out basePrice);
            string status = ddlStatus.SelectedValue;
            string description = txtDescription.Text.Trim();
            string coverImagePath = "~/Assets/images/goa.jpg";

            // Map Category ID
            int categoryId = 1; // default Beach
            if (categoryKey.Contains("mountain")) categoryId = 2;
            else if (categoryKey.Contains("heritage")) categoryId = 3;
            else if (categoryKey.Contains("intl")) categoryId = 4;

            // Handle Cover Image Upload
            if (fuCoverImage.HasFile)
            {
                try
                {
                    string ext = Path.GetExtension(fuCoverImage.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                    {
                        string fileName = Guid.NewGuid().ToString("N") + ext;
                        string saveFolder = Server.MapPath("~/Assets/images/");
                        if (!Directory.Exists(saveFolder))
                        {
                            Directory.CreateDirectory(saveFolder);
                        }
                        string fullPath = Path.Combine(saveFolder, fileName);
                        fuCoverImage.SaveAs(fullPath);
                        coverImagePath = "~/Assets/images/" + fileName;
                    }
                }
                catch
                {
                    // Fallback to default cover image
                }
            }

            try
            {
                // Insert into Tours table
                string insertTourQuery = @"INSERT INTO [dbo].[Tours] 
                    ([CategoryId], [TourName], [Location], [Duration], [BasePrice], [Description], [CoverImage], [Status], [CreatedAt])
                    VALUES (@CategoryId, @TourName, @Location, @Duration, @BasePrice, @Description, @CoverImage, @Status, GETDATE());";

                SqlParameter[] tourParams = {
                    new SqlParameter("@CategoryId", SqlDbType.Int) { Value = categoryId },
                    new SqlParameter("@TourName", SqlDbType.NVarChar, 150) { Value = tourName },
                    new SqlParameter("@Location", SqlDbType.NVarChar, 150) { Value = location },
                    new SqlParameter("@Duration", SqlDbType.NVarChar, 50) { Value = duration },
                    new SqlParameter("@BasePrice", SqlDbType.Decimal) { Value = basePrice },
                    new SqlParameter("@Description", SqlDbType.NVarChar, -1) { Value = string.IsNullOrEmpty(description) ? (object)DBNull.Value : description },
                    new SqlParameter("@CoverImage", SqlDbType.NVarChar, 250) { Value = coverImagePath },
                    new SqlParameter("@Status", SqlDbType.NVarChar, 20) { Value = status }
                };

                DbHelper.ExecuteNonQuery(insertTourQuery, tourParams);

                // Insert into AdminActivities table for Audit Log
                string activityQuery = @"INSERT INTO [dbo].[AdminActivities] 
                    ([ActivityType], [Title], [Description], [BadgeColor], [CreatedAt])
                    VALUES ('Tour', 'New Tour Created', @TitleDesc, 'blue', GETDATE());";

                SqlParameter[] actParams = {
                    new SqlParameter("@TitleDesc", SqlDbType.NVarChar, 300) { Value = "Created package: " + tourName + " (" + location + ")" }
                };
                DbHelper.ExecuteNonQuery(activityQuery, actParams);

                Response.Redirect("~/Admin/Tours.aspx");
            }
            catch (Exception ex)
            {
                vsAddTour.HeaderText = "Failed to save tour: " + ex.Message;
            }
        }
    }
}
