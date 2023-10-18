using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class career_apply : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.DataBind();
    }
    public string GetCareerListing()
    {
        try
        {

            using(DataTable dtCareer = c.GetDataTable("Select * From CareerData Where delMark=0 Order by crId Desc") )
            {
                if (dtCareer.Rows.Count > 0)
                {
                    StringBuilder strMarkup = new StringBuilder();
                    foreach(DataRow row in dtCareer.Rows)
                    {
                        strMarkup.Append("<div class=\"careerCol\">");
                        strMarkup.Append("<div class=\"pad_15\">");
                        strMarkup.Append("<div class=\"careerInfo\">");
                        strMarkup.Append("<div class=\"careerPad\">");
                        strMarkup.Append("<h2 class=\"pageH2 colorPrime bold mrg_B_10 txt_left\">" + row["crTitle"].ToString() + "</h2>");
                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Job Code : " + row["crCode"] + "</span>");
                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Location : " + row["crLocation"].ToString() + "</span>");

                        string gender = "";
                        switch(row["crGender"].ToString())
                        {
                            case "1":
                                gender = "Male";
                                break;
                            case "2":
                                gender = "Female";
                                break;
                            case "3":
                                gender = "Any";
                                break;
                        }

                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Candiate : " + gender + "</span>");

                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Age Limits : " + row["ageLimit"].ToString() + "</span>");
                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Experience : " + row["crExp"].ToString() + "</span>");
                        strMarkup.Append("<span class=\"jobInfo regular bold txt_left\">Job Details : </span>");
                        strMarkup.Append("<ul class=\"basicList\" style=\"text-align:left\">");

                        string[] arrDesc = row["crDetails"].ToString().Split(new string[] { "\n", "\r\n" }, StringSplitOptions.RemoveEmptyEntries);

                        foreach (string dString in arrDesc)
                            strMarkup.Append("<li>" + dString + "</li>");
                        

                        strMarkup.Append("</ul>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                    }
                    return strMarkup.ToString();
                }
                else
                    return "";
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
}