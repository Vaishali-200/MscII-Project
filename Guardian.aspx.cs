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
    public partial class Guardian : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into Guardian(Gfname,Glname,Gmobile,Goccupation,Ggmail) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", cnn);
            cmd.CommandType = CommandType.Text;
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                //Label7.Text = "Successful......!!";
                Response.Write("Inserted Successfully..............");

                /* Session["Email"] = TextBox3.Text;
                    Session["Password"] = TextBox4.Text;
                    Response.Redirect("WardenLogin.aspx");*/

                cnn.Close();
            }

            catch (Exception ex)
            {
                Label7.Text = "Failed......!!";
                Response.Write("Failed Login............." + ex.ToString());
            }

        }


    }
}