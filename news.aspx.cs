using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Text;

public partial class news : System.Web.UI.Page
{
    iClass c = new iClass();
    public string newsStr, bCrumbStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.DataBind();
        try
        {
            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(Page.RouteData.Values["newsId"].ToString()))
                {
                    GetAllNews();
                }
                else
                {
                    string[] arrLinks = Page.RouteData.Values["newsId"].ToString().Split('-');
                    GetAllNewsDetails(Convert.ToInt16(arrLinks[arrLinks.Length - 1]));
                }
            }
        }
        catch (Exception ex)
        {
            newsStr = c.ErrNotification(3, ex.Message.ToString());
        }
    }
    private void GetAllNews()
    {
        try
        {
            using (DataTable dtNews = c.GetDataTable("Select newsId, newsDate, newsTitle, LEFT(newsDesc, 150) as newsDesc, newsImage From NewsData ORDER BY newsDate DESC, newsId DESC"))
            {
                if (dtNews.Rows.Count > 0)
                {
                    StringBuilder strMarkup = new StringBuilder();
                    int nCount = 1;

                    bCrumbStr = "<ul class=\"bCrumb\"><li><a href=\"" + Master.rootPath + "\">Home</a></li><li>&raquo;</li><li>Latest News</li></ul>";

                    foreach (DataRow row in dtNews.Rows)
                    {
                        if (row["newsImage"] != DBNull.Value && row["newsImage"] != "" && row["newsImage"] != "no-photo.png")
                        {
                            strMarkup.Append("<div class=\"news-img\">");
                            strMarkup.Append("<img src=\"" + Master.rootPath + "upload/news/thumb/" + row["newsImage"].ToString() + "\" alt=\"" + row["newsTitle"].ToString() + "\" class=\"width100\" />");
                            strMarkup.Append("</div>");
                            strMarkup.Append("<div class=\"news-info\">");
                        }
                        else
                        {
                            object imgName = c.GetReqData("NewsPhotos", "Top 1 newsPicName", "newsId=" + row["newsId"]);
                            if (imgName != DBNull.Value && imgName != null && imgName.ToString() != "")
                            {
                                strMarkup.Append("<div class=\"news-img\">");
                                strMarkup.Append("<img src=\"" + Master.rootPath + "upload/news/thumb/" + imgName.ToString() + "\" alt=\"" + row["newsTitle"].ToString() + "\" class=\"width100\" />");
                                strMarkup.Append("</div>");
                                strMarkup.Append("<div class=\"news-info\">");
                            }   
                        }

                        string nUrl = Master.rootPath + "news/" + c.UrlGenerator(row["newsTitle"].ToString().ToLower() + '-' + row["newsId"].ToString());
                        strMarkup.Append("<a href=\"" + nUrl + "\" class=\"news-Tag mrg_B_10 fontRegular\">" + row["newsTitle"].ToString() + "</a>");

                        DateTime nDate = Convert.ToDateTime(row["newsDate"]);

                        strMarkup.Append("<span class=\"post mrg_B_15\">IDSS Global | " + nDate.ToString("dd MMM yyyy") + "</span>");

                        strMarkup.Append("<p class=\"paraTxt mrg_B_15\">" + row["newsDesc"].ToString() + "...</p>");
                        strMarkup.Append("<a href=\"" + nUrl + "\" class=\"Readmore fontRegular\">Read More</a>");

                        if (row["newsImage"] != DBNull.Value && row["newsImage"] != "" && row["newsImage"] != "no-photo.png")
                        {
                            strMarkup.Append("</div>");
                        }
                        else
                        {
                            object imgName = c.GetReqData("NewsPhotos", "Top 1 newsPicName", "newsId=" + row["newsId"]);
                            if (imgName != DBNull.Value && imgName != null && imgName.ToString() != "")
                            {
                                strMarkup.Append("</div>");
                            }
                        }

                        strMarkup.Append("<div class=\"float_clear\"></div>");
                        if (nCount < dtNews.Rows.Count)
                            strMarkup.Append("<span class=\"greyLine\"></span>");
                        nCount++;
                    }
                    newsStr = strMarkup.ToString();
                }
                else
                {
                    newsStr = "<span class=\"infoClr\">Nothing to display, Come back later...</span>";
                    return;
                }
            }
        }
        catch (Exception ex)
        {
            newsStr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }

    private void GetAllNewsDetails(int nwsIdX)
    {
        try
        {
            c.ExecuteQuery("Update NewsData Set readCount=readCount+1 Where newsId=" + nwsIdX);
            using (DataTable dtNws = c.GetDataTable("Select * From NewsData Where newsId=" + nwsIdX))
            {
                if (dtNws.Rows.Count > 0)
                {
                    DataRow row = dtNws.Rows[0];
                    StringBuilder strMarkup = new StringBuilder();

                    this.Title = row["newsTitle"].ToString() + "| Latest News, Events About IDSS Global";

                    strMarkup.Append("<h2 class=\"pageH2 themeClrPrime mrg_B_5\">" + row["newsTitle"].ToString() + "</h2>");
                    DateTime nDate = Convert.ToDateTime(row["newsDate"]);
                    strMarkup.Append("<span class=\"newspost\">IDSS Global | " + nDate.ToString("dd MMM yyyy") + "</span>");

                    //strMarkup.Append("<span class=\"space15\"></span>");
                    //strMarkup.Append("<span class=\"semiMedium fontRegular themeClrSec\">Total Views : " + row["readCount"].ToString() + "</span>");
                    strMarkup.Append("<span class=\"space40\"></span>");

                    //Sharing Options
                    strMarkup.Append("<div class=\"a2a_kit a2a_kit_size_24 a2a_default_style\" >");
                    //strMarkup.Append("<a class=\"a2a_dd\" href=\"https://www.addtoany.com/share\"></a>");
                    strMarkup.Append("<a class=\"a2a_button_facebook\"></a>");
                    strMarkup.Append("<a class=\"a2a_button_twitter\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_google_plus\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_pinterest\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_email\"></a>");
                    strMarkup.Append("<a class=\"a2a_button_linkedin\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_reddit\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_stumbleupon\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_digg\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_tumblr\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_whatsapp\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_blogger_post\"></a>");
                    //strMarkup.Append("<a class=\"a2a_button_delicious\"></a>");
                    strMarkup.Append("</div>");
                    strMarkup.Append("<script async src=\"https://static.addtoany.com/menu/page.js\"></script>");

                    //Add Page sharing links code here
                    strMarkup.Append("<div class=\"float_clear\"></div>");
                    strMarkup.Append("<div class=\"space20\"></div>");

                    if (row["newsImage"] != DBNull.Value && row["newsImage"] != "" && row["newsImage"] != "no-photo.png")
                        strMarkup.Append("<img src=\"" + Master.rootPath + "upload/news/" + row["newsImage"].ToString() + "\" alt=\"" + row["newsTitle"].ToString() + "\" class=\"width100\" />");
                    strMarkup.Append("<span class=\"space20\"></span>");
                    strMarkup.Append("<p class=\"paraTxt mrg_B_25\">" + Regex.Replace(row["newsDesc"].ToString(), @"\r\n?|\n", "<br />") + "</p>");
                    //strMarkup.Append("<h3 class=\"pageH3 colorPrime mrg_B_15\">Photos :</h3>");
                    
                    using(DataTable dtPhotos = c.GetDataTable("Select * From NewsPhotos Where newsId=" +nwsIdX))
                    {
                        if(dtPhotos.Rows.Count != 0)
                        {
                            strMarkup.Append("<h3 class=\"pageH3 colorPrime mrg_B_15\">Photos :</h3>");
                        }
                        foreach(DataRow nRow in dtPhotos.Rows)
                        {
                            strMarkup.Append("<div class=\"col_1140\">");
                            strMarkup.Append("<div class=\"col_1_4\">");
                            strMarkup.Append("<div class=\"pad_10\">");
                            strMarkup.Append("<div class=\"img-border\">");
                            strMarkup.Append("<div class=\"pad_10\">");
                            strMarkup.Append("<a href=\"" + Master.rootPath + "upload/news/" + nRow["newsPicName"].ToString() + "\" data-fancybox=\"imgGroup\">");
                            strMarkup.Append("<img src=\"" + Master.rootPath + "upload/news/thumb/" + nRow["newsPicName"].ToString() + "\" alt=\"" + nRow["newsPicName"].ToString() + "\" class=\"width100\" />");
                            strMarkup.Append("</a>");
                            strMarkup.Append("</div>");
                            strMarkup.Append("</div>");
                            strMarkup.Append("</div>");
                            strMarkup.Append("</div>");
                            strMarkup.Append("</div>");
                        }
                    }
                    strMarkup.Append("<div class=\"float_clear\"></div>");
                    
                    newsStr = strMarkup.ToString();
                    bCrumbStr = "<ul class=\"bCrumb\"><li><a href=\"" + Master.rootPath + "\">Home</a></li><li>&raquo;</li><li><a href=\"" + Master.rootPath + "news\">Latest News</a></li><li>&raquo;</li><li>" + row["newsTitle"].ToString() + "</li></ul>";
                }
            }
        }
        catch (Exception ex)
        {
            newsStr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
}