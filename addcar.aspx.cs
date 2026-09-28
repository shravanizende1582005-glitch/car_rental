using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class addcar : System.Web.UI.Page
{
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (!fuImage.HasFile)
        {
            lblMsg.Text = "Please select car image";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            return;
        }

        string imgName = Guid.NewGuid().ToString() + Path.GetExtension(fuImage.FileName);
        string imgPath = "~/Image/" + imgName;
        fuImage.SaveAs(Server.MapPath(imgPath));

        string conStr = ConfigurationManager
            .ConnectionStrings["car_rentalDBConnection"]
            .ConnectionString;

        using (SqlConnection con = new SqlConnection(conStr))
        {
            string query = @"INSERT INTO Cars
                            (CarName, Brand, CarImage)
                            VALUES
                            (@CarName, @Brand, @Image)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@CarName", txtCarName.Text);
            cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
            cmd.Parameters.AddWithValue("@Image", imgPath);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        lblMsg.Text = "Car added successfully!";
        lblMsg.ForeColor = System.Drawing.Color.Green;

        txtCarName.Text = "";
        txtBrand.Text = "";
       
    }
}
