using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class StudentDetailaspx : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into StudentDetail(rollno,studentname,class) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", cnn);
            cmd.CommandType = CommandType.Text;
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                Label4.Text = "Record inserted Successfully......!!";
            }
            catch (Exception ex)
            {
                Response.Write("Failed"+ex.ToString());
                Label4.Text = "Failed Record...";
            }
        }
    }
}