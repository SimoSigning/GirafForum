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
    public partial class SpecificProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string SpecUser = Session["SpecUser"].ToString();
            UserLabel.Text = SpecUser;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["derpection"].ConnectionString);
            string ProfileQuery = "SELECT Username, Firstname, Lastname, Email, Adresse, Mobil FROM Users WHERE Username='" + SpecUser + "';";
            SqlCommand profilecmd = new SqlCommand(ProfileQuery, connection);
            connection.Open();
            SqlDataReader readprofile = profilecmd.ExecuteReader();
            readprofile.Read();
            UserNameLabel.Text = readprofile["Username"].ToString();
            FirstNameLabel.Text = readprofile["Firstname"].ToString();
            LastNameLabel.Text = readprofile["Lastname"].ToString();
            EmailLabel.Text = readprofile["Email"].ToString();
            AdressLabel.Text = readprofile["Adresse"].ToString();
            MobilLabel.Text = readprofile["Mobil"].ToString();
            readprofile.Close();
            connection.Close();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void BackToPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProfiles.aspx");
        }

        protected void ViewForum_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }
    }
}