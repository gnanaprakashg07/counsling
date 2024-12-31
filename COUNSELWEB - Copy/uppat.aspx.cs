using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class uppat : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;
    OleDbDataReader dr; 
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\COUNSELWEB\\counsel.mdb");
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("update register set csname='" + TextBox2.Text + "', gender='" + TextBox2.Text + "',age='" + TextBox3.Text + "', emailid='" + TextBox4.Text + "', mobile='" + TextBox5.Text + "', aadhar='" + TextBox6.Text + "', address='" + TextBox7.Text + "', doj='" + TextBox8.Text +  "' where csid='" + TextBox1.Text + "'", con);
        com.ExecuteNonQuery();
        Label1.Text = "Record Updated";
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("select * from register where csid='" + TextBox1.Text + "'", con);
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
            
        }
        else
        {
            Label1.Text = "Record Not Found";
        }
        con.Close();
    }
}