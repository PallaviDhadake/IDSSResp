using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class our_team : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.DataBind();
    }

    public string GetTeamData()
    {
        try
        {
            using(DataTable dtTeam = c.GetDataTable("Select * From TeamMembers Where delMark=0 Order By displayOrder")  )
            {
                if (dtTeam.Rows.Count > 0)
                {
                    StringBuilder strMarkup = new StringBuilder();
                    string rootPath = c.ReturnHttp();
                    foreach (DataRow row in dtTeam.Rows)
                    {
                        strMarkup.Append("<div class=\"bgEF\">");
                        strMarkup.Append("<div class=\"teamBox\">");
                        strMarkup.Append("<div class=\"pad_20\">");
                        strMarkup.Append("<div class=\"teamShape\">");
                        strMarkup.Append("<div class=\"pad_10\">");
                        strMarkup.Append("<img src=\"" + rootPath + "upload/team/" + row["teamPhoto"].ToString() + "\" alt=\"" + row["teamName"].ToString() + "\" />");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<div class=\"teamInfo\">");
                        strMarkup.Append("<div class=\"pad_20\">");
                        strMarkup.Append("<h3 class=\"teamName\">" + row["teamName"].ToString() + "<span>" + row["teamPosition"].ToString() + "</span></h3>");
                        strMarkup.Append("<span class=\"space10\"></span>");
                        strMarkup.Append("<p class=\"regular lineHt colorBlack\">" + Regex.Replace(row["teamProfile"].ToString(), @"\r\n?|\n", "<br />") + "</p>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<div class=\"float_clear\"></div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<span class=\"space40\"></span>");
                    }
                    return strMarkup.ToString();
                }
                else
                    return "Nothing to display right now. Visit later";
            }
        }
        catch (Exception ex)
        {
            return c.ErrNotification(3, ex.Message.ToString());
            
        }
    }
}