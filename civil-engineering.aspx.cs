using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class civil_services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlMeta description = new HtmlMeta();
        description.HttpEquiv = "description";
        description.Name = "description";
        description.Content = "IDSS Global is a trusted Civil engineering Service company in Pune, India. We are providing Civil and structural design support to USA, Canada & UK regions.";
        Page.Header.Controls.Add(description);

        Page.Header.DataBind();
    }
}