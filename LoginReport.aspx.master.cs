using System;

public partial class LoginReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        {
            lblUserId.Text = Session["UserId"].ToString();
            lblEmail.Text = Session["Email"].ToString();
            lblTime.Text = DateTime.Now.ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}