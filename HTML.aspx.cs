using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTML : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label5.Text = DateTime.Now.ToLongTimeString();
            Label4.Text = DateTime.Now.AddMinutes(1).ToLongTimeString();
           
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
        int result = string.Compare(Label1.Text, Label4.Text, true);


        if (result == 0)
        {
            DataList1.Visible = false;

        }
        else if (result == 1)
        {
            DataList1.Visible = false;

        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataList1.Visible = false;
        int count = 0;
        foreach (DataListItem item in DataList1.Items)
        {
            RadioButtonList rdb = (RadioButtonList)item.FindControl("RadioButtonList1");
            Label lbl = (Label)item.FindControl("Label4");
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
        Label6.Text = "your score is" + count; 
    }
}