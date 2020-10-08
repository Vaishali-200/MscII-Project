using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



namespace WebApplication2
{
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection cnn=new SqlConnection("Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void refress()
        {

            TextBox1.Text = "";

            TextBox2.Text = "";
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {

             SqlCommand cmd = new SqlCommand("insert into LoginTable(UserName,Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "' )", cnn);
             cmd.CommandType = CommandType.Text;
           try
           {
               cnn.Open();
               cmd.ExecuteNonQuery();
               Response.Write("Inserted Successfully..............");
               cnn.Close();
               refress();
            }
    
            catch (Exception ex)
            {
                Response.Write("Failed Login............." + ex.ToString());
            }

        }

         protected void Button1_Click(object sender, EventArgs e)
         {
            refress();
         }
    }
}



      
    


 