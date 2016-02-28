using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
public partial class web_kart : System.Web.UI.Page
{
    SqlConnection s_con = new SqlConnection("Data Source=ADNAN-PC\\SQLEXPRESS;Initial Catalog=pizzashop;Integrated Security=True");
    String use;
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
        if (Session["user"] != null)
        {
            use=(String)Session["user"];
            SqlDataAdapter da = new SqlDataAdapter("select * from items where usr like '"+use+"';", s_con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (!IsPostBack)
            {
                GridView1.DataSource = dt;
                DataBind();
            }
            s_con.Close();

            s_con.Open();
            SqlCommand cmd = new SqlCommand("select Sum(price*quantity) from items where usr like '" + use + "';", s_con);
            SqlDataReader dr = cmd.ExecuteReader();
            int sq = 0;
            while (dr.Read())
            {
                try
                {
                    sq = dr.GetInt32(0);
                }
                catch(SqlNullValueException)
                {
                    Response.Redirect("Menu.aspx");
                }
            }
            total.Text = (sq).ToString();

            s_con.Close();
        }
        else
        {
            Response.Redirect("login1.aspx");
        }
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Accessing BoundField Column
        string name = GridView1.SelectedRow.Cells[0].Text;

        //Accessing TemplateField Column controls
        string item_name = (GridView1.SelectedRow.FindControl("lbln") as Label).Text;
        SqlCommand s_cmd = new SqlCommand("delete items where item_name= @name and usr like '" + use + "';", s_con);
        s_cmd.Parameters.AddWithValue("@name", item_name);
        s_con.Open();

        s_cmd.ExecuteNonQuery();
        updated();
        s_con.Close();

    }
    void updated()
    {
        try {
            SqlDataAdapter da = new SqlDataAdapter("select * from items where usr like '" + use + "';", s_con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();
        s_con.Close();
        s_con.Open();

        SqlCommand cmd = new SqlCommand("select Sum(price*quantity) from items where usr like '" + use + "';", s_con);
        SqlDataReader dr = cmd.ExecuteReader();
        int sq = 0;
        while (dr.Read())
        {
            try
            {
                sq = dr.GetInt32(0);
        total.Text = (sq).ToString();   
            }
            catch(SqlNullValueException)
            { total.Text=null;
                break;
            }
        }

        s_con.Close();
        }
        catch(SqlException)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from items where usr like '" + use + "';", s_con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
            s_con.Close();
            s_con.Open();
            total.Text = null;
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {


        s_con.Open();
        SqlCommand cmd = new SqlCommand("delete from items where usr like '" + use + "';", s_con);
        cmd.ExecuteNonQuery();
        s_con.Close();
        Response.Redirect("Entercc.aspx");
    }
    
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        use = (String)Session["user"];
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Find the DropDownList in the Row
            DropDownList ddlq = (e.Row.FindControl("ddlq") as DropDownList);

            SqlDataAdapter da = new SqlDataAdapter("select quantity from items where usr like '" + use + "';", s_con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //ddlq.DataTextField = "quantity";
            //ddlq.DataValueField = "quantity";

            //Add Default Item in the DropDownList
            string val = (e.Row.FindControl("lblq") as Label).Text;
            ddlq.Items.Insert(0, val);
            //Binding the Dropdown with Dummy data.
            ddlq.Items.Insert(1, "1");
            ddlq.Items.Insert(2, "2");
            ddlq.Items.Insert(3, "3");
            ddlq.Items.Insert(4, "4");
            ddlq.Items.Insert(5, "5");
            ddlq.Items.Insert(6, "6");
            ddlq.Items.Insert(7, "7");
            ddlq.Items.Insert(8, "8");
            ddlq.Items.Insert(9, "9");
            ddlq.Items.Insert(10, "10");
            ddlq.DataBind();
        }
    }
    protected void ddlTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Casting sender to Dropdown
        DropDownList ddl = sender as DropDownList;
        //Looping through each Gridview row to find exact Row 
        //of the Grid from where the SelectedIndex change event is fired.
        foreach (GridViewRow row in GridView1.Rows)
        {
            //Finding Dropdown control  
            Control ctrl = row.FindControl("ddlq") as DropDownList;
            if (ctrl != null)
            {
                    DropDownList ddl1 = (DropDownList)ctrl;
                    //Comparing ClientID of the dropdown with sender
                    if (ddl.ClientID == ddl1.ClientID)
                    {
                        //ClientID is match so find the Hidden Label control and update the database
                        Label lbl = row.FindControl("lbln") as Label;
                        SqlCommand s_cmd = new SqlCommand("update items set quantity= @qty where item_name like @name and usr like '" + use + "';", s_con);
                        s_cmd.Parameters.AddWithValue("@name", lbl.Text);
                        s_cmd.Parameters.AddWithValue("@qty", ddl1.SelectedValue);
                        s_con.Open();

                        s_cmd.ExecuteNonQuery();
                        updated();
                        s_con.Close();
                        //break;
                    }
            }
        }
    }
}


   