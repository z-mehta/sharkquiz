using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C__ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label2.Text = DateTime.Now.ToLongTimeString();
            Label4.Text = DateTime.Now.AddMinutes(1).ToLongTimeString();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToLongTimeString();
        int result = string.Compare(Label2.Text, Label4.Text, true);


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
        DataList1.Visible = false;
        int count = 0;
        foreach (DataListItem item in DataList1.Items)
        {
            RadioButtonList rdb = (RadioButtonList)item.FindControl("RadioButtonList1");
            Label lbl = (Label)item.FindControl("Label3");
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
        Label5.Text = "your score is"   + count;
        Label5.Visible = true;
    }
}