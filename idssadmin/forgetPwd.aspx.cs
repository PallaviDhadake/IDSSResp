using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idssadmin_forgetPwd : System.Web.UI.Page
{
    public string errMsg;
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmdRecover.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(cmdRecover, null) + ";");
    }
    protected void cmdRecover_Click(object sender, EventArgs e)
    {
        txtEmail.Text = txtEmail.Text.Trim().Replace("'", "");
        if (txtEmail.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showNotification({message: 'Enter Email Address', type: 'warning'});", true);
            return;
        }
        if (c.IsRecordExist("Select * From Users Where userEmail='" + txtEmail.Text.Trim() + "'") == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showNotification({message: 'Invalid Email Entered.', type: 'warning'});", true);
            return;
        }

        string userName = txtEmail.Text.Trim();
        string userPwd = c.GetReqData("Users", "userPwd", "userEmail='" + userName + "'").ToString();
        string msgData = "<p><b>User Email : </b>" + userName + "</p><br/><p><b>Password :</b>" + userPwd + "</p>";


        //c.sendMail("noreply@jobniti.com", "JobNiti.com", txtEmail.Text.Trim(), msgData, "Account Credentials", "", false, "", "");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showNotification({message: 'Account details send to your email', type: 'success'});", true);
        txtEmail.Text = "";
        Response.Redirect("Default.aspx", false);
    }
}