using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"]==null)
        {
            Label1.Text = "You are not logged in.";
            Response.Redirect("login1.aspx");
        }
        else
        {
            Session["user"] = null;
            Response.Redirect("index1.aspx");
        }
    }
}