using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookCar : System.Web.UI.Page
{
    string conStr = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void btnBook_Click(object sender, EventArgs e)
    {
        if (ddlCarName.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select a car');</script>");
            return;
        }

        using (SqlConnection con = new SqlConnection(conStr))
        {
            string query = @"INSERT INTO CarBooking
                            (CustomerName, Email, Phone,
                             CarName, BookingDate,
                             PickupLocation, NumberOfDays)
                             VALUES
                            (@Name, @Email, @Phone,
                             @CarName, @Date,
                             @Location, @Days)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@CarName", ddlCarName.SelectedValue);
            cmd.Parameters.AddWithValue("@Date", txtDate.Text);
            cmd.Parameters.AddWithValue("@Location",
                txtFrom.Text + " to " + txtTo.Text);
            cmd.Parameters.AddWithValue("@Days", txtDays.Text);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        // Store data in Session
        Session["CarName"] = ddlCarName.SelectedValue;
        Session["Name"] = txtName.Text;
        Session["Email"] = txtEmail.Text;
        Session["Phone"] = txtPhone.Text;
        Session["Date"] = txtDate.Text;
        Session["Address"] = txtAddress.Text;
        Session["From"] = txtFrom.Text;
        Session["To"] = txtTo.Text;
        Session["Days"] = txtDays.Text;

        Response.Redirect("FinalConfirmation.aspx");
    }
}
