using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class idssadmin_stream_master : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }
    private void FillGrid()
    {
        try
        {
            using (DataTable dtStr = c.GetDataTable("Select psId, psName, Case When basicType=1 Then 'Indian' When basicType=2 Then  'International' End as basicType From ProjectStream"))
            {
                gvStream.DataSource = dtStr;
                gvStream.DataBind();
            }

        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddrType.SelectedIndex == 0 || txtName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All fields are mendatory', type: 'warning'});", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("ProjectStream", "psId") : Convert.ToInt16(lblId.Text);

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into ProjectStream (psId, psName, basicType, delMark) Values (" + maxId +
                    ", '" + txtName.Text + "', " + ddrType.SelectedValue + ", 0)");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Stream Added', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update ProjectStream Set psName='" + txtName.Text + "', basicType=" +
                    ddrType.SelectedValue + " Where psId=" + maxId);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Stream Updated', type: 'success'});", true);
            }

            txtName.Text = "";
            lblId.Text = "[New]";
            FillGrid();
            ddrType.SelectedIndex = 0;
            btnDelete.Visible = false;
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (c.IsRecordExist("Select projId From ProjectsData Where projStrmId=" + lblId.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Stream is assigned to a project  and hence cannot be deleted.', type: 'error'});", true);
                return;
            }
            else
            {
                c.ExecuteQuery("Update ProjectStream Set delMark=1 Where psId=" + lblId.Text);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Stream Deleted', type: 'success'});", true);
                txtName.Text = "";
                lblId.Text = "[New]";
                FillGrid();
                ddrType.SelectedIndex = 0;
                btnDelete.Visible = false;
            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        lblId.Text = "[New]";
        FillGrid();
        ddrType.SelectedIndex = 0;
        btnDelete.Visible = false;
    }
    protected void gvStream_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = this.Page.ClientScript.GetPostBackClientHyperlink(this.gvStream, "Select$" + e.Row.RowIndex);
            e.Row.Attributes["style"] = "cursor:pointer";
        }
    }
    protected void gvStream_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            GridViewRow row = gvStream.SelectedRow;
            lblId.Text = row.Cells[0].Text;
            txtName.Text = row.Cells[1].Text;
            ddrType.SelectedValue = c.GetReqData("ProjectStream", "basicType", "psId=" + lblId.Text).ToString();

            btnDelete.Visible = true;
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
}