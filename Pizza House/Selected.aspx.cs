using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_Selected : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=ADNAN-PC\\SQLEXPRESS;Initial Catalog=pizzashop;Integrated Security=True");
    string pqty,it,pr,ca,im,inf,u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            users.Visible = false;
            login.Visible = true;
            logout.Visible = false;
            Response.Redirect("login1.aspx");
        }
        else
        {
            users.Visible = true;
            users.Text = (string)(Session["user"]);
            login.Visible = false;
            logout.Visible = true;
        }
        string a=(string)Session["itm"];
        lbl1.Text=a;
       string b=(string)Session["itmdes"];
        labl2.Text=b;
        string c = (string)Session["itmimg"];
        img1.ImageUrl = c;


        SqlCommand retr = new SqlCommand("select item_name,price,cat,img,info from menu where item_name like '" + (string)Session["itm"] + "'", conn);
        conn.Open();
        SqlDataReader dr = retr.ExecuteReader();
        while(dr.Read())
        {
            it = dr[0].ToString();
            pr = dr[1].ToString();
            ca = dr[2].ToString();
            im = dr[3].ToString();
            inf = dr[4].ToString();
        }
        price.Text ="Rs. "+ pr;
        conn.Close();
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        pqty = qty.Text;
        if(Page.IsValid)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("login1.aspx");
            }
            else
            {
                u=(String)(Session["user"]);
                SqlCommand insert = new SqlCommand("insert into items(item_name,price,cat,img,info,quantity,usr) values (@Item,@Price,@Cat,@Img,@Info2,@Quantity,@use)", conn);
                insert.Parameters.AddWithValue("@Item", it);
                insert.Parameters.AddWithValue("@Price", pr);
                insert.Parameters.AddWithValue("@Cat", ca);
                insert.Parameters.AddWithValue("@Img", im);
                insert.Parameters.AddWithValue("@Info2", inf);
                insert.Parameters.AddWithValue("@Quantity", pqty);
                insert.Parameters.AddWithValue("@use", u);
                try
                {
                    conn.Open();
                    int i = insert.ExecuteNonQuery();
                    verify.Text = Convert.ToString(i);
                }
                catch(SqlException ex)
                {
                    verify.Text = "Error" + ex;
                }
                finally
                {
                    conn.Close();
                    Response.Redirect("Confirm.aspx");
                }
            }
        }
    }
}