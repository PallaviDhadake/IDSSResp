using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idssadmin_Default : System.Web.UI.Page
{
    public string errMsg;
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmdSign.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(cmdSign, null) + ";");
        txtUserName.Focus();
        if (!IsPostBack)
        {
            if (Session["IDSSAdmin"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        }
    }
    protected void cmdSign_Click(object sender, EventArgs e)
    {
        try
        {
            txtPwd.Text = txtPwd.Text.Trim().Replace("'", "");
            txtUserName.Text = txtUserName.Text.Trim().Replace("'", "");
            if (txtUserName.Text == "" || txtPwd.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Enter Username & Password', type: 'warning'});", true);
                errMsg = c.ErrNotification(2, "Enter Username & Password");
                return;
            }
            if (!c.IsRecordExist("Select userId From Users Where userName='" + txtUserName.Text + "'"))
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Invalid Username Entered. Try Again.', type: 'warning'});", true);
                errMsg = c.ErrNotification(2, "Invalid Username");
                return;
            }
            else if (c.GetReqData("Users", "userPwd", "userName='" + txtUserName.Text.Trim() + "'").ToString() != txtPwd.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Wrong Password Entered. Try Again.', type: 'warning'});", true);
                errMsg = c.ErrNotification(2, "Wrong Password");
                return;
            }
            else
            {
                Session["IDSSAdmin"] = txtUserName.Text;
                Response.Redirect("dashboard.aspx", false);
            }
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }

    }
}