using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class MasterParent : System.Web.UI.MasterPage
{
    public string rootPath;
    iClass c = new iClass();
    public string menuStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetMenuMarkup();
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        rootPath = c.ReturnHttp();
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
}
