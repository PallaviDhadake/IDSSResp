using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
public partial class architect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //adding meta description dynamically
        HtmlMeta description = new HtmlMeta();
        description.HttpEquiv = "description";
        description.Name = "description";
        description.Content = "IDSS Global is a trusted architectural design company in Pune, India. We are providing Architectural design support to USA, Canada & UK regions. We have strong experience in AutoCAD and Revit tools.";
        Page.Header.Controls.Add(description);

        //adding meta keywords dynamically
        HtmlMeta metakeyWord = new HtmlMeta();
        metakeyWord.Name = "keywords";
        metakeyWord.Content = "architectural designers, architectural design services, autocad architecture";
        Page.Header.Controls.Add(metakeyWord);

        Page.Header.DataBind();
    }
}