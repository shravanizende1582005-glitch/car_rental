using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text == "" || txtPassword.Text == "")
        {
            lblMsg.Text = "Please enter email and password";
            lblMsg.ForeColor = Color.Red;
            return;
        }

        string conStr = ConfigurationManager
            .ConnectionStrings["car_rentalDBConnection"]
            .ConnectionString;

        using (SqlConnection con = new SqlConnection(conStr))
        {
            con.Open();

            // 1️⃣ Check credentials from REGISTRATION table
            string checkQuery = @"SELECT UserId 
                                  FROM Users 
                                  WHERE Email=@Email AND Password=@Password";

            SqlCommand cmd = new SqlCommand(checkQuery, con);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            object userId = cmd.ExecuteScalar();

            if (userId != null)
            {
                // 2️⃣ Insert into LOGIN table
                string insertLogin = @"INSERT INTO UserLogin (UserId) 
                                       VALUES (@UserId)";

                SqlCommand loginCmd = new SqlCommand(insertLogin, con);
                loginCmd.Parameters.AddWithValue("@UserId", userId);
                loginCmd.ExecuteNonQuery();

                // 3️⃣ Session + Redirect
                Session["UserId"] = userId.ToString();
                Session["Email"] = txtEmail.Text.Trim();

                Response.Redirect("home.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Email or Password";
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
}
