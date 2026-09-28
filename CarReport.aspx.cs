using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class CarReport : System.Web.UI.Page
{
    string cs = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadBrands();
            gvReport.Visible = false;   // Hide grid on first load
        }
    }

    private void LoadBrands()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = "SELECT DISTINCT Brand FROM Cars";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            ddlBrand.DataSource = dt;
            ddlBrand.DataTextField = "Brand";
            ddlBrand.DataValueField = "Brand";
            ddlBrand.DataBind();

            ddlBrand.Items.Insert(0, "-- All Brands --");
        }
    }

    protected void ddlBrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadReport();
    }

    private void LoadReport()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = @"
                SELECT CarId, CarName, Brand, CarImage
                FROM Cars
                WHERE (@Brand IS NULL OR Brand = @Brand)
                ORDER BY CarId DESC";

            SqlCommand cmd = new SqlCommand(query, con);

            if (ddlBrand.SelectedIndex == 0)
                cmd.Parameters.AddWithValue("@Brand", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@Brand", ddlBrand.SelectedValue);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvReport.DataSource = dt;
            gvReport.DataBind();

            gvReport.Visible = true;   // Show after selection
        }
    }
}