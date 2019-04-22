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
    public partial class EditProfiles : System.Web.UI.Page
    {
        protected string selecteditem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = selecteditem;
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void UserList_SelectedIndexChanged(object sender, EventArgs e)
        {
            selecteditem = UserList.SelectedItem.ToString();
        }

        protected void UpdateUser_Click(object sender, EventArgs e)
        {
            string Username = EditProfilesUserName.Text;
            string password = EditProfilesPassWord.Text;
            string firstname = EditProfilesFirstName.Text;
            string lastname = EditProfilesLastName.Text;
            string email = EditProfilesEmail.Text;
            string adresse = EditProfilesAdresse.Text;
            string mobil = EditProfilesMobil.Text;

            SqlConnection newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["derpection"].ConnectionString);
            string UpdateUserQuery = "UPDATE Users SET Username='"+ Username +"',Password = '" + password + "', Firstname = '" + firstname + "', Lastname = '" + lastname + "', Email = '" + email + "', Adresse = '" + adresse + "', Mobil = '" + mobil + "' WHERE Username = '" + Username + "'";
            SqlCommand UpdateUsersCmd = new SqlCommand(UpdateUserQuery, newconnection);
            newconnection.Open();
            UpdateUsersCmd.ExecuteNonQuery();
            newconnection.Close();
        }

        protected void ChooseUser_Click(object sender, EventArgs e)
        {
            SqlConnection newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["derpection"].ConnectionString);
            string GetUserQuery = "SELECT * FROM Users WHERE Username = '" + selecteditem +"';";
            SqlCommand GetUserCmd = new SqlCommand(GetUserQuery, newconnection);
            newconnection.Open();
            SqlDataReader reader = GetUserCmd.ExecuteReader();
            reader.Read();
            EditProfilesUserName.Text = reader["Username"].ToString();
            EditProfilesPassWord.Text = reader["Password"].ToString();
            EditProfilesFirstName.Text = reader["Firstname"].ToString();
            EditProfilesLastName.Text = reader["Lastname"].ToString();
            EditProfilesEmail.Text = reader["Email"].ToString();
            EditProfilesAdresse.Text = reader["Adresse"].ToString();
            EditProfilesMobil.Text = reader["Mobil"].ToString();
            reader.Close();
            newconnection.Close();
            Label1.Text = selecteditem;
        }

        protected void GenerateList_Click(object sender, EventArgs e)
        {
            UserList.Items.Clear();
            SqlConnection newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["derpection"].ConnectionString);
            string UserListQuery = "SELECT Username FROM Users";
            SqlCommand Userscmd = new SqlCommand(UserListQuery, newconnection);
            newconnection.Open();
            SqlDataReader reader = Userscmd.ExecuteReader();
            while (reader.Read())
            {
                UserList.Items.Add(reader["Username"].ToString());
            }
            newconnection.Close();
        }

        protected void BackToForum_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }
    }
}