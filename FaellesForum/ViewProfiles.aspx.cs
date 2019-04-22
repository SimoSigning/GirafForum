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
    public partial class ViewProfiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void UserList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SpecUser"] = UserList.SelectedValue;
            Response.Redirect("SpecificProfile.aspx");
        }

        protected void ToForum_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }
    }
}