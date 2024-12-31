using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class docassess : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\COUNSELWEB\\counsel.mdb");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("insert into pyasses values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + DropDownList3.SelectedItem.ToString() + "','" + DropDownList4.SelectedItem.ToString() + "','" + DropDownList5.SelectedItem.ToString() + "','" + DropDownList6.SelectedItem.ToString() + "','" + DropDownList7.SelectedItem.ToString() + "','" + DropDownList8.SelectedItem.ToString() + "','" + DropDownList9.SelectedItem.ToString() + "','" + DropDownList10.SelectedItem.ToString() + "','" + DropDownList11.SelectedItem.ToString() + "','" + DropDownList12.SelectedItem.ToString() + "','" + DropDownList13.SelectedItem.ToString() + "','" + DropDownList14.SelectedItem.ToString() + "','" + DropDownList15.SelectedItem.ToString() + "','" + TextBox2.Text + "')", con);
        com.ExecuteNonQuery();
        Label1.Text = "Assessment Completed Successfully";
        con.Close();
    }
}