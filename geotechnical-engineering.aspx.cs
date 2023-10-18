using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class geotechnical_engineering : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //adding meta description dynamically
        HtmlMeta description = new HtmlMeta();
        description.HttpEquiv = "description";
        description.Name = "description";
        description.Content = "Providing Expert Advice to a wide range of clients Including Consultants & Contractors. IDSS - Geotechnical engineers with a worldwide reputation for excellence. Speak to an expert today.";
        Page.Header.Controls.Add(description);

        //adding meta keywords dynamically
        HtmlMeta metakeyWord = new HtmlMeta();
        metakeyWord.Name = "keywords";
        metakeyWord.Content = "geotechnical engineering, geotechnical consulting";
        Page.Header.Controls.Add(metakeyWord);

        Page.Header.DataBind();
    }
}