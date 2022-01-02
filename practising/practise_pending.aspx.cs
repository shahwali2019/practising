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
    public partial class practise_pending : System.Web.UI.Page
    {
        string Val1,
        Val2,
        Val3,
        Val4,
        Val5,
        Val6,
        Val7,
        Val8,
        Val9,
        Val10,
        Val11,
        Val12,
        Val13,
        Val14;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertCheck_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void updatedCheck_CheckedChanged(object sender, EventArgs e)
        {
            gv3.Visible = true;
            Gridv_LAR.Visible = false;
            insertCheck.Checked = false;
            ApproveBtnImg.Enabled = false;
            ApproveUpdateBtn.Enabled = true;
            insertLbl.Visible = false;
            UpdatedPending();
        }

        protected void UpdatedPending()
        {

            if (gv3.Rows.Count >= 1)
            {

                string ConStr = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
                using (SqlConnection sqlCon2 = new SqlConnection(ConStr))
                {
                    sqlCon2.Open();
                    string query = "SELECT count(*) FROM [customer_update]";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlCon2);
                    int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                    sqlCon2.Close();
                    updateLbl.Visible = true;
                    updateLbl.Text = count + " Updated Pending Record(s).";
                }
            }
            else
            {
                updateLbl.Visible = true;
                updateLbl.Text = "No Updated Pending Record(s)";
            }

        }
        protected void ApproveUpdateBtn_Click(object sender, ImageClickEventArgs e)
        {
            string fullUsername = User.Identity.Name;
            int index_domain = fullUsername.IndexOf("AIB\\");
            string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
            string connectionString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
            using (SqlConnection sqlConn = new SqlConnection(connectionString))
            {
                foreach (GridViewRow gw in gv3.Rows)
                {
                    var chkSelect = gw.FindControl("chkSelect") as CheckBox;
                    if (chkSelect.Checked)
                    {
                        Val1 = (gw.FindControl("Label1") as Label).Text; //id
                        Val2 = (gw.FindControl("Label2") as Label).Text; //[Disbursementdate]
                        Val3 = (gw.FindControl("Label3") as Label).Text; //[Borrower]
                        Val4 = (gw.FindControl("Label4") as Label).Text; //[CaseNumber]
                        Val5 = (gw.FindControl("Label5") as Label).Text; //[FacilityType]
                        Val6 = (gw.FindControl("Label6") as Label).Text; //[facilityevent]
                        Val7 = (gw.FindControl("Label7") as Label).Text; //[Ccy]
                        Val8 = (gw.FindControl("Label8") as Label).Text; //[FacilityAmount]
                        Val9 = (gw.FindControl("Label9") as Label).Text; //[HOCCApprovalDate]
                        Val10 = (gw.FindControl("Label10") as Label).Text; //[CEO]
                        Val11 = (gw.FindControl("Label11") as Label).Text; //[CFO]
                        Val12 = (gw.FindControl("Label12") as Label).Text; //[BODRequirement]
                        Val13 = (gw.FindControl("Label13") as Label).Text; //[BoDApprovalDate]
                        //Val14 = (gw.FindControl("Label14") as Label).Text; //[LutfullahRahmat]
                        //Val23 = (gw.FindControl("Label23") as Label).Text; //[[Inserted By]]
                        //Val25 = (gw.FindControl("Label25") as Label).Text; //[[Approved By]]
                        sqlConn.Open();

                        string queryy = "UPDATE [addnewcustomer] SET" +
                         "[اسم] =@val2" + //Disbursementdate
                        ",[fname] =@val3" + //Borrower
                        ",[location] =@val4" + //CaseNumber
                        ",[haghulnashab] =@val5" + //FacilityType
                        ",[Given money]  =@val6" + //facilityevent
                        ",[year]  =@val7" + //Ccy
                        ",[month] =@val8" + //Facility amount
                        ",[day] =@val9" + //HOCCApprovalDate
                        ",[remain]=@val10" + //CEO
                        ",[notebook]=@val11" + //BODRequirement
                        ",[Inserted By]=@val12" + //BoDApprovalDate
                        ",[Updated By]=@val13" + // LutfullahRahmat
                        ",[Approved By]= '" + username + "' " + //Approved by
                        " WHERE id=@val1";
                        SqlCommand sqlcmd = new SqlCommand(queryy, sqlConn);
                        //==========catch selected data=================================
                        sqlcmd.Parameters.AddWithValue("@val1", Val1); //
                        sqlcmd.Parameters.AddWithValue("@val2", Val2); //
                        sqlcmd.Parameters.AddWithValue("@val3", Val3); //
                        sqlcmd.Parameters.AddWithValue("@val4", Val4); //
                        sqlcmd.Parameters.AddWithValue("@val5", Val5); //
                        sqlcmd.Parameters.AddWithValue("@val6", Val6); //
                        sqlcmd.Parameters.AddWithValue("@val7", Val7); //
                        sqlcmd.Parameters.AddWithValue("@val8", Val8); //
                        sqlcmd.Parameters.AddWithValue("@val9", Val9); //
                        sqlcmd.Parameters.AddWithValue("@val10", Val10); // 
                        sqlcmd.Parameters.AddWithValue("@val11", Val11); //
                        sqlcmd.Parameters.AddWithValue("@val12", Val12); // 
                        sqlcmd.Parameters.AddWithValue("@val13", Val13);// 
                        //sqlcmd.Parameters.AddWithValue("@val14", Val14); //
                        //sqlcmd.Parameters.AddWithValue("@val23", Val23); //
                        //sqlcmd.Parameters.AddWithValue("@val25", username); //
                        sqlcmd.ExecuteNonQuery();
                        sqlConn.Close();
                        using (SqlConnection SqlConUpdate = new SqlConnection(connectionString))
                        {
                            string id = Val1; //Session["pid"].ToString();
                            SqlConUpdate.Open();
                            string Delquery = "DELETE FROM [customer_update] WHERE id='" + id + "'";
                            SqlCommand sqlcmdDel = new SqlCommand(Delquery, SqlConUpdate);
                            sqlcmdDel.ExecuteNonQuery();
                            SqlConUpdate.Close();
                        }
                    }
                } //END of FOR
            }
            UpdatedPending();
            gv3.DataSourceID = "SqlConUpdate";
            gv3.DataBind();
        }

        protected void ApproveBtnImg_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Gridv_LAR_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void chkb2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void chkb1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkBoxHeader = (CheckBox)gv3.HeaderRow.FindControl("chkb1");
            foreach (GridViewRow row in gv3.Rows)
            {
                CheckBox ChkBoxRows = (CheckBox)row.FindControl("chkSelect");
                if (ChkBoxHeader.Checked == true)
                {
                    ChkBoxRows.Checked = true;
                }
                else
                {
                    ChkBoxRows.Checked = false;
                }
            }
        }

        protected void gv3_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}