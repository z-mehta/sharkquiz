using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label3.Text = DateTime.Now.ToLongTimeString();
            Label4.Text = DateTime.Now.AddMinutes(1).ToLongTimeString();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label3.Text = DateTime.Now.ToLongTimeString();
        int result = string.Compare(Label3.Text, Label4.Text, true);
        

        if (result == 0)
        {
            DataList1.Visible = false;
          
        }
        else if (result == 1)
        {
            DataList1.Visible = false;
           
        }
        //else if (result == -1)
        //{
        //    Label1.Text += "Test String1 is less than Test String2";
        //}  

        //if (DateTime.Now.ToLongTimeString() == Label4.Text)
        //{
        //    DataList1.Visible = false;
          
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.Visible = false;
        int count = 0;
        foreach (DataListItem item in DataList1.Items)
        {
            RadioButtonList rdb = (RadioButtonList)item.FindControl("RadioButtonList1");
            Label lbl = (Label)item.FindControl("Label1");
            foreach (ListItem li in rdb.Items)
            {
                if (li.Selected)
                {
                    if (li.ToString() == lbl.Text)
                    {
                        count += 1;
                    }
                }
            }

        }
        //Response.Write(count); 
        Label5.Text = "your score is " + count;
        Label5.Visible = true;
    }

    protected void Timer2_Tick(object sender, EventArgs e)
    {
        Label6.Text = DateTime.Now.ToLongTimeString();
    }
}