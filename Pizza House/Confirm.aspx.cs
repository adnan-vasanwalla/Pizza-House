using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            users.Visible = false;
            login.Visible = true;
            logout.Visible = false;
        }
        else
        {
            users.Visible = true;
            users.Text = (string)(Session["user"]);
            login.Visible = false;
            logout.Visible = true;
        }
        string a1 = (string)Session["itm"];
        sel.Text ="You have purchased \t" +  a1;
    }
    protected void shop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("Kart.aspx");
    }
}