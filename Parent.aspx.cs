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
    public partial class Parent : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into Parent(Fname,Fmobile,Foccupation,Mname,Mmobile,Moccupation) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", cnn);
            cmd.CommandType = CommandType.Text;
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                //Label4.Text = "Successful......!!";
                Response.Write("Inserted Successfully..............");

                 Session["Fname"] = TextBox1.Text;
                 Session["Mname"] = TextBox4.Text;
                 Response.Redirect("Guardian.aspx");

                cnn.Close();
            }

            catch (Exception ex)
            {
                Label4.Text = "Failed......!!";
                Response.Write("Failed Login............." + ex.ToString());
            }

        }

       

    }
}