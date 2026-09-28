using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class LoginReport : System.Web.UI.Page
{
    string cs = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvReport.Visible = false;   // Hide table on first load
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        LoadReport();
    }

    private void LoadReport()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = @"
                SELECT U.UserId, U.Email, L.LoginDate
                FROM UserLogin L
                INNER JOIN Users U ON U.UserId = L.UserId
                WHERE (@From IS NULL OR L.LoginDate >= @From)
                AND (@To IS NULL OR L.LoginDate < DATEADD(DAY,1,@To))
                ORDER BY L.LoginDate DESC";

            SqlCommand cmd = new SqlCommand(query, con);

            // FROM DATE
            if (string.IsNullOrEmpty(txtFrom.Text))
                cmd.Parameters.AddWithValue("@From", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@From", Convert.ToDateTime(txtFrom.Text));

            // TO DATE
            if (string.IsNullOrEmpty(txtTo.Text))
                cmd.Parameters.AddWithValue("@To", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@To", Convert.ToDateTime(txtTo.Text));

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvReport.DataSource = dt;
            gvReport.DataBind();

            // Show table only after search
            gvReport.Visible = true;
        }
    }
}