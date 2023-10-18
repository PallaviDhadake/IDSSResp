using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class idssadmin_team_member_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle; 
    protected void Page_Load(object sender, EventArgs e)
    {
        pgTitle = Request.QueryString["action"] == "new" ? "Add Team Member" : "Edit Team Member";
        btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
        btnCancel.Attributes.Add("onclick", " this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");
        btnDelete.Attributes.Add("onclick", " this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");

        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                editTeamMember.Visible = true;
                viewTeamMember.Visible = false;

                if (Request.QueryString["action"] == "new")
                {
                    btnSave.Text = "Save Info";
                    btnDelete.Visible = false;

                }
                else
                {
                    btnSave.Text = "Modify Info";
                    btnDelete.Visible = true;
                    GetTeamDetails(Convert.ToInt32(Request.QueryString["id"]));
                }
            }
            else
            {
                editTeamMember.Visible = false;
                viewTeamMember.Visible = true;
                FillGrid();
            }
        }
    }
    
    private void FillGrid()
    {
        try
        {
            using (DataTable dtTeam = c.GetDataTable(" Select teamId, displayOrder, LEFT(teamName, 40) as teamName,  LEFT(teamPosition, 40) as teamPosition  From TeamMembers Order By displayOrder ASC"))
            {
                gvTeamMember.DataSource = dtTeam;
                gvTeamMember.DataBind();
            }
        }
        catch( Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }

    protected void gvTeamMember_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");               
                litAnch.Text = "<a href=\"team-member-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\" class=\"gAnch\" title=\"View / Edit\"></a>";

                TextBox txtOrder = (TextBox)e.Row.FindControl("txtOrder");
                txtOrder.Text = e.Row.Cells[1].Text;

            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            txtJoinDate.Text = txtJoinDate.Text.Trim().Replace("'","");
            txtName.Text = txtName.Text.Trim().Replace("'", "");
            txtPost.Text = txtPost.Text.Trim().Replace("'", "");
            txtProfile.Text = txtProfile.Text.Trim().Replace("'","");
            txtDispOrder.Text = txtDispOrder.Text.Trim().Replace("'", "");

            if( txtName.Text=="" || txtPost.Text=="" || txtProfile.Text== ""|| txtDispOrder.Text== ""|| txtJoinDate.Text== "" )
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All * marked fields are mandatary', type: 'warning'});", true);
                return;
            }

            string [] arrDate = txtJoinDate.Text.Split('/');
            
            if (!c.IsDate(arrDate[1] + "/" + arrDate[0] + "/" + arrDate[2]))
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Invalid Date', type: 'warning'});", true);
                return;
            }

            DateTime jDate = Convert.ToDateTime(arrDate[1] + "/" + arrDate[0] + "/" + arrDate[2]);           
            int maxId = lblId.Text == "[New]" ? c.NextId("TeamMembers", "teamId") : Convert.ToInt32(lblId.Text);
            string fileName = "no-photo.png";

            if (fuPhoto.HasFile)
            {
                string fext = Path.GetExtension(fuPhoto.FileName).ToString().ToLower();
                if (fext == ".jpg" || fext == ".png" || fext == ".jpeg" || fext== ".gif")
                {
                     fileName = "team-photo" + maxId + fext;                   
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Only .png, .jpg, .jpeg and .gif files are allowed', type: 'warning'});", true);
                    return;
                }
            }
            else
            {
                if (lblId.Text == "[New]")
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Select the Photo', type: 'warning'});", true);
                    return;
                }
            }
           
            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into TeamMembers(teamId, joinDate, teamName, teamPosition, teamProfile, teamPhoto, displayOrder, delMark) Values( " + maxId + ", '" + jDate + "', N'" + txtName.Text + "', N'" + txtPost.Text + "', N'" + txtProfile.Text + "', '" + fileName + "', " + Convert.ToInt32(txtDispOrder.Text) + ", 0 )");                
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Information added successfully...!!', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update TeamMembers Set joinDate='" + jDate + "', teamName='" + txtName.Text + "', teamPosition='" + txtPost.Text + "', teamProfile='" + txtProfile.Text + "', displayOrder=" + Convert.ToInt32(txtDispOrder.Text) + " Where teamId=" + maxId);
                if (fuPhoto.HasFile)
                {
                    c.ExecuteQuery("Update TeamMembers Set teamPhoto='" + fileName + "' Where teamId=" + maxId);
                }
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Information Updated successfully...!!', type: 'success'});", true);
            }
            if (fuPhoto.HasFile)
            {        
                fuPhoto.SaveAs(Server.MapPath("~/Upload/team/") + fileName);                
            }
            txtName.Text = txtPost.Text = txtProfile.Text = txtDispOrder.Text = "";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('team-member-master.aspx', 2000);", true);
        }
        catch( Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error Occoured while processing', type: 'error'});", true);
            return;
        }

    }

    //private void ImageUploadProcess(string imgName)
    //{
    //    try
    //    {
    //        string rootPath = c.ReturnHttp();
    //        string origImgPath = "~/upload/team/original/";
    //        string thumbImgPath = "~/upload/team/thumb/";
    //        string normalImgPath = "~/upload/team/";

    //        fuPhoto.SaveAs(Server.MapPath(origImgPath) + imgName);
    //        c.ImageOptimizer(imgName, origImgPath, normalImgPath, 860, true);
    //        c.ImageOptimizer(imgName, normalImgPath, origImgPath, 420, true);
    //        c.CenterCropImage(imgName, origImgPath, thumbImgPath, 400, 400);

    //        File.Delete(Server.MapPath(origImgPath) + imgName);
    //    }
    //    catch (Exception)
    //    {
    //        ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
    //        return;
    //    }
    //}

    

    private void GetTeamDetails(int Idx)
    {
        try
        {
            using (DataTable dtTeam = c.GetDataTable("Select * From TeamMembers Where teamId=" + Idx))
            {
                if (dtTeam.Rows.Count > 0)
                {
                    lblId.Text = Idx.ToString();
                    DataRow row = dtTeam.Rows[0];
                    DateTime jDate = Convert.ToDateTime(row["joinDate"]);

                   txtJoinDate.Text = jDate.Day + "/" + jDate.Month + "/" + jDate.Year;
                   txtName.Text = row["teamName"].ToString();
                   txtPost.Text = row["teamPosition"].ToString();
                   txtProfile.Text = row["teamProfile"].ToString();
                   txtDispOrder.Text = row["displayOrder"].ToString();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Invalid Team Member selected', type: 'error'});", true);
                    return;
                }
            }
        }
        catch(Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Delete From TeamMembers Where teamId=" + Convert.ToInt16(lblId.Text));
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Information deleted Successfully', type: 'success'});", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('team-member-master.aspx', 2000);", true);
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("team-member-master.aspx");
    }
    protected void btnOrder_Click(object sender, EventArgs e)
    {
        try
        {
            if (gvTeamMember.Rows.Count > 0)
            {
                foreach (GridViewRow row in gvTeamMember.Rows)
                {
                    TextBox txtOrder = (TextBox)row.FindControl("txtOrder");
                    c.ExecuteQuery("Update TeamMembers Set displayOrder= " + Convert.ToInt32(txtOrder.Text) + " where teamId=" + Convert.ToInt32(row.Cells[0].Text) );
                }               
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('team-member-master.aspx', 2000);", true);
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }
}