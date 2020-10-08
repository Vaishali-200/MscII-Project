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
    public partial class Nightout : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");
        SqlCommand cmd=new SqlCommand();
        SqlDataAdapter sda=new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox1.Text = Session["Name"].ToString() + "  " + Session["hln"].ToString();
            TextBox3.Text = Session["Mobile"].ToString();
            TextBox2.Text = Session["Email"].ToString();
            string hadh = Session["han"].ToString();
            string esm = Session["Email"].ToString();
            con.Open();
            string sql = "Select Fmobile from Parent where Hpan=@hadh";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@hadh", hadh);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            TextBox4.Text = reader["Fname"].ToString();
            reader.Close();
            Session["Name"] = TextBox1.Text;
            Session["Email"] = TextBox2.Text;
            Session["Mobile"] = TextBox3.Text;
            Session["Pmobile"] = TextBox4.Text;
            Session["FromDate"] = TextBox5.Text;
            Session["ToDate"] = TextBox6.Text;
            Session["Purpose"] = TextBox7.Text;
            Session["Location"] = TextBox8.Text;
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            Label10.Text= "Nighout information send to warden";
        }

    }
}