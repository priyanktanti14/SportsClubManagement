using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace SportsClubManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source = DESKTOP-CCGKBQ7\\SQLEXPRESS; initial catalog = sportclubdb; integrated security = true;");
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "insert into tbl_user(first_name,last_name,dob,gender,phone,email,pass) values('" + txtFname.Text + "','" + txtLname.Text + "','" + txtDob.Text + "','" + rblGender.SelectedValue + "','" + txtPhone.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            //MessageBox.Show("Sign Up successfully");

            string successMessage = "Sign-up successful!";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", "alert('" + successMessage + "');", true);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtDob.Text = "";
            rblGender.SelectedValue = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }



    }
}