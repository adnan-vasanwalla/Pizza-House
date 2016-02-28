using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
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
            login.Visible = false;
            logout.Visible = true;
            users.Text = (string)(Session["user"]);
        }
    }
    protected void l10_Click(object sender, EventArgs e)
    {   
        Session["itm"] = l10.SkinID;
        Session["itmdes"] = l11.SkinID;
        Session["itmimg"] = l1i.SkinID;
        Response.Redirect("Selected.aspx");
    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session["itm"] = l210.SkinID;
        Session["itmdes"] = l211.SkinID;
        Session["itmimg"] = l21i.SkinID;
        Response.Redirect("Selected.aspx");
    }
protected void l31i_Click(object sender, EventArgs e)
{
    Session["itm"] = l310.SkinID;
        Session["itmdes"] = l311.SkinID;
        Session["itmimg"] = l31i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l41i_Click(object sender, EventArgs e)
{
    Session["itm"] = l411.SkinID;
        Session["itmdes"] = l412.SkinID;
        Session["itmimg"] = l41i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l51i_Click(object sender, EventArgs e)
{
    Session["itm"] = l510.SkinID;
        Session["itmdes"] = l511.SkinID;
        Session["itmimg"] = l51i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l61i_Click(object sender, EventArgs e)
{
    Session["itm"] = l610.SkinID;
        Session["itmdes"] = l611.SkinID;
        Session["itmimg"] = l61i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l71i_Click(object sender, EventArgs e)
{
    Session["itm"] = l710.SkinID;
        Session["itmdes"] = l711.SkinID;
        Session["itmimg"] = l71i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l81i_Click(object sender, EventArgs e)
{
    Session["itm"] = l810.SkinID;
        Session["itmdes"] = l811.SkinID;
        Session["itmimg"] = l81i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l91i_Click(object sender, EventArgs e)
{
    Session["itm"] = l910.SkinID;
        Session["itmdes"] = l911.SkinID;
        Session["itmimg"] = l91i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l101i_Click(object sender, EventArgs e)
{
    Session["itm"] = l1010.SkinID;
        Session["itmdes"] = l1011.SkinID;
        Session["itmimg"] = l101i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l111i_Click(object sender, EventArgs e)
{
    Session["itm"] = l110i.SkinID;
        Session["itmdes"] = l1111i.SkinID;
        Session["itmimg"] = l111i.SkinID;
        Response.Redirect("Selected.aspx");
}
protected void l121i_Click(object sender, EventArgs e)
{
        Session["itm"] = l1210.SkinID;
        Session["itmdes"] = l1211.SkinID;
        Session["itmimg"] = l121i.SkinID;
        Response.Redirect("Selected.aspx");
}
}