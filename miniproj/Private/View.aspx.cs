using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        TableRow R = new TableRow();
        TableCell c1 = new TableCell();
        TableCell c2 = new TableCell();
        TableCell c3 = new TableCell();
        TableCell c4 = new TableCell();
        TableCell c5 = new TableCell();
        TableCell c6 = new TableCell();
        TableCell c7 = new TableCell();
        R.Cells.Add(c1);
        R.Cells.Add(c2);
        R.Cells.Add(c3);
        R.Cells.Add(c4);
        R.Cells.Add(c5);
        R.Cells.Add(c6);
        R.Cells.Add(c7);
        c1.BorderWidth = 2;
        c1.BorderColor = Color.Black;
        c1.Width = 100;
        c2.BorderWidth = 2;
        c2.BorderColor = Color.Black;
        c2.Width = 100;
        c3.BorderWidth = 2;
        c3.BorderColor = Color.Black;
        c3.Width = 100;
        c4.BorderWidth = 2;
        c4.BorderColor = Color.Black;
        c4.Width = 100;
        c5.BorderWidth = 2;
        c5.BorderColor = Color.Black;
        c5.Width = 100;
        c6.BorderWidth = 2;
        c6.BorderColor = Color.Black;
        c6.Width = 100;
        c7.BorderWidth = 2;
        c7.BorderColor = Color.Black;
        c7.Width = 100;
        c1.Text = "Name";
        c2.Text = "Age";
        c3.Text = "Gender";
        c4.Text = "Telephone";
        c5.Text = "Address";
        c6.Text = "E-mail";
        c7.Text = "UserName";
        Table1.Rows.Add(R);

        foreach (DataRow dr in dv.Table.Rows)
        {
            TableRow r = new TableRow();
            TableCell c8 = new TableCell();
            TableCell c9 = new TableCell();
            TableCell c10 = new TableCell();
            TableCell c11 = new TableCell();
            TableCell c12 = new TableCell();
            TableCell c13 = new TableCell();
            TableCell c14 = new TableCell();

            r.Cells.Add(c8);
            r.Cells.Add(c9);
            r.Cells.Add(c10);
            r.Cells.Add(c11);
            r.Cells.Add(c12);
            r.Cells.Add(c13);
            r.Cells.Add(c14);
            c8.BorderWidth = 2;
            c8.BorderColor = Color.Black;
            c8.Width = 100;
            c9.BorderWidth = 2;
            c9.BorderColor = Color.Black;
            c9.Width = 100;
            c10.BorderWidth = 2;
            c10.BorderColor = Color.Black;
            c10.Width = 100;
            c11.BorderWidth = 2;
            c11.BorderColor = Color.Black;
            c11.Width = 100;
            c12.BorderWidth = 2;
            c12.BorderColor = Color.Black;
            c12.Width = 100;
            c13.BorderWidth = 2;
            c13.BorderColor = Color.Black;
            c13.Width = 100;
            c14.BorderWidth = 2;
            c14.BorderColor = Color.Black;
            c14.Width = 100;
            c8.Text = dr["Name"].ToString();
            c9.Text = dr["Age"].ToString();
            c10.Text = dr["Gender"].ToString();
            c11.Text = dr["Telephone"].ToString();
            c12.Text = dr["Address"].ToString();
            c13.Text = dr["Email"].ToString();
            c14.Text = dr["UserName"].ToString();
            Table1.Rows.Add(r);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }
}