using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Transaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {

            login.Visible = true;
            logout.Visible = false;
            users.Visible = false;

        }
        else
        {
            users.Visible = true;
            users.Text = (string)(Session["user"]);
            login.Visible = false;
            logout.Visible = true;
        }
    }
    protected void shop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void log_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
}