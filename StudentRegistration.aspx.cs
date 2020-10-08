using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.IO;




namespace WebApplication2
{
    public partial class WardenRegistration : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into StudentRegistration(Fname,Lname,Email,Password,Adharno,Address,State,City,Mobileno,Pincode,Gender,Course,DateOfBirth,Bloodgroup) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + RadioButtonList1.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + dob.Text + "','" + DropDownList2.SelectedValue + "' )", cnn);
            cmd.CommandType = CommandType.Text;
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                Label4.Text = "Registration Successful......!!";
                Response.Write("Inserted Successfully..............");

                Session["Email"] = TextBox3.Text;
                Session["Password"] = TextBox4.Text;
                Response.Redirect("Parent.aspx");


                cnn.Close();
                //refress();
            }

            catch (Exception ex)
            {
                Label4.Text = "Registration Failed......!!";
                Response.Write("Failed Login............." + ex.ToString());
            }

        }

    }
}

     