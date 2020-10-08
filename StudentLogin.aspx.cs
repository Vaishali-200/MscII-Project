using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace WebApplication2
{
    public partial class StudentLogin : System.Web.UI.Page
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
                string qry = "select * from StudentRegistration where Email='" + uid + "' and Password='" + pass + "'";  
                SqlCommand cmd = new SqlCommand(qry,cnn);  
                SqlDataReader sdr = cmd.ExecuteReader();  
                    if(sdr.Read())  
                    {  
                        Label4.Text = "Login Sucessful......!!";
                        Response.Write("Login Successful...............");
                        
                    }  
                     else  
                    {  
                        Label4.Text = "Login Failed......";
                        Response.Write("Login Failed..............");
                    }  
                  cnn.Close();  
                  }  
                    catch(Exception ex)  
                    {  
                        Response.Write(ex.Message);  
                    }
                
            }      

               
    }
}