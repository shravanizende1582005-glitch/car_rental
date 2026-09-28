using System;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblCars.Text = "0";
            lblBookings.Text = "0";
            lblUsers.Text = "0";
        }
    }
}
