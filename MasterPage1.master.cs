using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class MasterPage1 : System.Web.UI.MasterPage
{
    SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("onfocus", "this.value=''");
        TextBox2.Attributes.Add("onfocus", "this.value=''");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str=ConfigurationManager.ConnectionStrings["DaTaConnectionString"].ConnectionString;
        con = new SqlConnection(str);
    
        SqlCommand cmd = new SqlCommand("select * from Reg where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'", con);
        
        try
        {
            con.Open();
            dr= cmd.ExecuteReader();
           
            if (dr.HasRows)
            {
                Session["user"] = TextBox1.Text;
                con.Close();
                Response.Redirect("Option.aspx");
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('Oops...Invalid credentials!!');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
        
    }


   
}

 


        


