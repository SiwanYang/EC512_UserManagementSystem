using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Edit : System.Web.UI.Page
{
    long result1;
    long result2;
    protected string[] gender = { "Male", "Female" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            genderRadioButtonList.DataSource = gender;
            genderRadioButtonList.DataBind();

            HiddenField2.Value = User.Identity.Name; //username
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (dv == null)
            {
            }
            else
            {
                DataRow dr = dv.Table.Rows[0];
                name.Text = dr["Name"].ToString();
                age.Text = dr["Age"].ToString();
                telephone.Text = dr["Telephone"].ToString();
                address.Text = dr["Address"].ToString();
                email.Text = dr["Email"].ToString();
                if (dr["Gender"].ToString()=="Male")
                {
                    genderRadioButtonList.SelectedIndex = 0;
                }
                else 
                {
                    genderRadioButtonList.SelectedIndex = 1;
                }

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        HiddenField1.Value = genderRadioButtonList.SelectedValue; //gender       
        if (name.Text == "")
        {
            Label2.Text = "Please enter your name!";
            return;
        }
        if (age.Text == "")
        {
            Label3.Text = "Please enter your age!";
            return;
        }
        if (!long.TryParse(age.Text, out result2))
        {
            Label3.Text = "Please enter a number!";
            return;
        }
        if (genderRadioButtonList.SelectedIndex == -1)
        {
            Label4.Text = "Please choose your gender!";
            return;
        }
        if (telephone.Text == "")
        {
            Label5.Text = "Please enter a telephone number!";
            return;
        }
        if (!long.TryParse(telephone.Text, out result1))
        {
            Label5.Text = "Please enter a correct telephone number!";
            return;
        }
        SqlDataSource1.Update();
        Label1.Text = "Updating profile successfully!";       
    }

    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }
}
