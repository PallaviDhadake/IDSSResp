using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class contact_us : System.Web.UI.Page
{
    public string errMsg;
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
        Page.Header.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            txtEmail.Text = txtEmail.Text.Trim().Replace("'", "");
            txtMessage.Text = txtMessage.Text.Trim().Replace("'", "");
            txtMobile.Text = txtMobile.Text.Trim().Replace("'", "");
            txtName.Text = txtName.Text.Trim().Replace("'", "");

            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (txtName.Text == "" || txtEmail.Text == "" || txtMessage.Text == "")
            {
                errMsg = c.ErrNotification(2, "All * marked fields are mendatory");
                return;
            }
            if (c.EmailAddressCheck(txtEmail.Text) == false)
            {
                errMsg = c.ErrNotification(2, "Enter valid email address");
                return;
            }
            if (!IsCaptchaValid)
            {
                //InValid Request
                errMsg = c.ErrNotification(3, "Captcha verification failed");
                return;
            }

            StringBuilder strMail = new StringBuilder();
            strMail.Append("Dear Sir,<br/>");
            strMail.Append("<br/><br/>");
            strMail.Append("You have a new feedback at IDSSGlobal.com");
            strMail.Append("<br/><br/>");
            strMail.Append("<b>Details</b><br/>");
            strMail.Append("Name : <b>" + txtName.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Mobile No. : <b>" + txtMobile.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Email Id : <b>" + txtEmail.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Message : <b>" + txtMessage.Text + "</b>");


            //c.EmailHttpMarkup("info@intellect-systems.com", "Intellect Systems", "intellect.systems@hotmail.com", "New Feedback at Intellect Systems", "You have a new feedback at Intellect Systems", strMail.ToString(), "", "", "");
            c.SendMail("admin@idssglobal.com", "IDSS Global", "sachin.patil@idssglobal.com", strMail.ToString(), "New Feedback at IDSS Global", "", true, "", "");

            errMsg = c.ErrNotification(1, "Thank you for your valuable feedback. We will get back to you soon.");

            txtEmail.Text = txtMessage.Text = txtMobile.Text = txtName.Text = "";

        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
    protected void UpdatePanel1_Load(object sender, EventArgs e)
    {
        try
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "grecaptcha.render('recaptcha', {'sitekey': '6LdRQy8UAAAAABYd5GY4mvd2vd_Pf56fPLFkNsAb'});", true);
        }
        catch (Exception ex) 
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
        
    }
}