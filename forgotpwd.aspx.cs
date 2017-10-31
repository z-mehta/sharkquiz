//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//public partial class forgotpwd : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }
//}
using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;

public partial class forgotpwd : System.Web.UI.Page
{
    SqlConnection con = null;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Create Connection String And SQL Statement

        string strConnection = ConfigurationManager.ConnectionStrings["DaTaConnectionString"].ConnectionString;
        string strSelect = "SELECT username,password FROM Reg WHERE emailid = @EmailID";

        con = new SqlConnection(strConnection);
        SqlCommand command = new SqlCommand();
        command.Connection = con;
        command.CommandType = CommandType.Text;
        command.CommandText = strSelect;

        command.Parameters.AddWithValue("@EmailID",txtEmail.Text);
        //Create Dataset to store results and DataAdapter to fill Dataset
        DataSet dsPwd = new DataSet();
        SqlDataAdapter dAdapter = new SqlDataAdapter(command);
        con.Open();
        dAdapter.Fill(dsPwd);
        if (dsPwd.Tables[0].Rows.Count > 0)
        {

            MailMessage UserInfo = new MailMessage();
            UserInfo.To.Add(txtEmail.Text.ToString());
            UserInfo.From = new MailAddress("dongreanita@ymail.com");
            UserInfo.Subject = "Forgot Password Information";

            UserInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["username"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["password"] + "<br><br>";
            UserInfo.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("dongreanita@ymail.com", "dreamtechlabs");
            try
            {
                smtp.Send(UserInfo);
                lblMessage.Text = "Password is sent to you email id,you can now <a href='Home.aspx'>Login</a>";
                con.Close();
            }
            catch (Exception)
            {
                lblMessage.Text = "oops.. no internet connection.";
            }
        }
        else
        {
            con.Close();
            lblMessage.Text = "Email Address Not Registered";
        }

    }
}

