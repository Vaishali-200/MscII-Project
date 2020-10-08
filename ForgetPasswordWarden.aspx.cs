using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace WebApplication2
{
    public partial class ForgetPasswordWarden : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPwd_Click(object sender, EventArgs e)
        {
            string query = "select Email,Password from WardenRegistration where Email=@Email";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                string username = sdr["Email"].ToString();
                string password = sdr["Password"].ToString();
                MailMessage mm = new MailMessage("vaishalibelote6@gmail.com", txtEmail.Text);
                mm.Subject = "Your Password!";
                mm.Body = string.Format("hello:<h1>{0}</h1> is ur emailid <br> ur passeord is <h1>{1}</h1>", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "vaishalibelote6@gmail.com";
                nc.Password = "Kemfix200";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Labelmsg.Text = "\nur password has been sent to \t" + txtEmail.Text;
                Labelmsg.ForeColor = Color.Green;

            }
            else
            {
                Labelmsg.Text = txtEmail.Text + "\tthis email id is not exist in your database...";
                Labelmsg.ForeColor = Color.Red;
            }
        }
    }
}