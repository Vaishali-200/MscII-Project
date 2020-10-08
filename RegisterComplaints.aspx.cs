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
    public partial class RegisterComplaints : System.Web.UI.Page
    {

        static int complaintid;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcomplaintid();
            Label3.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String query = "insert into complaintdetail(complaintid,registerdatetime,cname,complaintdetail,status) values(" + complaintid + ",'" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','Under Processing')";
            String mycon = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label4.Text = "Your Complaint ID is " + complaintid + " . You can Check the Status of Complaint Using Complaint ID";
        }

        public void getcomplaintid()
        {
            String con = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
            SqlConnection scon = new SqlConnection(con);
            String myquery = "select complaintid from complaintdetail";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                complaintid = 10001;

            }
            else
            {



                String con1 = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
                SqlConnection scon1 = new SqlConnection(con1);
                String myquery1 = "select max(complaintid) from complaintdetail";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int a;
                a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
                a = a + 1;
                complaintid = a;
                scon1.Close();
            }

        }
    }
}