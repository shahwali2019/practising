using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practising
{
    public partial class signin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["userid"] != null)
                    textbox1.Text = Request.Cookies["userid"].Value;
                if (Request.Cookies["pwd"] != null)
                    textbox2.Attributes.Add("value", Request.Cookies["pwd"].Value);
                if (Request.Cookies["userid"] != null && Request.Cookies["pwd"] != null)
                    rememberme.Checked = true;
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("CheckUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("userid", textbox1.Text);
            SqlParameter p2 = new SqlParameter("pwd", textbox2.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                Response.Write("dddddddddddd");
            }
            else
            {
                Response.Write("Invalid username or password");
            }
        }
    }
}