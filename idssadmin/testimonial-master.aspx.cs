using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class idssadmin_testimonial_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, errMsg, testImg;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", "this.disabled = true; this.value = 'Processing...';" + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");

        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                viewtestimonials.Visible = false;
                edittestimonial.Visible = true;
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
                        GetTestDetails(Convert.ToInt16(lblId.Text));
                    }
                    else
                        Response.Redirect("testimonials-master.aspx", false);
                }
            }
            else
            {
                viewtestimonials.Visible = true;
                edittestimonial.Visible = false;
                FillGrid();
            }
        }
    }

    private void FillGrid()
    {
        try
        {
            using (DataTable dttests = c.GetDataTable("Select tmId, tmName, tmCompany From Testimonials Where delMark=0 Order by tmId Desc"))
            {
                gvTestimonials.DataSource = dttests;
                gvTestimonials.DataBind();
            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }


    protected void gvTestimonials_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"testimonial-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\" class=\"gAnch\"></a>";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvTest_RowDataBound", ex.Message.ToString());
            return;
        }
    }

    protected void gvTestimonials_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTestimonials.PageIndex = e.NewPageIndex;
        FillGrid();
    }


    private void GetTestDetails(int testIdX)
    {
        try
        {
            using (DataTable dtJob = c.GetDataTable("Select * From Testimonials Where tmId=" + testIdX))
            {
                if (dtJob.Rows.Count > 0)
                {
                    DataRow row = dtJob.Rows[0];
                    txtName.Text = row["tmName"].ToString();
                    txtCompNm.Text = row["tmCompany"].ToString();
                    txtTestDesc.Text = row["tmData"].ToString();



                    if (row["tmPhoto"] != DBNull.Value && row["tmPhoto"] != null && row["tmPhoto"].ToString() != "" && row["tmPhoto"].ToString() != "no-photo.png")
                    {
                        testImg = "<img src=\"" + Master.rootPath + "upload/testimonials/" + row["tmPhoto"].ToString() + "\" width=\"200\" />";
                    }
                }
                else
                {
                    
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Wrong Record Selected', type: 'error'});", true);
                    return;
                }
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
            txtName.Text = txtName.Text.Trim().Replace("'", "");
            txtCompNm.Text = txtCompNm.Text.Trim().Replace("'", "");
            txtTestDesc.Text = txtTestDesc.Text.Trim().Replace("'", "");


            if (txtName.Text == "" || txtTestDesc.Text == "")
            {
             
                 ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All * marked fields are mandatary', type: 'warning'});", true);
                return;
            }

            int maxId = Request.QueryString["id"] != null ? Convert.ToInt32(Request.QueryString["id"]) : c.NextId("Testimonials", "tmId");

            string imgName = "";

            if (fuImg.HasFile)
            {
                string fExt = Path.GetExtension(fuImg.FileName).ToLower();
                if (fExt == ".png" || fExt == ".jpg" || fExt == ".jpeg")
                {
                    imgName = "testimonial-" + maxId + fExt;
                    fuImg.SaveAs(Server.MapPath("~/upload/testimonials/") + imgName);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Only .png, .jpg and .jpeg files are allowed', type: 'warning'});", true);
                    //errMsg = c.ErrNotification(2, "Only .png, .jpg and .jpeg files are allowed");
                    return;
                }
            }

            if (lblId.Text == "[New]")
            {
                imgName = imgName == "" ? "no-photo.png" : imgName;
                c.ExecuteQuery("Insert Into Testimonials (tmId, tmName, tmCompany, tmData, tmPhoto, delMark) Values(" + maxId +
                    ", N'" + txtName.Text + "', N'" + txtCompNm.Text + "', N'" + txtTestDesc.Text + "', '" + imgName + "', 0)");
                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonial added successfully...!!');", true);
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Testimonial added successfully...!!', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update Testimonials Set tmName=N'" + txtName.Text + "', tmCompany=N'" + txtCompNm.Text +
                    "', tmData=N'" + txtTestDesc.Text + "' Where tmId=" + maxId);

                if (fuImg.HasFile)
                {
                    c.ExecuteQuery("Update Testimonials Set tmPhoto='" + imgName + "' Where tmId=" + maxId);
                }
                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonial updated successfully...!!');", true);
                 ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Testimonial updated successfully...!!', type: 'success'});", true);
            }
            txtName.Text = txtCompNm.Text = txtTestDesc.Text  = "";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('testimonial-master.aspx', 2000);", true);
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
            
            c.ExecuteQuery("Update Testimonials Set delMark=1 Where tmId=" + Request.QueryString["id"]);
           
             ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Testimonial Data deleted...!!', type: 'success'});", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('testimonial-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing your request', type: 'error'});", true);
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("testimonial-master.aspx");
    }
}