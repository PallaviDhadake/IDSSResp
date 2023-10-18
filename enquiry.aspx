<%@ Page Title="Business Enquiry | IDSS Global International Design & Software Solutions Pune India" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('recaptcha', {
            'sitekey': '6LdRQy8UAAAAABYd5GY4mvd2vd_Pf56fPLFkNsAb'
        });
    };
</script>--%>

      <script type="text/javascript">
          var onloadCallback = function () {
              grecaptcha.render('recaptcha', {
                  'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'
              });
          };
      </script>>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
    <div class="pgHeader">
        <div class="col_1140">
            <div class="page_TB_pad">
                <h1 class="pageH1 bold colorWhite">Enquiry</h1>
                <ul class="bCrumb">
                <li><a href="Default.aspx">Home</a></li>
                <li>&raquo;</li>
                <li>Enquiry Us</li>
            </ul>
            <div class="float_clear"></div>
            </div>
        </div>
    </div>
<!-- Page Header Ends -->
    <span class="space40"></span>
    <div class="col_1140">
        <div class="col_800">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" onload="UpdatePanel1_Load">
                <ContentTemplate>
                    <h2 class="pageH2 colorPrime mrg_B_15">Send Us Enquiry</h2>
                    <div class="w50  float_left mrg_B_15">
                        <div class="app_r_padding" >
                            <span class="labelCap">Name :*</span>
                            <asp:TextBox ID="txtName" CssClass="textBox w95" MaxLength="50" placeholder="Full Name (Surname first)" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="w50 float_left mrg_B_15">
                        <div class="app_r_padding" >
                            <span class="labelCap">Email Id :*</span>
                            <asp:TextBox ID="txtEmail" CssClass="textBox w95" MaxLength="50" placeholder="Your Email Address" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                    <div class="w50  float_left mrg_B_15">
                        <div class="app_r_padding" >
                            <span class="labelCap">Mobile No :*</span>
                            <asp:TextBox ID="txtMob" CssClass="textBox w95" MaxLength="10" placeholder="Without Country Code" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="w50 float_left mrg_B_15">
                        <div class="app_r_padding" >
                            <span class="labelCap">Company :*</span>
                            <asp:TextBox ID="txtCompany" CssClass="textBox w95" MaxLength="30" placeholder="Your Company Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                    <div class="w50 float_left mrg_B_15">
                        <div class="app_r_padding">
                            <span class="labelCap">Nature Of Project :*</span>
                            <asp:DropDownList ID="ddrProject" CssClass="cmbBox" runat="server">
                                <asp:ListItem Value="0"><-Select-></asp:ListItem>
                                <asp:ListItem Value="1">Civil Engineering</asp:ListItem>
                                <asp:ListItem Value="2">Mechanical Engineering</asp:ListItem>
                                <asp:ListItem Value="3">Architectural</asp:ListItem>
                                <asp:ListItem Value="4">Lightning Protection System Design</asp:ListItem>
                                <asp:ListItem Value="5">Geotechnical Engineering</asp:ListItem>
                                <asp:ListItem Value="6">Information Technology</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="w50 float_left mrg_B_15">
                        <div class="app_r_padding">
                            <span class="labelCap">Project work to outsource :</span>
                            <asp:DropDownList ID="ddrProjWork" CssClass="cmbBox" runat="server">
                                <asp:ListItem Value="0"><-Select-></asp:ListItem>
                                <asp:ListItem Value="1">200 hours/month (1 Resource)</asp:ListItem>
                                <asp:ListItem Value="2">400 hours/month (2 Resource)</asp:ListItem>
                                <asp:ListItem Value="3">600 hours/month (3 Resource)</asp:ListItem>
                                <asp:ListItem Value="4">600+ hours/month</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                    <div class="w100 mrg_B_15" >
                        <span class="labelCap">Description :*</span>
                        <asp:TextBox ID="txtDesc" CssClass="textBox w95" TextMode="MultiLine" Height="150" runat="server"></asp:TextBox>
                    </div>
                    <div class="w95  mar_b_15" >
                        <div id="recaptcha" style="transform:scale(0.77);-webkit-transform:scale(0.77);transform-origin:0 0;-webkit-transform-origin:0 0;"></div>
                        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                    </div>
                    <span class="space10"></span>
                        <%=errMsg %>
                    <span class="space10"></span>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonForm" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <!-- Sidebar starts -->
        <div class="col_340">
            <div class="pad_L_30">
                <div class="sideBar">
                    <div class="pad_TB_20">
                        <h4 class="sideTitle bold medium upperCase">our services</h4>
                    </div>
                    <img alt="IDSS - Civil Engineering Services" src="images/sidebar-idss-civil-engg-services.jpg"  class="width100"/>
                    <div class="pad_20">
                        <span class="sideIntro">
                            We value our client relationships above all else, save and except the safety and well being of our own people and their families. Without our clients, there would be no IDSS Global. 
                        </span>
                        <span class="space20"></span>
                        <a href="services.aspx" class="sideAnch" title="Read about IDSS Global Services">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sidebar ends -->
        <div class="float_clear"></div>
    </div>
</asp:Content>

