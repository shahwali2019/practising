using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practising
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string fullUsername = User.Identity.Name;
            //int index_domain = fullUsername.IndexOf("AIB\\");
            //string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);

            string username = Session["username"].ToString();

            //Code to secure URL Security
            if (!IsPostBack)
            {
                string qry = string.Empty;
                qry = "select Access_role from [userMng] where username='" + username + "'";
                string strConnString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;

                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                SqlCommand cd = new SqlCommand(qry, con);

                string Access_role = Convert.ToString(cd.ExecuteScalar());

                if (string.IsNullOrEmpty(Access_role))
                {
                    Response.Redirect("NotAuthorize.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.AbsoluteUri));
                }

                if (Access_role == "Supper Admin")
                {
                    LinkButton8.Visible = true;
                    LinkButton6.Visible = true;
                    LinkButton5.Visible = true;
                    Newuser.Visible = true;
                }

                else if (Access_role == "Users")
                {
                    //Server.Transfer("register.aspx");

                    LinkButton8.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton5.Visible = false;
                    Newuser.Visible = false;

                }
                else if (Access_role == "Admin")
                {

                    LinkButton8.Visible = true;
                    LinkButton6.Visible = true;
                    LinkButton5.Visible = true;
                    Newuser.Visible = false;
                    // Insert New 
                    LinkButton10.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton9.Visible = false;
                }

                }
            }

        protected void Newuser_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void signout_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}