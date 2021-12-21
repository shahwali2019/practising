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
    public partial class customer_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fullUsername = User.Identity.Name;
                int index_domain = fullUsername.IndexOf("AIB\\");
                string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
                //string qry = string.Empty;
                //qry = "select Access_role from [userMng] where username='" + username + "'";
                //string strConnString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;

                //SqlConnection con = new SqlConnection(strConnString);
                //con.Open();
                //SqlCommand cd = new SqlCommand(qry, con);

                //string Access_role = Convert.ToString(cd.ExecuteScalar());

                //if (string.IsNullOrEmpty(Access_role))
                //{
                //    Response.Redirect("NotAuthorize.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.AbsoluteUri));
                //}
                //----------------------------------------------
                if (Session["olds_id"] != null)
                {

                    BtnSubmit.Text = "update";
                    msg.Text = "UPDATE LAR RECORD";

                    //--------------------------------------------------------------   note should add from database           
                    Session["Id"].ToString();
                    txtname.Text = Session["tname"].ToString();
                    txtfname.Text = Session["tfname"].ToString();
                    txtlocation.Text = Session["tlocation"].ToString();
                    txtcmoney.Text = Session["thaghulnashab"].ToString();
                    txtmoneypd.Text = Session["tgmoney"].ToString();
                    DropDownList3.SelectedValue = Session["tyear"].ToString();
                    DropDownList1.SelectedValue = Session["tmonth"].ToString();
                    DropDownList2.SelectedValue = Session["tday"].ToString();
                    txtremin.Text = Session["tremain"].ToString();
                    txtnotebk.Text = Session["tnotebk"].ToString();
                }

            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string fullUsername = User.Identity.Name;
            int index_domain = fullUsername.IndexOf("AIB\\");
            string username = Request.Form["username"];
            if (Page.IsValid)
            {

                string connectionStringg = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
                using (SqlConnection sqlConn = new SqlConnection(connectionStringg))
                using (SqlConnection sqlConn1 = new SqlConnection(connectionStringg))
                {
                    sqlConn.Open();
                    string query = "INSERT INTO [dbo].[customer_update]" +
                        "(" +
                        "id," +
                          "[name]" +
                          ",[fname]" +
                          ",[location]" +
                          ",[haghulnashab]" +
                          ",[Given money]" +
                          ",[year]" +
                          ",[month]" +
                          ",[day]" +
                          ",[remain]" +
                          ",[notebook]" +
                          ",[Updated By]" +
                        ")" +
                        " VALUES" +
                        "(" +
                        "@id," +
                          "@tname," +
                          "@tfname," +
                          "@tlocation," +
                          "@thaghulnashab," +
                          "@tgmoney," +
                          "@tyear," +
                          "@tmonth," +
                          "@tday," +
                          "@tremain," +
                          "@tnotebk," +
                          "@up_by)";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlConn);
                    sqlcmd.Parameters.AddWithValue("@id", Session["id"].ToString());
                    sqlcmd.Parameters.AddWithValue("@tname", txtname.Text);
                    sqlcmd.Parameters.AddWithValue("@tfname", txtfname.Text);
                    sqlcmd.Parameters.AddWithValue("@tlocation", txtlocation.Text);
                    sqlcmd.Parameters.AddWithValue("@thaghulnashab", txtcmoney.Text);
                    sqlcmd.Parameters.AddWithValue("@tgmoney", txtmoneypd.Text);
                    sqlcmd.Parameters.AddWithValue("@tyear", DropDownList3.SelectedValue);
                    sqlcmd.Parameters.AddWithValue("@tmonth", DropDownList1.SelectedValue);
                    sqlcmd.Parameters.AddWithValue("@tday", DropDownList2.Text);
                    sqlcmd.Parameters.AddWithValue("@tremain", txtremin.Text);
                    sqlcmd.Parameters.AddWithValue("@tnotebk", txtnotebk.Text);
                    sqlcmd.Parameters.AddWithValue("@up_by", username);
                    //sqlCmd.ExecuteNonQuery();
                    sqlcmd.ExecuteNonQuery();
                    sqlConn.Close();
                    sqlConn.Dispose();

                }
                msg.Visible = true;
                msg.Text = "The record updated";
                msg.ForeColor = System.Drawing.Color.Green;

            }

            //END OF ELSE
            //txtdchkdate.Text = string.Empty;
            //txtBorrower.Text = string.Empty;
            //txtdeprt.SelectedValue = string.Empty;
            //txtCaseNumber.Text = string.Empty;
            //txtFacilityTypeList.Text = string.Empty;
            //txtDropDownListCurrency.SelectedValue = string.Empty;
            //txtfamount.Text = string.Empty;
            //txtchecklistcusttype.SelectedValue = string.Empty;
            //txtiniobseerv.Text = string.Empty;
            //txtstasobsr.SelectedValue = string.Empty;
            //txtoutstnobr.Text = string.Empty;
            //txtchecklistsfacility.SelectedValue = string.Empty;
            //txtRemark.Text = string.Empty;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}