using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


public partial class dochome : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;
    OleDbDataReader dr; 
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\COUNSELWEB\\counsel.mdb");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("select * from psdoctor where psyid='" + TextBox1.Text + "'", con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            TextBox5.Text = dr[4].ToString();
            TextBox6.Text = dr[5].ToString();
            TextBox7.Text = dr[6].ToString();
            TextBox8.Text = dr[7].ToString();
            TextBox9.Text = dr[8].ToString();
        }
        else
        {
            Label1.Text = "Record Not Found";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("update psdoctor set psyid='" + TextBox1.Text + "', psyname='" + TextBox2.Text + "',psyqual='" + TextBox3.Text + "', psygend='" + TextBox4.Text + "', psyemail='" + TextBox5.Text + "', psymob='" + TextBox6.Text + "', psyaddr='" + TextBox7.Text + "', psyspecial='" + TextBox8.Text + "', psygpoint='" + TextBox9.Text + "' where psyid='" + TextBox1.Text + "'", con);
        com.ExecuteNonQuery();
        Label1.Text = "Record Updated";
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}