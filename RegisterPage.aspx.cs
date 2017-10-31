using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class RegisterPage : System.Web.UI.Page
{
    string strc = ConfigurationManager.ConnectionStrings["DaTaConnectionString"].ConnectionString;
        
    SqlConnection con = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strc);

        string str = "insert into Reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "' , '" + TextBox4.Text + "','" + TextBox12.Text + "','" + TextBox6.Text + "' , '" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "' ,'" + TextBox10.Text + "' )";
        SqlCommand cmd = new SqlCommand(str,con);

        try
        {
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result != 0)
            {
                Response.Redirect("Home.aspx");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        //ScriptManager.RegisterStartupScript(Button1, Button1.GetType(), "alert", "alert('done successfully');", true);

       
    }
}