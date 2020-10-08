using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Collections.Specialized;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");
        
        SqlDataAdapter sda = new SqlDataAdapter();
        
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  con.Open();
            cmd = new SqlCommand("Select Fmobile from Parent", con);//Advised to use parameterized query
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox4.Text = dr.GetValue(0).ToString();
                dr.Close();
            }*/
           
            /*if (Session["name1"] != null)
            {
                Session["Name"] = TextBox1.Text;
                Session["Email"] = TextBox2.Text;
                Session["Mobile"] = TextBox3.Text;
                Session["Pmobile"] = TextBox4.Text;
                Session["FromDate"] = TextBox5.Text;
                Session["ToDate"] = TextBox6.Text;
                Session["Purpose"] = TextBox7.Text;
                Session["Location"] = TextBox8.Text;
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Data OR No Date Entered inStudent Section')</script>");
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Nightout VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("Inserted.....");

            string destinationaddr = "91" + TextBox3.Text;
            string message = "Dear " + TextBox1.Text + " I'm approving you nightout as per your filled data in form. This is as per your details so it's all about your responsibility. This nightout is given to you officically with confirmaion with your parents. Thanks!!";

            String message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "6QY/jSQh+8w-WSRF0tPGnDlesZX5ugCfc6Rzd7q0jB"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });

                string result = System.Text.Encoding.UTF8.GetString(response);
                //savedata();
                Label10.Text = "Nighout message sent successfully...";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string destinationaddr = "91" + TextBox3.Text;
            string message = "Dear " + TextBox1.Text + "Your nightout request is not approved.Thanks!!";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "6QY/jSQh+8w-WSRF0tPGnDlesZX5ugCfc6Rzd7q0jB"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });
                string result = System.Text.Encoding.UTF8.GetString(response);
                //savedata();
                Label10.Text = "Nighout message sent successfully...";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
            }
        }

    }
}