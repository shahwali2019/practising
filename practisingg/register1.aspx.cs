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
    public partial class register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM userMng WHERE username = @username", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@username", this.txtusername.Text.Trim());
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        if (ds.Tables[0].Rows.Count > 0)
                        {

                            this.lblerrormessage.Text = "The Username is already existed! Please try again";
                        }
                        else
                        {
                            using (SqlConnection con2 = new SqlConnection(constr))
                            {
                                using (SqlCommand cmd2 = new SqlCommand("INSERT INTO userMng VALUES(@username,@Access_role, @CreatedBy, @Date)", con2))
                                {
                                    string fullUsername = User.Identity.Name;
                                    int index_domain = fullUsername.IndexOf("AIB\\");
                                    string CreatedBy = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);

                                    string date = DateTime.Now.ToString();
                                    con2.Open();
                                    cmd2.Parameters.AddWithValue("@username", this.txtusername.Text.Trim());
                                    cmd2.Parameters.AddWithValue("@Access_role", this.DropDownList1.SelectedValue.Trim());
                                    cmd2.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                                    cmd2.Parameters.AddWithValue("@Date", date);
                                    cmd2.ExecuteNonQuery();
                                    con2.Close();
                                }
                            }
                            lblMessage.Visible = true;
                            this.lblMessage.Text = "New User Inserted Sucessfully";
                        }

                    }
                }
            }
        }
    }
}