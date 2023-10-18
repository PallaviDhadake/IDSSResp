using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text;

public partial class idssadmin_news_photos : System.Web.UI.Page
{
    iClass c = new iClass();
    public string errMsg, photoMarkup;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                c.FillComboBox("newsTitle", "newsId", "NewsData", "", "newsTitle", 0, ddrAddNewsPhoto);

                if (Request.QueryString["newsId"] != null)
                {
                    GetNewsPhotos(Convert.ToInt32(Request.QueryString["newsId"]));
                    ddrAddNewsPhoto.SelectedValue = Request.QueryString["newsId"].ToString();
                }
            }
            catch (Exception ex)
            {
                errMsg = c.ErrNotification(3, ex.Message.ToString());
                return;
            }
        }
        if (Request.QueryString["id"] != null)
        {
            try
            {
                ddrAddNewsPhoto.SelectedValue = c.GetReqData("NewsPhotos", "newsId", "newsPicId=" + Convert.ToInt32(Request.QueryString["id"])).ToString();
                c.ExecuteQuery("Delete From NewsPhotos Where newsPicId=" + Convert.ToInt32(Request.QueryString["id"]));
                GetNewsPhotos(Convert.ToInt32(ddrAddNewsPhoto.SelectedValue));
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJsFunction", "waitAndMove('news-photos.aspx', 3000);", true);
                errMsg = c.ErrNotification(1, "Photo Deleted");
                return;
            }
            catch (Exception)
            {
                errMsg = c.ErrNotification(2, "Record does not exist");
                return;
            }
        }
    }


    protected void ddrAddNewsPhoto_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddrAddNewsPhoto.SelectedIndex != 0)
        {
            GetNewsPhotos(Convert.ToInt32(ddrAddNewsPhoto.SelectedValue));
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddrAddNewsPhoto.SelectedIndex == 0)
            {
                errMsg = c.ErrNotification(2, "Select News to add photos");
                return;
            }
            if (fuImage.HasFile)
            {
                string fExt = Path.GetExtension(fuImage.FileName).ToString().ToLower();
                if (fExt == ".jpg" || fExt == ".jpeg" || fExt == ".png")
                {
                    int newsPhotoId = c.NextId("NewsPhotos", "newsPicId");
                    string imgName = "news_photo" + newsPhotoId + fExt;
                    c.ExecuteQuery("Insert Into NewsPhotos ( newsPicId, newsPicName, newsId) Values (" + newsPhotoId + ", '" + imgName + "', " + Convert.ToInt32(ddrAddNewsPhoto.SelectedValue) + ")");
                    ImageUploadProcess(imgName);
                    errMsg = c.ErrNotification(1, "Image uploaded");
                    GetNewsPhotos(Convert.ToInt32(ddrAddNewsPhoto.SelectedValue));
                }
                else
                {
                    errMsg = c.ErrNotification(2, "Only .jpg, .jpeg or .png files are allowed");
                    return;
                }
            }
            else
            {
                errMsg = c.ErrNotification(2, "Select image to upload");
                return;
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    private void ImageUploadProcess(string imgName)
    {
        try
        {
            string origImgPath = "~/upload/news/original/";
            string thumbImgPath = "~/upload/news/thumb/";
            string normalImgPath = "~/upload/news/";

            fuImage.SaveAs(Server.MapPath(origImgPath) + imgName);
            c.ImageOptimizer(imgName, origImgPath, normalImgPath, 800, true);
            c.ImageOptimizer(imgName, normalImgPath, thumbImgPath, 400, true);

            File.Delete(Server.MapPath(origImgPath) + imgName);
            
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }

    private void GetNewsPhotos(int photoIdX)
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            string rootPath = c.ReturnHttp();

            object newsData = c.GetReqData("NewsData", "newsImage", "newsId=" + photoIdX);
            if (newsData != DBNull.Value && newsData != null && newsData.ToString() != "")
            {
                strMarkup.Append("<div class=\"imgBox\"><div class=\"pad-5\"><div class=\"border1\"><div class=\"pad-5\"><div class=\"imgContainer\"><img src=\"" + rootPath + "upload/news/thumb/" + newsData.ToString() + "\" class=\"width100\" /></div></div></div></div></div>");
            }

            using (DataTable dtPhotos = c.GetDataTable("Select * From NewsPhotos Where newsId=" + photoIdX))
            {
                if (dtPhotos.Rows.Count > 0)
                {
                    foreach (DataRow row in dtPhotos.Rows)
                    {
                        strMarkup.Append("<div class=\"imgBox\">");
                        strMarkup.Append("<div class=\"pad-5\">");
                        strMarkup.Append("<div class=\"border1\">");
                        strMarkup.Append("<div class=\"pad-5\">");
                        strMarkup.Append("<div class=\"imgContainer\">");
                        strMarkup.Append("<img src=\"" + rootPath + "upload/news/thumb/" + row["newsPicName"] + "\" class=\"width100\" />");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<a href=\"news-photos.aspx?id=" + row["newsPicId"] + "\" title=\"Delete Photo\"  class=\"closeAnch\"></a>");
                        strMarkup.Append("</div>");
                    }
                    //photoMarkup = strMarkup.ToString();
                }
                else
                {
                    if (newsData != DBNull.Value && newsData != null && newsData.ToString() != "")
                    {
                        strMarkup.Append("");
                    }
                    else
                    {
                        strMarkup.Append("No photos added for this News");
                    }
                }
            }
            photoMarkup = strMarkup.ToString();
            
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
}