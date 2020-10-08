using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace WebApplication2
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Feedback(Name,Email,Review) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')",cnn);
            cmd.CommandType = CommandType.Text;
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                Label5.Text = "Successful......!!";
                Response.Write("Inserted Successfully..............");
                cnn.Close();
            }

            catch (Exception ex)
            {
                Label5.Text = "Failed......!!";
                Response.Write("Failed Login............." + ex.ToString());
            }
            
        }
    }
}