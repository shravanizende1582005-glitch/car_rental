using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    string conStr = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(conStr))
        {
            string query = @"INSERT INTO Feedback
                            (FullName, Email, CarName, Rating, Message)
                             VALUES
                            (@Name, @Email, @Car, @Rating, @Message)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Car", ddlCar.SelectedValue);
            cmd.Parameters.AddWithValue("@Rating", ddlRating.SelectedValue);
            cmd.Parameters.AddWithValue("@Message", txtMessage.Text);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        lblMessage.Text = "Thank you! Your feedback has been submitted successfully.";

        // Clear fields
        txtName.Text = "";
        txtEmail.Text = "";
        ddlCar.SelectedIndex = 0;
        ddlRating.SelectedIndex = 0;
        txtMessage.Text = "";
        Response.Redirect("home.aspx");
    
    }

}
