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
    public partial class ReplyOnComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["complaintid"] != null)
            {
                int complaintid = Convert.ToInt16(Request.QueryString["complaintid"].ToString());
                String mycon = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
                String myquery = "Select * from complaintdetail where complaintid=" + complaintid;
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label3.Text = "Data Found";
                    Label3.Text = ds.Tables[0].Rows[0]["complaintid"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["registerdatetime"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["cname"].ToString();
                    Label6.Text = ds.Tables[0].Rows[0]["complaintdetail"].ToString();
                    Label7.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
                else
                {
                     Response.Redirect("ViewAllComplaints.aspx");

                }
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
            String updatedata = "Update ComplaintDetail set status='Processed'" + ", replymsg='" + TextBox1.Text + "' where complaintid=" + Label3.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Reply Has Been Processed Properly";

        }


    }
}