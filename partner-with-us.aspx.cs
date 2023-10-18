using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class partner_with_us : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnSubmit.Attributes.Add("onclick", "this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
        }
        
    }

    protected void UpdatePanel1_Load(object sender, EventArgs e)
    {
         ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "grecaptcha.render('recaptcha', {'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'});", true);
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == "" || txtOrgnisation.Text == "" || txtEmail.Text == "" ||ddrServices.SelectedIndex==0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * marked fields are mandatory');", true);
                return;
            }
            //else if (c.ValidateMobile(txtMobile.Text) == false)
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter  Valid Mobile No');", true);
            //    return;
            //}
            else if (c.EmailAddressCheck(txtEmail.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter  Valid Email Address');", true);
                return;
            }

            //else if (c.IsRecordExist("Select centId From Centersdata Where centMobile = '" + txtmobile.Text + "'"))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'This Mobile No is already registered with us');", true);
            //    return;
            //}
            //else if (c.IsRecordExist("Select centId From Centersdata Where centEmail='" + txtemail.Text + "' "))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'This Email Address is already registered with us');", true);
            //    return;
            //}

            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (!IsCaptchaValid)
            {
                //InValid Request
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Captcha Verification Failed');", true);
                return;
            }

            StringBuilder strMail = new StringBuilder();

            strMail.Append("Dear Sir, <br/>");
            strMail.Append("You have a new Enquiry at idssglobal.com, <br/>");
            strMail.Append("Details are given below, <br/><br/>");
            strMail.Append("Name : <b>" + txtName.Text + "</b> <br/>");
            strMail.Append("Organisation  : <b>" + txtOrgnisation.Text + "</b> <br/>");
            strMail.Append("Services : <b>" + ddrServices.SelectedItem.Text + "</b> <br/>");
            strMail.Append("Email : <b>" + txtEmail.Text + "</b> <br/>");
            strMail.Append("Phone : <b>" + txtPhone.Text + "</b> <br/>");
            strMail.Append("Message : <b>" + txtMsg.Text + "</b>");

            //c.SendMail("info@intellect-systems.com", "Eibenstock Positron", "prajaktap204@gmail.com", strMail.ToString(), "New Feedback at PositronSolutions", "", true, "", "");
            //c.SendMail("info@intellect-systems.com", "Eibenstock Positron", "customer.support@positronsolutions.com", strMail.ToString(), "New Feedback at PositronSolutions", "", true, "", "");

            c.SendMail("admin@idssglobal.com", "IDSS Global", "sachin.patil@idssglobal.com", strMail.ToString(), "New Feedback at MTSTS Education", "", true, "", "");

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your valuable enquiry. We will get back to you soon.');", true);

            txtName.Text = txtEmail.Text = txtPhone.Text = txtOrgnisation.Text = txtMsg.Text = "";
            ddrServices.SelectedIndex = 0;
            //errMsg = c.ErrNotification(1, "Thank you for your Feedback..!! We'll get back to you soon..!!");

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }
    }
}