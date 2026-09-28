using System;

public partial class payment : System.Web.UI.Page
{
    protected void btnProceed_Click(object sender, EventArgs e)
    {
        if (!rbUPI.Checked && !rbCash.Checked)
        {
            Response.Write("<script>alert('Please select a payment method');</script>");
            return;
        }

        if (rbUPI.Checked)
        {
            Session["PaymentMethod"] = "UPI";
        }
        else if (rbCash.Checked)
        {
            Session["PaymentMethod"] = "Cash";
        }

        Response.Redirect("home.aspx");
    }
}
