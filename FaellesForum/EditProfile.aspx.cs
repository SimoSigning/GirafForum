using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FaellesForum
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void UpdateProfile(object sender, EventArgs e)
        {
            string passtxt = EditPassWord.Text;
            string firstnametxt = EditFirstName.Text;
            string lastnametxt = EditLastName.Text;
            string emailtxt = EditEmail.Text;
            string adressetxt = EditAdresse.Text;
            string mobiltxt = EditMobil.Text;
            string UserName = Session["Giraf"].ToString();

            if (EditPassWord.Text == "")
            {
                FillPassWord.Text = "Gotta enter a password";
            }
            else
            {
            SqlConnection newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["derpection"].ConnectionString);
            string updatequery = "UPDATE Users SET Password='" + passtxt + "', Firstname='" + firstnametxt + "', Lastname='" + lastnametxt + "', Email='" + emailtxt + "', Adresse ='" + adressetxt + "', Mobil='" + mobiltxt + "' WHERE Username = '" + UserName + "'";
            SqlCommand updatecmd = new SqlCommand(updatequery, newconnection);
            newconnection.Open();
            updatecmd.ExecuteNonQuery();
            newconnection.Close();
            Response.Redirect("Forum.aspx");
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void BackToForum(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }
    }
}