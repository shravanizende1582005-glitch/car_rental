using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["car_rentalDBConnection"].ConnectionString;

    protected void btnSend_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = "INSERT INTO ContactMessages(Name,Email,Phone,Message) VALUES(@n,@e,@p,@m)";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPhone.Text);
            cmd.Parameters.AddWithValue("@m", txtMessage.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        ClientScript.RegisterStartupScript(this.GetType(), "msg",
            "Swal.fire('Success','Message Sent Successfully!','success');", true);

        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtMessage.Text = "";
    }
}