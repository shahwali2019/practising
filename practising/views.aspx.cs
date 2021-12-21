using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using OfficeOpenXml;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace practising
{
    public partial class views : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //this.BindGrid();
                Pupulategv();


            }
        }

        void Pupulategv()

        {
            DataTable dt = new DataTable();
            using (SqlConnection sql = new SqlConnection(connectionString))
            {
                sql.Open();
                SqlDataAdapter sqlda = new SqlDataAdapter("select * from [addnewcustomer] ", sql);
                sqlda.Fill(dt);
            }

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                dt.Rows.Add(dt.NewRow());
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = " no data found";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        protected void searchBtn_Click(object sender, EventArgs e)
        {
            
        }

        protected void addNew_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("add_new_custome.aspx");
        }
        protected void excelExporter_Click(object sender, ImageClickEventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("کد اشتراک");
            dt.Columns.Add("اسم");
            dt.Columns.Add("ولد");
            dt.Columns.Add("موقیعت");
            dt.Columns.Add("اصل مقدر پول ");
            dt.Columns.Add("[مقدر پرداخت اول]");
            dt.Columns.Add("ماه");
            dt.Columns.Add("روز");
            dt.Columns.Add("سال");
            dt.Columns.Add("باقی مانده");
            dt.Columns.Add("کتابچه");


            foreach (GridViewRow gw in GridView1.Rows)
            {
                var chkSelect = gw.FindControl("chkSelect") as CheckBox;
                if (chkSelect.Checked)
                {
                    string Val1 = (gw.FindControl("Label1") as Label).Text; //
                    string Val2 = (gw.FindControl("Label2") as Label).Text; //
                    string Val3 = (gw.FindControl("Label3") as Label).Text; //
                    string Val4 = (gw.FindControl("Label4") as Label).Text; //
                    string Val5 = (gw.FindControl("Label5") as Label).Text; //
                    string Val6 = (gw.FindControl("Label6") as Label).Text; //
                    string Val7 = (gw.FindControl("Label7") as Label).Text; //
                    string Val8 = (gw.FindControl("Label8") as Label).Text; //
                    string Val9 = (gw.FindControl("Label9") as Label).Text; //
                    string Val10 = (gw.FindControl("Label10") as Label).Text; //
                    string Val11 = (gw.FindControl("Label11") as Label).Text; //
                    dt.Rows.Add(Val1, Val2, Val3, Val4, Val5, Val6, Val7, Val8, Val9, Val10, Val11);
                }
            }
            //--------------------------------
            var products = dt;
            ExcelPackage excel = new ExcelPackage();

            var workSheet = excel.Workbook.Worksheets.Add("excel");
            var totalCols = products.Columns.Count;
            var totalRows = products.Rows.Count;
            for (var col = 1; col <= totalCols; col++)
            {
                workSheet.Cells[1, col].Value = products.Columns[col - 1].ColumnName;
            }
            for (var row = 1; row <= totalRows; row++)
            {
                for (var col = 0; col < totalCols; col++)
                {
                    workSheet.Cells[row + 1, col + 1].Value = products.Rows[row - 1][col];
                }
            }
            using (var memoryStream = new MemoryStream())
            {

                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;  filename=LAR_Report.xlsx");
                excel.SaveAs(memoryStream);
                memoryStream.WriteTo(Response.OutputStream);
                Response.Flush();
                Response.End();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string username = Request.Form["username"];

            SqlDataAdapter sda = new SqlDataAdapter("select * from [cust_userregister] where username= '" + username + "'", connectionString);
            DataTable dtResult = new DataTable();
            sda.Fill(dtResult);

            string userType = dtResult.Rows[0]["Access_role"].ToString();

            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                if (userType == "Supper Admin")
                {
                    e.Row.Cells[0].Enabled = true;
                    //e.Row.Cells[1].Enabled = false;

                }
                if (userType == "Admin")
                {
                    e.Row.Cells[0].Enabled = true;
                    //e.Row.Cells[1].Enabled = false;
                }

                if (userType == "Users")
                {
                    e.Row.Cells[0].Enabled = false;
                    //e.Row.Cells[1].Enabled = false;
                }
            }
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string fullUsername = User.Identity.Name;
            int index_domain = fullUsername.IndexOf("AIB\\");
            string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);

            string id = e.CommandArgument.ToString();
            string employees_name = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
            //if (e.CommandName != "edit")
            //{
            //    Response.Write("dddddddd");
            //}

            if (e.CommandName == "edit")
            {
                Session["olds_id"] = e.CommandArgument.ToString();
                SqlConnection sqlCon = new SqlConnection(connectionString);
                string query = "SELECT *FROM [addnewcustomer] WHERE id = '" + Session["olds_id"].ToString() + "'";
                SqlCommand sqlcmd = new SqlCommand(query, sqlCon);
                sqlCon.Open();
                SqlDataReader rdr = sqlcmd.ExecuteReader();
                if (rdr.Read())
                {
                    //READ THE DATA FROM COLLATERAL DATABASE AND SAVE THEM INTO SESSION
                    Session["id"] = (string)rdr["id"].ToString();
                    Session["tname"] = (string)rdr["اسم"].ToString(); //  [Document checking date]
                    Session["tfname"] = (string)rdr["fname"].ToString(); //  [Borrower]
                    Session["tlocation"] = (string)rdr["location"].ToString(); //  [Borrower]
                    Session["thaghulnashab"] = (string)rdr["haghulnashab"].ToString(); //  [Case Number]
                    Session["tgmoney"] = (string)rdr["Given money"].ToString(); //  [Facility type]
                    Session["tyear"] = (string)rdr["year"].ToString(); //  [Currency]
                    Session["tmonth"] = (string)rdr["month"].ToString(); //  [Facility amount]
                    Session["tday"] = (string)rdr["day"].ToString(); //  [Customers type]  
                    Session["tremain"] = (string)rdr["remain"].ToString(); //  [initial observations]   
                    Session["tnotebk"] = (string)rdr["notebook"].ToString(); //  [Outstanding observations]        
                    //Session["txtBODRequirement"] = (string)rdr["BODRequirement"].ToString(); //  [Status of Observation]
                    //Session["txtBoDApprovalDate"] = (string)rdr["BoDApprovalDate"].ToString(); //  [Status of Facility]
                    //Session["txtLutfullahRahmat"] = (string)rdr["LutfullahRahmat"].ToString(); //  [1st checker]
                    //Session["txtHamidullahMohib"] = (string)rdr["HamidullahMohib"].ToString(); //  [2nd checker]
                    //Session["txtHugoMinderhod"] = (string)rdr["HugoMinderhod"].ToString(); //  [Remarks]
                    //Session["txtRS"] = (string)rdr["RS"].ToString(); //  [Updated By]
                    //Session["txtSS"] = (string)rdr["SS"].ToString(); //  [Status of Facility]
                    //Session["txtMT"] = (string)rdr["MT"].ToString(); //  [1st checker]
                    //Session["txtAS"] = (string)rdr["AS"].ToString(); //  [2nd checker]
                    //Session["txtFacilityStatus"] = (string)rdr["FacilityStatus"].ToString(); //  [Remarks]
                    //Session["txtRemarks"] = (string)rdr["Remarks"].ToString(); //  [Remarks]
                    ////Session["ins_by"] = (string)rdr["Inserted By"].ToString(); //  [Inserted By]
                    //Session["up_by"] = (string)rdr["Updated By"].ToString(); //  [Updated By]
                    ////Session["app_by"] = (string)rdr["Approved By"].ToString(); //  [Approved By]

                    sqlCon.Close();
                    sqlCon.Dispose();
                    Response.Redirect("customer_update.aspx");
                }
            }


            if (e.CommandName == "Delete")
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand comm = new SqlCommand())
                    {
                        comm.Connection = conn;
                        conn.Open();
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.CommandText = "sp_deletelog_test";
                        comm.Parameters.AddWithValue("@Id", id);
                        comm.Parameters.AddWithValue("@employees_name", employees_name);
                        GridView1.EditIndex = -1;

                        lblerrormessage.Text = "Selected Row Deleted";

                        if (comm.ExecuteNonQuery() > 0)
                        {
                            Pupulategv();
                        }
                        else
                        {
                            Response.Write("<script>alert('Failed')</script>");
                        }
                        conn.Close();
                    }
                }
            }
        }

        protected void chkb1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ChkBoxHeader = (CheckBox)GridView1.HeaderRow.FindControl("chkb1");
            foreach (GridViewRow row in GridView1.Rows)
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
    }
}