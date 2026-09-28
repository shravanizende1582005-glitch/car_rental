using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cars : System.Web.UI.Page
{
    string conStr = ConfigurationManager
        .ConnectionStrings["car_rentalDBConnection"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCars();
        }
    }

    private void LoadCars()
    {
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Cars ORDER BY CarID DESC", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            rptCars.DataSource = dt;
            rptCars.DataBind();
        }
    }

    protected void Car_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Check")
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            HiddenField hfCarID = (HiddenField)item.FindControl("hfCarID");
            TextBox txtDate = (TextBox)item.FindControl("txtDate");

            if (txtDate == null || string.IsNullOrEmpty(txtDate.Text))
            {
                ShowPopup("Please select a date first!", "warning");
                return;
            }

            int carID = Convert.ToInt32(hfCarID.Value);
            DateTime selectedDate = Convert.ToDateTime(txtDate.Text);

            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = @"SELECT COUNT(*) FROM CarBookings
                                 WHERE CarID=@CarID
                                 AND BookingDate=@BookingDate";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CarID", carID);
                cmd.Parameters.AddWithValue("@BookingDate", selectedDate);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    ShowPopup("❌ Sorry! Car is NOT available on selected date.", "error");
                }
                else
                {
                    ShowPopup("🎉 Great News! Car is available on selected date.", "success");
                }
            }
        }
    }

    // ✅ IMPROVED POPUP METHOD
    private void ShowPopup(string message, string icon)
    {
        string script = @"Swal.fire({
                            title: '" + message.Replace("'", "") + @"',
                            icon: '" + icon + @"',
                            confirmButtonColor: '#3085d6'
                          });";

        ScriptManager.RegisterStartupScript(this,
            this.GetType(),
            Guid.NewGuid().ToString(),
            script,
            true);
    }

    public string GetDetailsLink(int index)
    {
        switch (index)
        {
            case 0: return "Creta.aspx";
            case 1: return "WagonrDetails.aspx";
            case 2: return "ScorpioDetails.aspx";
            case 3: return "SkodaDetails.aspx";
            case 4: return "KiaDetails.aspx";
            case 5: return "NexonDetails.aspx";
            case 6: return "TharDetails.aspx";
            case 7: return "FortunerDetails.aspx";
            case 8: return "PunchDetails.aspx";
            case 9: return "SwiftDetails.aspx";
            default: return "#";
        }
    }
}
