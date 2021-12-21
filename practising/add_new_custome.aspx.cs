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
    public partial class add_new_custome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            //string fullUsername = User.Identity.Name;
            //int index_domain = fullUsername.IndexOf("AIB\\");
            //string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
            if (Page.IsValid)
            {
                if (BtnSubmit.Text == "ADD")
                {

                    string connectionString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
                    using (SqlConnection sqlCon2 = new SqlConnection(connectionString))
                    {
                        sqlCon2.Open();
                        string query = "INSERT INTO [dbo].[addnewcustomer] " + // temp table for insertion
                        " (" +
                          "[اسم]" +
                          ",[fname]" +
                          ",[location]" +
                          ",[haghulnashab]" +
                          ",[Given money]" +
                          ",[year]" +
                          ",[month]" +
                          ",[day]" +
                          ",[remain]" +
                          ",[notebook]" +
                        ")" +
                        " VALUES" +
                        "(" +
                          "@name," +
                          "@fname," +
                          "@location," +
                          "@haghulnashab," +
                          "@givemoney," +
                          "@year," +
                          "@month," +
                          "@day," +
                          "@remain," +
                          "@notebook)";
                       // string dValue = string.Format("{0:dd-MM-yyyy}", txtdate.Text);
                        SqlCommand sqlcmd = new SqlCommand(query, sqlCon2);
                        sqlcmd.Parameters.AddWithValue("@name", txtname.Text);
                        sqlcmd.Parameters.AddWithValue("@fname", txtfname.Text);
                        sqlcmd.Parameters.AddWithValue("@location", txtlocation.Text);
                        sqlcmd.Parameters.AddWithValue("@haghulnashab", txtcmoney.Text);
                        sqlcmd.Parameters.AddWithValue("@givemoney", txtmoneypd.Text);
                        sqlcmd.Parameters.AddWithValue("@year", DropDownList1.SelectedValue);
                        sqlcmd.Parameters.AddWithValue("@month", DropDownList2.SelectedValue);
                        sqlcmd.Parameters.AddWithValue("@day", DropDownList3.SelectedValue);
                        sqlcmd.Parameters.AddWithValue("@remain", txtremin.Text);
                        sqlcmd.Parameters.AddWithValue("@notebook", txtnotebk.Text);
                        sqlcmd.ExecuteNonQuery();
                        msg.Visible = true;
                        msg.Text = "Successfully added new customer!";
                        msg.ForeColor = System.Drawing.Color.Red;
                        sqlCon2.Close();
                        //-------------------------------------

                    }
                } // end of adding new WAK Record

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}