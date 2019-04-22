using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FaellesForum
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string adminvali = Session["Admin"].ToString();
            if(adminvali == "True")
            {
                AdminPageLabel.Text = "Admin Page";
            }
            else if(adminvali == "False")
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void GoToForumBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }

        protected void EditProfilesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfiles.aspx");
        }
    }
}