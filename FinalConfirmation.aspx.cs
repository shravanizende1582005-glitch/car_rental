using System;

public partial class FinalConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CarName"] != null)
        {
            lblCar.Text = Session["CarName"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblEmail.Text = Session["Email"].ToString();
            lblPhone.Text = Session["Phone"].ToString();
            lblDate.Text = Session["Date"].ToString();
            lblAddress.Text = Session["Address"].ToString();
            lblFrom.Text = Session["From"].ToString();
            lblTo.Text = Session["To"].ToString();
            lblDays.Text = Session["Days"].ToString();
        }
        else
        {
            Response.Redirect("payment.aspx");
        }
    }
}
