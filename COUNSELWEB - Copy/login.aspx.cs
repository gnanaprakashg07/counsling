using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\COUNSELWEB\\counsel.mdb");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("select * from logindb where uname='" + TextBox1.Text + "' and pword='" + TextBox2.Text + "'",con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            if (TextBox1.Text == "admin")
            {
                Response.Redirect("admhome.aspx");
            }
            else if (TextBox1.Text.Substring(0, 3) == "PSY")
            {
                Response.Redirect("dochome.aspx");
            }
            else
            {
                Response.Redirect("pathome.aspx");
            }
        }
        else
        {
            Label1.Text = "Invalid Username or Password";
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        
    }
}