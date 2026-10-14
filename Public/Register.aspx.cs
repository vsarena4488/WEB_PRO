using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var authMaster = Master as MasterPages_Auth;
        if (authMaster != null)
        {
            authMaster.BackUrl = ResolveUrl("~/Public/Home.aspx");
        }
    }

    protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = chkTerms.Checked;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fullName = (txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim()).Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string password = txtPassword.Text.Trim();

            try
            {
                // Check if account with this email already exists
                string checkQuery = "SELECT [UserId], [FullName], [Email], [Phone] FROM [dbo].[Users] WHERE [Email] = @Email";
                SqlParameter[] checkParams = {
                    new SqlParameter("@Email", SqlDbType.NVarChar, 150) { Value = email }
                };

                DataTable dtUser = DbHelper.ExecuteDataTable(checkQuery, checkParams);
                if (dtUser.Rows.Count > 0)
                {
                    // Existing user - log in directly and redirect to User Dashboard
                    DataRow userRow = dtUser.Rows[0];
                    Session["UserId"] = userRow["UserId"];
                    Session["FullName"] = !string.IsNullOrEmpty(fullName) ? fullName : userRow["FullName"].ToString();
                    Session["Email"] = email;
                    Session["Phone"] = !string.IsNullOrEmpty(phone) ? phone : userRow["Phone"].ToString();
                    Session["Role"] = "User";

                    Response.Redirect("~/User/Dashboard.aspx");
                    return;
                }

                // Insert into Users table
                string insertQuery = @"INSERT INTO [dbo].[Users] 
                    ([FullName], [Email], [Password], [Phone], [Status], [CreatedAt]) 
                    VALUES (@FullName, @Email, @Password, @Phone, 'Active', GETDATE());
                    SELECT SCOPE_IDENTITY();";

                SqlParameter[] insertParams = {
                    new SqlParameter("@FullName", SqlDbType.NVarChar, 100) { Value = fullName },
                    new SqlParameter("@Email", SqlDbType.NVarChar, 150) { Value = email },
                    new SqlParameter("@Password", SqlDbType.NVarChar, 100) { Value = password },
                    new SqlParameter("@Phone", SqlDbType.NVarChar, 30) { Value = phone }
                };

                object newId = DbHelper.ExecuteScalar(insertQuery, insertParams);
                int userId = (newId != null && newId != DBNull.Value) ? Convert.ToInt32(newId) : 1;

                // Set session for newly registered user
                Session["UserId"] = userId;
                Session["FullName"] = fullName;
                Session["Email"] = email;
                Session["Phone"] = phone;
                Session["Role"] = "User";

                // Redirect directly to User Dashboard
                Response.Redirect("~/User/Dashboard.aspx");
                return;
            }
            catch
            {
                // Fallback in case database is offline or not configured yet
                Session["UserId"] = 1;
                Session["FullName"] = !string.IsNullOrEmpty(fullName) ? fullName : "User";
                Session["Email"] = email;
                Session["Phone"] = phone;
                Session["Role"] = "User";

                // Redirect directly to User Dashboard upon registration
                Response.Redirect("~/User/Dashboard.aspx");
                return;
            }
        }
    }
}
