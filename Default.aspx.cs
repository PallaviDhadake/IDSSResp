using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    public string rootPath;
    iClass c = new iClass();
    public string menuStr, newsStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        rootPath = c.ReturnHttp();
        if (Request.QueryString["act"] == "out")
            Session["IDSSAdmin"] = null;
        GetMenuMarkup();
        LatestNewsMarkup();

        HtmlMeta tag = new HtmlMeta();
        tag.Name = "description";
        tag.Content = "IDSS global is a leading CAD outsourcing service provider in Pune, India. We are offering design support to our customers like mechanical engineering, civil engineering, architectural design, BIM, Geotechnical engineer services and Lightning Protection System Design.";
        Header.Controls.Add(tag);

        Page.Header.DataBind();
    }
    private void GetMenuMarkup()
    {
        try
        {
            int[] arrBase = new int[] { 1, 2 };

            StringBuilder strMarkup = new StringBuilder();

            strMarkup.Append("<ul>");
            string baseType = "";
            foreach (int i in arrBase)
            {
                if (i == 1)
                {
                    strMarkup.Append("<li><a >Indian Projects</a>");
                    baseType = "indian";
                }
                else if (i == 2)
                {
                    strMarkup.Append("<li><a >International Projects</a>");
                    baseType = "international";
                }
                strMarkup.Append("<ul>");

                using (DataTable dtStr = c.GetDataTable("Select * From ProjectStream Where delMark=0 And basicType=" + i))
                {
                    foreach (DataRow row in dtStr.Rows)
                    {
                        string rdrUrl = rootPath + "projects/" + baseType + "/" + c.UrlGenerator(row["psName"].ToString()) + "-" + row["psId"].ToString();
                        strMarkup.Append("<li><a href=\"" + rdrUrl + "\">" + row["psName"].ToString() + "</a></li>");
                    }
                }
                strMarkup.Append("</ul>");
            }
            strMarkup.Append("</ul>");
            menuStr = strMarkup.ToString();
        }
        catch (Exception ex)
        {
            menuStr = "";
        }
    }

    private void LatestNewsMarkup()
    {
        try
        {
            using (DataTable dtNews = c.GetDataTable("Select TOP 5 newsId, newsDate, newsTitle, LEFT(newsDesc, 200) as newsDesc, newsImage From NewsData ORDER BY newsDate DESC"))
            {
                if (dtNews.Rows.Count > 0)
                {
                    //DataRow row = dtNews.Rows[0];
                    StringBuilder strMarkup = new StringBuilder();

                    foreach (DataRow row in dtNews.Rows)
                    {
                        strMarkup.Append("<li>");
                        if (row["newsImage"] != DBNull.Value && row["newsImage"] != "" && row["newsImage"] != "no-photo.png")
                        {
                            strMarkup.Append("<div class=\"newsImg\">");

                            strMarkup.Append("<img src=\"" + rootPath + "upload/news/thumb/" + row["newsImage"].ToString() + "\" alt=\"" + row["newsTitle"] + "\"  />");
                            strMarkup.Append("</div>");
                            strMarkup.Append("<div class=\"newsBox\">");
                        }

                        string nUrl = rootPath + "news/" + c.UrlGenerator(row["newsTitle"].ToString().ToLower() + '-' + row["newsId"].ToString());
                        strMarkup.Append("<a href=\"" + nUrl + "\" class=\"colorBlack medium txtDecNone\">" + row["newsTitle"] + "</a>");
                        strMarkup.Append("<span class=\"space10\"></span>");
                        strMarkup.Append("<p class=\"newsText\">" + row["newsDesc"].ToString() + "...</p>");

                        if (row["newsImage"] != DBNull.Value && row["newsImage"] != "" && row["newsImage"] != "no-photo.png")
                            strMarkup.Append("</div>");
                        strMarkup.Append("<div class=\"float_clear\"></div>");
                        strMarkup.Append("<span class=\"space40\"></span>");
                        strMarkup.Append("</li>");
                    }

                    newsStr = strMarkup.ToString();
                }
            }
        }
        catch (Exception ex)
        {
            newsStr = ex.Message.ToString();
        }
    }
}