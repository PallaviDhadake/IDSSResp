using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class projects : System.Web.UI.Page
{
    public string errMsg;
    iClass c = new iClass();
    public string projMarkup, pgHead;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.DataBind();
        if (!IsPostBack)
        {
            GetProjectsMarkup();
        }
    }

    private void GetProjectsMarkup()
    {
        try
        {
            int basicType = 1;
            if (!String.IsNullOrEmpty(Page.RouteData.Values["baseId"].ToString()))
            {
                if (Page.RouteData.Values["baseId"].ToString() == "indian")
                    basicType = 1;
                else if (Page.RouteData.Values["baseId"].ToString() == "international")
                    basicType = 2;


                if (!String.IsNullOrEmpty(Page.RouteData.Values["streamId"].ToString()))
                {
                    string[] arrLinks = Page.RouteData.Values["streamId"].ToString().Split('-');
                    int streamId = Convert.ToInt32(arrLinks[arrLinks.Length - 1]);

                    pgHead = c.GetReqData("ProjectStream", "psName", "psId=" + streamId).ToString() + " Projects";
                    this.Title = pgHead + " | IDSS Global";

                    StringBuilder strMarkup = new StringBuilder();

                    using (DataTable dtGrp = c.GetDataTable("Select Distinct projGrpId From ProjectsData Where projStrmId=" + streamId))
                    {
                        if (dtGrp.Rows.Count > 0)
                        {
                            foreach (DataRow gRow in dtGrp.Rows)
                            {
                                using (DataTable dtProject = c.GetDataTable("Select * From ProjectsData Where projGrpId=" + gRow["projGrpId"]))
                                {
                                    if (dtProject.Rows.Count > 0)
                                    {
                                        strMarkup.Append("<div class=\"col_1_3 txtCenter posRelative\">");
                                        strMarkup.Append("<div class=\"slideGal \">");
                                        strMarkup.Append("<ul>");

                                        foreach (DataRow row in dtProject.Rows)
                                        {
                                            strMarkup.Append("<li><img src=\"" + Master.rootPath + "upload/project-photos/" + row["projPhoto"] + "\"/></li>");
                                        }

                                        strMarkup.Append("</ul>");
                                        strMarkup.Append("<div class=\"float_clear\"></div>");
                                        strMarkup.Append("<div class=\"themeBGPrime\">");
                                        strMarkup.Append("<div class=\"pad_10\">");

                                        string grpName = c.GetReqData("ProjectGroups", "prjGrpName", "prjGrpId=" + gRow["projGrpId"]).ToString();
                                        strMarkup.Append("<span class=\"colorWhite\">" + grpName + "</span>");

                                        strMarkup.Append("</div>");
                                        strMarkup.Append("</div>");
                                        strMarkup.Append("</div>");
                                        strMarkup.Append("</div>");
                                    }
                                    else
                                    {
                                        strMarkup.Append("No Projects to display");
                                    }
                                }
                            }
                        }
                        else
                        {
                            strMarkup.Append("No Projects to display");
                        }
                    }
                    projMarkup = strMarkup.ToString();
                }
                else
                    Response.Redirect(Master.rootPath, false);
            }
            else
                Response.Redirect(Master.rootPath, false);
        }
        catch (Exception ex)
        {
            projMarkup = ex.Message.ToString();
        }
    }

    //protected void ddrProj_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {

    //        int streamId = Convert.ToInt16(ddrProj.SelectedValue);
    //        StringBuilder strMarkup = new StringBuilder();

    //        using (DataTable dtGrp = c.GetDataTable("Select Distinct projGrpId From ProjectsData Where projStrmId=" + streamId))
    //        {
    //            if (dtGrp.Rows.Count > 0)
    //            {
    //                foreach (DataRow gRow in dtGrp.Rows)
    //                {
    //                    using (DataTable dtProject = c.GetDataTable("Select * From ProjectsData Where projGrpId=" + gRow["projGrpId"]))
    //                    {
    //                        strMarkup.Append("<div class=\"col_1_3 txtCenter posRelative\">");
    //                        strMarkup.Append("<div class=\"slideGal \">");
    //                        strMarkup.Append("<ul>");

    //                        string rootPath = c.ReturnHttp();
    //                        foreach (DataRow row in dtProject.Rows)
    //                        {
    //                            strMarkup.Append("<li><img src=\"" + rootPath + "upload/project-photos/" + row["projPhoto"] + "\"/></li>");
    //                        }

    //                        strMarkup.Append("</ul>");
    //                        strMarkup.Append("<div class=\"float_clear\"></div>");
    //                        //strMarkup.Append("<span class=\"space10\"></span>");
    //                        strMarkup.Append("<div class=\"themeBGPrime\">");
    //                        strMarkup.Append("<div class=\"pad_10\">");
                            
    //                        string grpName = c.GetReqData("ProjectGroups", "prjGrpName", "prjGrpId=" + gRow["projGrpId"]).ToString();
    //                        strMarkup.Append("<span class=\"colorWhite\">" + grpName + "</span>");

    //                        strMarkup.Append("</div>");
    //                        strMarkup.Append("</div>");
    //                        strMarkup.Append("</div>");
    //                        strMarkup.Append("</div>");
    //                    }
    //                }
    //            }
    //        }

    //        projMarkup = strMarkup.ToString();
          
    //    }
    //    catch (Exception ex)
    //    {
    //        errMsg = ex.Message;
    //    }
    //}
}