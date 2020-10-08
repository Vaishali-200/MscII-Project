﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication2
{
    public partial class StudentAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Mark Attendance for " + DateTime.Now.ToShortDateString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {

                int rollno1 = Convert.ToInt32(row.Cells[0].Text);
                String studentname1 = row.Cells[1].Text;
                RadioButton rbtn1 = (row.Cells[2].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[2].FindControl("RadioButton2") as RadioButton);
                String status1;
                if (rbtn1.Checked)
                {
                    status1 = "Present";

                }
                else
                {
                    status1 = "Absent";
                }
                String dateofclass1 = DateTime.Now.ToShortDateString();
                String sclass1 = DropDownList1.SelectedItem.Text;
                saveattendance(rollno1, studentname1, dateofclass1, status1, sclass1);
            }
            Label4.Text = "Attendance Has Been Saved Successfully";

        }

        private void saveattendance(int rollno, String studentname, String dateofclass1, String status, String sclass)
        {
            String query = "insert into StudentAttendance(rollno,studentname,dateofclass,attendancestatus,class) values(" + rollno + ",'" + studentname + "','" + dateofclass1 + "','" + status + "','" + sclass + "')";
            String mycon = "Data Source=DESKTOP-3UPAE1B\\SQLEXPRESS;Initial Catalog=Database1;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }
       
    }
}