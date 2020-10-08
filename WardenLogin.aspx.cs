using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WardenRegistration1 : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                cnn.Open();
                string qry = "select * from WardenRegistration where Email='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, cnn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {

                   /* Session["Email"] = uid;
                    Session["Password"] = pass;
                    Response.Redirect("Parent.aspx");*/

                    Label4.Text = "Login Successful......!!";
                    Response.Write("Login Successful...............");

                }
                else
                {
                    Label4.Text = "Login Failed......";
                    Response.Write("Login Failed..............");
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }      
    }
}