using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (User.Identity.IsAuthenticated)
        {
            HiddenField1.Value = User.Identity.Name;
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = true;
            hello.Text = User.Identity.Name;

        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Private/Create.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count == 0)
        {
            Label1.Text = "Please create a profile first!";
            return;
        }    
        SqlDataSource1.Delete(); //delete profile
        Label1.Text = "Delete Successful!";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Delete();//delete account
        SqlDataSource1.Delete();
        FormsAuthentication.SignOut();
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Private/View.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count == 0)
        {
            Label1.Text = "Please create a profile!";
            return;
        }      
            Response.Redirect("/Private/Edit.aspx");
    }
}