using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Option : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {

        }
        else
        {
           lblName.Text = "WELCOME  " + (String)Session["user"];
            

        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        
    }
}