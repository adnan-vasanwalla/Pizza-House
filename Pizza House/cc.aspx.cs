using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
public partial class web_cc : System.Web.UI.Page
{
    SqlConnection new_Con = new SqlConnection("Data Source=ADNAN-PC\\SQLEXPRESS;Initial Catalog=pizzashop;Integrated Security=True");
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
    }
    void enterdata()
    {
        try
        {
            SqlCommand sqlcmd = new SqlCommand("insert into usrdb1  (usr,pass,email,fname,lname,pno,address) values(@usr,@pass,@em,@fn,@ln,@pn,@add)", new_Con);
            sqlcmd.Parameters.AddWithValue("@fn", fname.Text);
            sqlcmd.Parameters.AddWithValue("@ln", lname.Text);
            sqlcmd.Parameters.AddWithValue("@usr", usr.Text);
            sqlcmd.Parameters.AddWithValue("@em", email.Text);
            sqlcmd.Parameters.AddWithValue("@pn", phno.Text);
            sqlcmd.Parameters.AddWithValue("@pass", pass.Text);
            sqlcmd.Parameters.AddWithValue("@add", address.Text);
            new_Con.Open();
            int i = sqlcmd.ExecuteNonQuery();
            new_Con.Close();
            notvalid.Visible = true;
            notvalid.Text = "cool";
            Response.Redirect("index1.aspx");
        }
        catch(SqlException)
        {
            notvalid.Visible = true;
            notvalid.Text = "The username you have entered has already taken,please enter different usename.";
        }
    }
    protected void clk_Click(object sender, EventArgs e)
    {
        if(IsValid)
        {
            enterdata();        
        }
    }
    protected void clk_Click1(object sender, EventArgs e)
    {

    }
}