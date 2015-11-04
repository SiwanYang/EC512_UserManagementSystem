using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class create : System.Web.UI.Page
{
    long result1;
    long result2;
    protected string[] gender = {"Male","Female" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            genderRadioButtonList.DataSource = gender;
            genderRadioButtonList.DataBind();
        }
        HiddenField2.Value = User.Identity.Name; //username
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        HiddenField1.Value = genderRadioButtonList.SelectedValue; //gender
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count != 0)
        {
            Label1.Text = "Profile already exists.";
            return;
        }
        if (name.Text == "")
        {
            Label3.Text = "Please enter your name!";
            return;
        }
        if (age.Text == "")
        {
            Label4.Text = "Please enter your age!";
            return;
        }
        if (!long.TryParse(age.Text, out result2))
        {
            Label4.Text = "Please enter a number!";
            return;
        }
        if (genderRadioButtonList.SelectedIndex==-1)
        {
            Label5.Text = "Please choose your gender!";
            return;
        }
        if(telephone.Text == "")
        {
            Label2.Text = "Please enter a telephone number!";
            return;
        }
        if (!long.TryParse(telephone.Text, out result1))
        {    Label2.Text = "Please enter a correct telephone number!";
             return;
        }

        SqlDataSource1.Insert();
        Label1.Text = "Creating a profile successfully!";
       
    }

    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }
}