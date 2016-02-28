using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
public partial class web_login1 : System.Web.UI.Page
{
    string user;
    SqlConnection s_con = new SqlConnection("Data Source=ADNAN-PC\\SQLEXPRESS;Initial Catalog=pizzashop;Integrated Security=True");
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
            Response.Redirect("index1.aspx");
        }
    }
    void check_data()
    {
        SqlCommand s_smd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = s_smd;
        da.SelectCommand.Connection = s_con;
        da.SelectCommand.CommandText = "select usr from usrdb1 where usr like @uname and pass like @pass";
        da.SelectCommand.Parameters.AddWithValue("@pass", pass.Text);
        da.SelectCommand.Parameters.AddWithValue("@uname", usr.Text);
        da.SelectCommand.CommandType = CommandType.Text;
        DataSet ds = new DataSet();
        da.Fill(ds, "usr");
        if (ds.Tables["usr"].Rows.Count == 0)
        {
            notvalid.Visible = true;
            notvalid.Text = "Wrong user name or password";
        }

        else if (ds.Tables["usr"].Rows.Count ==1)
        {
            notvalid.Visible = true;
            Session["user"] = usr.Text;
            Response.Redirect("Menu.aspx");
            notvalid.Text = "Good keep it up.";
        
        }
        s_con.Close();
    }
    protected void clk_Click(object sender, EventArgs e)
    {
        check_data();
    }
}