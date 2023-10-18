using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class idssadmin_news_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle;
    protected void Page_Load(object sender, EventArgs e)
    {
        pgTitle = Request.QueryString["action"] == "new" ? "Add News" : "Edit News";
        btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
        btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
        btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                editNews.Visible = true;
                viewNews.Visible = false;
                if (Request.QueryString["action"] == "new")
                {
                    btnSave.Text = "Save Info";
                    btnDelete.Visible = false;
                    txtNDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
                }
                else
                {
                    btnSave.Text = "Modify Info";
                    btnDelete.Visible = true;
                    GetNewsDetails(Convert.ToInt32(Request.QueryString["id"]));
                }
            }
            else
            {
                editNews.Visible = false;
                viewNews.Visible = true;
                FillGrid();
            }
        }
    }

    private void FillGrid()
    {
        try
        {
            using (DataTable dtNews = c.GetDataTable("Select newsId, Convert(varchar(20), newsDate, 103) as nDate, newsTitle, readCount From NewsData Order By newsId DESC"))
            {
                gvNews.DataSource = dtNews;
                gvNews.DataBind();
            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }

    protected void gvNews_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = new Literal();
                litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"news-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\" class=\"gAnch\" title=\"View / Edit\"></a>";
                Literal litPhotos = (Literal)e.Row.FindControl("litAddPhotos");
                litPhotos.Text = "<a href=\"news-photos.aspx?newsId=" + e.Row.Cells[0].Text + "\" class=\"addPhoto\" title=\"Add Photos to album\" ></a>";
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
            txtNDate.Text = txtNDate.Text.Trim().Replace("'", "");
            txtTitle.Text = txtTitle.Text.Trim().Replace("'", "");
            txtDesc.Text = txtDesc.Text.Trim().Replace("'", "");

            if (txtTitle.Text == "" || txtDesc.Text == "" || txtNDate.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'All * marked fields are mandatary', type: 'warning'});", true);
                return;
            }

            string[] arrDate = txtNDate.Text.Split('/');
            if (c.IsDate(arrDate[1] + "/" + arrDate[0] + "/" + arrDate[2]) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Enter valid date', type: 'warning'});", true);
                return;
            }

            DateTime nDate = Convert.ToDateTime(arrDate[1] + "/" + arrDate[0] + "/" + arrDate[2]);

            int maxId = Request.QueryString["action"] == "new" ? c.NextId("NewsData", "newsId") : Convert.ToInt32(lblId.Text);

            string fileName = "";

            if (fuImg.HasFile)
            {
                string fExt = Path.GetExtension(fuImg.FileName).ToString().ToLower();
                if (fExt == ".png" || fExt == ".jpg" || fExt == ".jpeg" || fExt == ".gif")
                {
                    fileName = "news-image" + maxId + fExt;
                    ImageUploadProcess(fileName);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Only .png, .jpg, .jpeg and .gif files are allowed', type: 'warning'});", true);
                    return;
                }
            }

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into NewsData (newsId, newsDate, newsTitle, newsDesc, readCount) Values (" + maxId + ",'" + nDate + "',N'" + txtTitle.Text + "',N'" + txtDesc.Text + "',0)");
                if (fuImg.HasFile)
                {
                    c.ExecuteQuery("Update NewsData Set newsImage='" + fileName + "' Where newsId=" + maxId);
                }
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'News added successfully...!!', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update NewsData Set newsDate='" + nDate + "', newsTitle=N'" + txtTitle.Text + "', newsDesc=N'" + txtDesc.Text + "' Where newsId=" + maxId);
                if (fuImg.HasFile)
                {
                    c.ExecuteQuery("Update NewsData Set newsImage='" + fileName + "' Where newsId=" + maxId);
                }
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'News updated successfully...!!', type: 'success'});", true);
            }
            txtNDate.Text = txtTitle.Text = txtDesc.Text = "";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('news-master.aspx', 2000);", true);

        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error Occoured while processing', type: 'error'});", true);
            return;
        }
    }

    private void ImageUploadProcess(string imgName)
    {
        try
        {
            string rootPath = c.ReturnHttp();
            string origImgPath =  "~/upload/news/original/";
            string thumbImgPath = "~/upload/news/thumb/";
            string normalImgPath ="~/upload/news/";

            fuImg.SaveAs(Server.MapPath(origImgPath) + imgName);
            c.ImageOptimizer(imgName, origImgPath, normalImgPath, 800, true);
            c.ImageOptimizer(imgName, normalImgPath, thumbImgPath, 400, true);
            //c.ImageOptimizer(imgName, origImgPath, thumbImgPath, 400, false);

            File.Delete(Server.MapPath(origImgPath) + imgName);
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }

    private void GetNewsDetails(int nIdX)
    {
        try
        {
            using (DataTable dtNws = c.GetDataTable("Select * From NewsData Where newsId=" + nIdX))
            {
                if (dtNws.Rows.Count > 0)
                {
                    lblId.Text = nIdX.ToString();
                    DataRow row = dtNws.Rows[0];
                    DateTime nDate = Convert.ToDateTime(row["newsDate"]);

                    txtNDate.Text = nDate.Day + "/" + nDate.Month + "/" + nDate.Year;
                    txtTitle.Text = row["newsTitle"].ToString();
                    txtDesc.Text = row["newsDesc"].ToString();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Invalid news selected', type: 'error'});", true);
                    return;
                }
            }
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Delete From NewsData Where newsId=" + Convert.ToInt16(lblId.Text));
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'News deleted Successfully', type: 'success'});", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "waitAndMove('news-master.aspx', 2000);", true);
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error occurred while processing', type: 'error'});", true);
            return;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("news-master.aspx");
    }
    
}