using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idssadmin_MasterAdmin : System.Web.UI.MasterPage
{
    public string rootPath;
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["IDSSAdmin"] == null)
        {
            Response.Redirect(rootPath);
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        rootPath = c.ReturnHttp();
        ScriptManager1.Scripts.Add(new ScriptReference(rootPath + "idssadmin/js/iScripts.js"));
    }
}
