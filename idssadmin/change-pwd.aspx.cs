using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class idssadmin_change_pwd : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            txtConfirmPass.Text = txtConfirmPass.Text.Trim().Replace("'", "");
            txtNewPass.Text = txtNewPass.Text.Trim().Replace("'", "");
            txtOldPass.Text = txtOldPass.Text.Trim().Replace("'", "");

            if (txtOldPass.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Enter Old Password', type: 'warning'});", true);
                return;
            }

            string oldPwd = c.GetReqData("Users", "userPwd", "userId=1").ToString();

            if (txtOldPass.Text != oldPwd)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Wrong Password entered', type: 'warning'});", true);
                return;
            }

            if (txtNewPass.Text == "" || txtOldPass.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Enter New Password', type: 'warning'});", true);
                return;
            }

            if (txtNewPass.Text != txtConfirmPass.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'New Password did not match', type: 'warning'});", true);
                return;
            }
            c.ExecuteQuery("Update Users Set userPwd='" + txtNewPass.Text + "' Where userId=1");
            txtConfirmPass.Text = txtNewPass.Text = txtOldPass.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Password changed', type: 'success'});", true);
        }
        catch (Exception)
        {
            
        }
    }
}