using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminFeedback : System.Web.UI.Page
{
    string conStr = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadFeedback();
        }
    }

    void LoadFeedback()
    {
        using (SqlConnection con = new SqlConnection(conStr))
        {
            string query = "SELECT * FROM Feedback ORDER BY FeedbackID DESC";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender,
        System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        using (SqlConnection con = new SqlConnection(conStr))
        {
            string query = "DELETE FROM Feedback WHERE FeedbackID=@ID";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ID", id);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        LoadFeedback();
    }
}
