using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class idssadmin_project_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string errMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editProject.Visible = true;
                    viewProject.Visible = false;



                    if (Request.QueryString["action"] == "new")
                    {
                        btnDelete.Visible = false;
                    }
                    else if (Request.QueryString["action"] == "edit")
                    {
                        if (Request.QueryString["id"] != null)
                        {
                            GetProjectDetails();
                            btnDelete.Visible = true;
                        }
                        else
                            Response.Redirect("project-master.aspx", false);
                    }
                    else
                        Response.Redirect("project-master.aspx", false);
                }
                else
                {
                    editProject.Visible = false;
                    viewProject.Visible = true;
                    FillGrid();
                }
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
        }
    }

    private void GetProjectDetails()
    {
        try
        {
            int prIdX = Convert.ToInt16(Request.QueryString["id"]);
            using (DataTable dtPr = c.GetDataTable("Select * From ProjectsData Where projId=" + prIdX))
            {
                if (dtPr.Rows.Count > 0)
                {
                    DataRow row = dtPr.Rows[0];
                    lblId.Text = prIdX.ToString();
                    
                    ddrType.SelectedValue = row["projType"].ToString();
                    c.FillComboBox("psName", "psId", "ProjectStream", "delMark=0 And basicType=" + ddrType.SelectedValue, "psName", 0, ddrStream);

                    ddrStream.SelectedValue = row["projStrmId"].ToString();
                    c.FillComboBox("prjGrpName", "prjGrpId", "ProjectGroups", "delMark=0 And streamId=" + ddrStream.SelectedValue, "prjGrpName", 0, ddrGroup);

                    ddrGroup.SelectedValue = row["projGrpId"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    private void FillGrid()
    {
        try
        {
            using (System.Data.DataTable dtPr = c.GetDataTable("Select a.projId, b.psName, c.prjGrpName From ProjectsData a Inner Join ProjectStream b On a.projStrmId=b.psId Inner Join ProjectGroups c On a.projGrpId = c.prjGrpId"))
            {
                gvPro.DataSource = dtPr;
                gvPro.DataBind();
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddrGroup.SelectedIndex == 0 || ddrStream.SelectedIndex == 0 || ddrType.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All fields are mendatory.', type: 'warning'});", true);
                return;
            }
            int maxId = lblId.Text == "[New]" ? c.NextId("ProjectsData", "projId") : Convert.ToInt16(lblId.Text);
            string imgName = "";
            if (fuImage.HasFile)
            {
                string fExt = Path.GetExtension(fuImage.FileName).ToLower();
                if (new string[] { ".jpg", ".jpeg", ".png" }.Contains(fExt))
                {
                    imgName = "project-photo-" + maxId + fExt;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Only .jpg, .jpeg and .png files are allowed.', type: 'warning'});", true);
                    return;
                }
            }
            else
            {
                if (lblId.Text == "[New]")
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Select project photo to upload.', type: 'warning'});", true);
                    return;
                }
            }

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into ProjectsData (projId, projType, projStrmId, projGrpId) Values (" + maxId
                    + ", " + Convert.ToInt16(ddrType.SelectedValue) + ", " + Convert.ToInt16(ddrStream.SelectedValue) + ", " +
                    Convert.ToInt16(ddrGroup.SelectedValue) + ")");
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Project Added', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update ProjectsData Set projType=" + Convert.ToInt16(ddrType.SelectedValue) + ", projStrmId="
                    + Convert.ToInt16(ddrStream.SelectedValue) + ", projGrpId=" + Convert.ToInt16(ddrGroup.SelectedValue) +
                    " Where projId=" + maxId);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Project Updated', type: 'success'});", true);
            }

            if (fuImage.HasFile)
            {
                c.ExecuteQuery("Update ProjectsData Set projPhoto='" + imgName + "' Where projId=" + maxId);

                string rootPath = c.ReturnHttp();
                string origImgPath = "~/upload/project-photos/original/";
                string normalImgPath = "~/upload/project-photos/";

                fuImage.SaveAs(Server.MapPath(origImgPath) + imgName);
                c.ImageOptimizer(imgName, origImgPath, normalImgPath, 600, false);

                File.Delete(Server.MapPath(origImgPath) + imgName);
            }

            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJsFunction", "waitAndMove('project-master.aspx', 2000);", true);

        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    protected void gvPro_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litPhoto = (Literal)e.Row.FindControl("litPhoto");

                object photoName = c.GetReqData("ProjectsData", "projPhoto", "projId=" + e.Row.Cells[0].Text).ToString();
                if (photoName == null || photoName.ToString() == "")
                    photoName = "no-photo.png";

                string rootPath = c.ReturnHttp();

                litPhoto.Text = "<img src=\"" + rootPath + "upload/project-photos/" + photoName + "\" style=\"width:100px\" />";

                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"project-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\" class=\"gAnch\" title=\"View / Edit\" ></a>";
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("project-master.aspx?action=new", false);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Delete From ProjectsData Where projId=" + lblId.Text);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Project Deleted', type: 'success'});", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJsFunction", "waitAndMove('project-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    protected void ddrType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddrType.SelectedIndex > 0)
            c.FillComboBox("psName", "psId", "ProjectStream", "delMark=0 And basicType=" + ddrType.SelectedValue, "psName", 0, ddrStream);
    }
    protected void ddrStream_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddrStream.SelectedIndex > 0)
            c.FillComboBox("prjGrpName", "prjGrpId", "ProjectGroups", "delMark=0 And streamId=" + ddrStream.SelectedValue, "prjGrpName", 0, ddrGroup);
    }
}