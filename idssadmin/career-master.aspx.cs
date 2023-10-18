using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idssadmin_career_master : System.Web.UI.Page
{
    iClass c = new iClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                viewJob.Visible = false;
                editJob.Visible = true;
                if (Request.QueryString["action"] == "new")
                {
                    btnDelete.Visible = false;
                    lblId.Text = "[New]";
                }
                else
                {
                    if (Request.QueryString["id"] != null)
                    {
                        lblId.Text = Request.QueryString["id"].ToString();
                        btnDelete.Visible = true;
                        GetJobDetails(Convert.ToInt16(lblId.Text));
                    }
                    else
                        Response.Redirect("career-master.aspx", false);
                }
            }
            else
            {
                viewJob.Visible = true;
                editJob.Visible = false;
                FillGrid();
            }
        }
    }
    private void FillGrid()
    {
        try
        {
            using(DataTable dtJobs = c.GetDataTable("Select crId, crCode, crTitle, crLocation From CareerData Where delMark=0 Order by crId Desc") )
            {
                gvCareer.DataSource = dtJobs;
                gvCareer.DataBind();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            txtAge.Text = txtAge.Text.Trim().Replace("'", "");
            txtDetails.Text = txtDetails.Text.Trim().Replace("'", "");
            txtExp.Text = txtExp.Text.Trim().Replace("'", "");
            txtJobCode.Text = txtJobCode.Text.Trim().Replace("'", "");
            txtLocation.Text = txtLocation.Text.Trim().Replace("'", "");
            txtTitle.Text = txtTitle.Text.Trim().Replace("'", "");

            if (txtJobCode.Text == "" || txtTitle.Text == "" || txtLocation.Text == "" || txtAge.Text == "" || ddrGender.SelectedIndex == 0 || txtExp.Text == "" || txtDetails.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All * marked fields are mandatory', type: 'warning'});", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("CareerData", "crId") : Convert.ToInt32(lblId.Text);

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into CareerData (crId, crCode, crTitle, crLocation, ageLimit, crGender, crExp, crDetails, delMark) Values (" +
                    maxId + ", '" + txtJobCode.Text + "', '" + txtTitle.Text + "', '" + txtLocation.Text + "', '" + txtAge.Text + "', " +
                    ddrGender.SelectedValue + ", '" + txtExp.Text + "', '" + txtDetails.Text + "', 0)");

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Job Listing Added', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update CareerData Set crCode='" + txtJobCode.Text + "', crTitle='" + txtTitle.Text + "', crLocation='" +
                    txtLocation.Text + "', ageLimit='" + txtAge.Text + "', crGender=" + ddrGender.SelectedValue + ", crExp='" +
                    txtExp.Text + "', crDetails='" + txtDetails.Text + "' Where crId=" + maxId);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Job Listing Updated', type: 'success'});", true);
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('career-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Update CareerData Set delMark=1 Where crId=" + lblId.Text);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Job deleted Successfully', type: 'success'});", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('career-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("career-master.aspx?action=new", false);
    }
    protected void gvCareer_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"career-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\" class=\"gAnch\"></a>";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    private void GetJobDetails(int jobIdX)
    {
        try
        {
            using (DataTable dtJob = c.GetDataTable("Select * From CareerData Where crId=" + jobIdX))
            {
                if (dtJob.Rows.Count > 0)
                {
                    DataRow row = dtJob.Rows[0];
                    txtJobCode.Text = row["crCode"].ToString();
                    txtTitle.Text = row["crTitle"].ToString();
                    txtLocation.Text = row["crLocation"].ToString();
                    txtAge.Text = row["ageLimit"].ToString();
                    ddrGender.SelectedValue = row["crGender"].ToString();
                    txtExp.Text = row["crExp"].ToString();
                    txtDetails.Text = row["crDetails"].ToString();

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("career-master.aspx", false);
    }
}