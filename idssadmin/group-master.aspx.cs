using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class idssadmin_group_master : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            

            FillGrid();
            btnDelete.Visible = false;
        }
    }
    private void FillGrid()
    {
        try
        {
            using (DataTable dtGr = c.GetDataTable("Select a.prjGrpId, a.prjGrpName, b.psName From ProjectGroups a Inner Join ProjectStream b On a.streamId=b.psId Where a.delMark=0"))
            {
                gvGroups.DataSource = dtGr;
                gvGroups.DataBind();
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
            if (ddrType.SelectedIndex == 0 || ddrStream.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Select basic type and Stream', type: 'warning'});", true);
                return;
            }
            if (txtGrName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Enter Group Name', type: 'warning'});", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("ProjectGroups", "prjGrpId") : Convert.ToInt16(lblId.Text);

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into ProjectGroups (prjGrpId, prjGrpName, streamId, delMark) Values ("
                    + maxId + ", '" + txtGrName.Text + "', " + ddrStream.SelectedValue + ", 0)");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Project Group added', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update ProjectGroups Set prjGrpName='" + txtGrName.Text + "', streamId=" + ddrStream.SelectedValue + " Where prjGrpId=" + maxId);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Project Group updated', type: 'success'});", true);
            }

            FillGrid();
            lblId.Text = "[New]";
            txtGrName.Text = "";
            ddrType.SelectedIndex = 0;
            ddrStream.SelectedIndex = 0;
            btnDelete.Visible = false;

        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void gvGroups_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = this.Page.ClientScript.GetPostBackClientHyperlink(this.gvGroups, "Select$" + e.Row.RowIndex);
            e.Row.Attributes["style"] = "cursor:pointer";
        }
    }
    protected void gvGroups_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            GridViewRow row = gvGroups.SelectedRow;
            lblId.Text = row.Cells[0].Text;
            txtGrName.Text = row.Cells[1].Text;
            btnDelete.Visible = true;
            int strmId = Convert.ToInt32(c.GetReqData("ProjectGroups", "streamId", "prjGrpId=" + lblId.Text));
            int typeId = Convert.ToInt32(c.GetReqData("ProjectStream", "basicType", "psId=" + strmId));


            ddrType.SelectedValue = typeId.ToString();
            c.FillComboBox("psName", "psId", "ProjectStream", "basicType=" + ddrType.SelectedValue, "psName", 0, ddrStream);
            ddrStream.SelectedValue = strmId.ToString();
            
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        FillGrid();
        lblId.Text = "[New]";
        txtGrName.Text = "";
        ddrType.SelectedIndex = 0;
        ddrStream.SelectedIndex = 0;
        btnDelete.Visible = false;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {

    }
    protected void ddrType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddrType.SelectedIndex > 0)
            c.FillComboBox("psName", "psId", "ProjectStream", "basicType=" + ddrType.SelectedValue, "psName", 0, ddrStream);
    }
}