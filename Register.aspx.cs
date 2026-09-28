using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text != txtConfirm.Text)
        {
            lblMsg.CssClass = "text-danger";
            lblMsg.Text = "Passwords do not match.";
            return;
        }

        string conStr = ConfigurationManager
            .ConnectionStrings["car_rentalDBConnection"]
            .ConnectionString;

        using (SqlConnection con = new SqlConnection(conStr))
        {
            con.Open();

            // Check if email exists
            SqlCommand checkCmd = new SqlCommand(
                "SELECT COUNT(*) FROM Users WHERE Email=@e", con);
            checkCmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());

            int exists = Convert.ToInt32(checkCmd.ExecuteScalar());
            if (exists > 0)
            {
                lblMsg.CssClass = "text-danger";
                lblMsg.Text = "Email already exists. Please login.";
                return;
            }

            // Insert user
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO Users (FullName, Email, Mobile, Password)
                  VALUES (@n, @e, @m, @p)", con);

            cmd.Parameters.AddWithValue("@n", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@m", txtMobile.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtPassword.Text.Trim());

            try
            {
                cmd.ExecuteNonQuery();
                lblMsg.CssClass = "text-success";
                lblMsg.Text = "Registration successful!";
            }
            catch (Exception ex)
            {
                lblMsg.CssClass = "text-danger";
                lblMsg.Text = ex.Message;
            }
        }
    }
}
