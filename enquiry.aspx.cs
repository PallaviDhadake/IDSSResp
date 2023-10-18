using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class enquiry : System.Web.UI.Page
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
            txtMob.Text = txtMob.Text.Trim().Replace("'", "");
            txtName.Text = txtName.Text.Trim().Replace("'", "");
            txtCompany.Text = txtCompany.Text.Trim().Replace("'", "");
            txtDesc.Text = txtDesc.Text.Trim().Replace("'", "");


            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (txtName.Text == "" || txtEmail.Text == "" || txtMob.Text == "" || txtCompany.Text == "" || ddrProject.SelectedIndex == 0 || ddrProjWork.SelectedIndex == 0 || txtDesc.Text == "")
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
            strMail.Append("You have a new enquiry at IDSSGlobal.com");
            strMail.Append("<br/><br/>");
            strMail.Append("<b>Details</b><br/>");
            strMail.Append("Name : <b>" + txtName.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Mobile No. : <b>" + txtMob.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Email Id : <b>" + txtEmail.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Company : <b>" + txtCompany.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Nature of Project : <b>" + ddrProject.SelectedItem.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Project Work to Outsource : <b>" + ddrProjWork.SelectedItem.Text + "</b>");
            strMail.Append("<br/><br/>");
            strMail.Append("Description : <b>" + txtDesc.Text + "</b>");

            c.SendMail("admin@idssglobal.com", "IDSS Global", "sachin.patil@idssglobal.com", strMail.ToString(), "New Enquiry at IDSS Global", "", true, "", "");

            errMsg = c.ErrNotification(1, "Thank you for your valuable enquiry. We will get back to you soon.");

            txtEmail.Text = txtMob.Text = txtName.Text = txtCompany.Text = txtDesc.Text = "";
            ddrProjWork.SelectedIndex = 0;
            ddrProject.SelectedIndex = 0;

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
             ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "grecaptcha.render('recaptcha', {'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'});", true);
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
}