using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Page.User.Identity.Name;

        Label7.EnableViewState = false;
        Label8.EnableViewState = false;
        Label9.EnableViewState = false;
        Label10.EnableViewState = false;
        Label11.EnableViewState = false;
        Label12.EnableViewState = false;
        Label13.EnableViewState = false;
        Label14.EnableViewState = false;
        Label15.EnableViewState = false;
        Label16.EnableViewState = false;
        Label17.EnableViewState = false;
        Label18.EnableViewState = false;
        Label19.EnableViewState = false;
        Label20.EnableViewState = false;
        Label21.EnableViewState = false;
        Label22.EnableViewState = false;

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    private int hour1 = 0, minute1 = 0;
    private int hour2 = 0, minute2 = 0;
    private int hour3 = 0, minute3 = 0;
    private int hour4 = 0, minute4 = 0;

    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {

        hour1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "hour"));
        minute1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "minute"));

        while (minute1 > 60)
        {
            hour1++;
            minute1 -= 60;
        }

        Label7.Text = Convert.ToString(hour1);
        Label8.Text = Convert.ToString(minute1);
        Label15.Text = Convert.ToString(hour1);
        Label16.Text = Convert.ToString(minute1);

    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        hour2 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "hour"));
        minute2 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "minute"));

        while (minute2 > 60)
        {
            hour2++;
            minute2 -= 60;
        }

        Label9.Text = Convert.ToString(hour2);
        Label10.Text = Convert.ToString(minute2);
        Label17.Text = Convert.ToString(hour2);
        Label18.Text = Convert.ToString(minute2);
    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        hour3 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "hour"));
        minute3 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "minute"));

        while (minute3 > 60)
        {
            hour3++;
            minute3 -= 60;
        }

        Label11.Text = Convert.ToString(hour3);
        Label12.Text = Convert.ToString(minute3);
        Label19.Text = Convert.ToString(hour3);
        Label20.Text = Convert.ToString(minute3);
    }
    protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        hour4 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "hour"));
        minute4 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "minute"));

        while (minute4 > 60)
        {
            hour4++;
            minute4 -= 60;
        }

        Label13.Text = Convert.ToString(hour4);
        Label14.Text = Convert.ToString(minute4);
        Label21.Text = Convert.ToString(hour4);
        Label22.Text = Convert.ToString(minute4);

    }
}