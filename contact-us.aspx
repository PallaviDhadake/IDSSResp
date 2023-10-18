<%@ Page Title="Contact | IDSS Global International Design & Software Solutions Pune India" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('recaptcha', {
            'sitekey': '6LdRQy8UAAAAABYd5GY4mvd2vd_Pf56fPLFkNsAb'
        });
    };
</script>
<script type="text/javascript"
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
</script>
<script type="text/javascript">
    function initialize() {
        //var myLatlng = new google.maps.LatLng(18.5952987,73.7919137);
        var myLatlng = new google.maps.LatLng(18.599948, 73.792562);
        

        var mapOptions = {
            center: myLatlng,
            zoom: 20, scrollwheel: false, draggable: true,
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
        var solar = {
            path: 'M64,0C39.699,0,20,19.699,20,44s44,84,44,84s44-59.699,44-84S88.301,0,64,0z M28,44    C28,24.148,44.148,8,64,8s36,16.148,36,36c0,13.828-20.008,47.211-36,70.238C48.008,91.211,28,57.828,28,44z M64,24    c-11.047,0-20,8.953-20,20s8.953,20,20,20s20-8.953,20-20S75.047,24,64,24z M64,56c-6.617,0-12-5.383-12-12s5.383-12,12-12    s12,5.383,12,12S70.617,56,64,56z',
            fillColor: '#0187ce',
            fillOpacity: 1,
            scale: 0.3
        };
        var marker = new google.maps.Marker({
            position: myLatlng,
            icon: solar,
            map: map,
            title: "IDSS Global International Design And Software Solutions",
            animation: google.maps.Animation.DROP
        });
        marker.addListener('click', toggleBounce);
        function toggleBounce() {
            if (marker.getAnimation() !== null) {
                marker.setAnimation(null);
            } else {
                marker.setAnimation(google.maps.Animation.BOUNCE);
            }
        }
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeader">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite">Contact Us</h1>
            <ul class="bCrumb">
                <li><a href="Default.aspx">Home</a></li>
                <li>&raquo;</li>
                <li>Contact IDSS Global</li>
            </ul>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->
<div id="map-canvas" class="w100"></div>
<div class="col_1140">
    <span class="space40"></span>
    <div class="col_340">
        <div class="">
            <h2 class="colorPrime bold medium mrg_B_15">IDSS Global HQ - India</h2>
            <!-- <p class="regular lineHt mrg_B_15">21, Lakshmi nagar, Ushakal society road, sangavi, Pune-27 Maharashtra India.</p> -->
            <p class="regular lineHt mrg_B_15 home conIco">Office No- 208, GK Saphire, S NO. 5/2, Near Kokane chowk Rahatani, Pune 411017 Maharashtra India</p>
            
            <span class="regular bold">Contact No :</span>
            <span class="space10"></span>
            <a href="tel:+919960900134" class="regular txtDecNone conCall conIco">+91-9960900134</a>
            
            <span class="space20"></span>

            <span class="regular bold">Email id :</span>
            <span class="space10"></span>
            <a href="mailto:info@idssglobal.com" class="regular txtDecNone conMail conIco" >info@idssglobal.com</a>

            <span class="space30"></span>

            <h2 class="colorPrime bold medium mrg_B_15">IDSS Global UK Office</h2>
            <p class="regular lineHt mrg_B_15 home conIco">House No-68, Endsleigh Gardens road, Ilford, Essex, Post code-IG1 3EG.</p>
            
            <span class="regular bold">Contact No :</span>
            <span class="space10"></span>
            <a href="tel:+44 7774792777" class="regular txtDecNone conCall conIco" >+44 7774792777</a>

            <span class="space20"></span>

            <span class="regular bold">Email id :</span>
            <span class="space10"></span>
            <a href="mailto:sales@idssglobal.com" class="regular txtDecNone conMail conIco">sales@idssglobal.com</a>
            
        </div>

    </div>
    <div class="col_800">
        <div class="pad_L_30">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" onload="UpdatePanel1_Load" >
                <ContentTemplate>
                    <h2 class="colorPrime bold large">Feedback</h2>
                    <span class="space20"></span>
                    <div class="w100  mar_b_15" >
                        <span class="labelCap">Name :*</span>
                        <asp:TextBox ID="txtName" CssClass="textBox" MaxLength="50" placeholder="Full Name (Surname first)" runat="server"></asp:TextBox>
                    </div>

                    <div class="w50 float_left mar_b_15" >
                        <div class="app_r_padding">
                            <span class="labelCap">Mobile No :</span>
                            <asp:TextBox ID="txtMobile" CssClass="textBox" MaxLength="10" placeholder="Mobile Number without Country Code" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="w50 float_left mar_b_15" >
                        <span class="labelCap">Email Id :*</span>
                        <asp:TextBox ID="txtEmail" CssClass="textBox w95" MaxLength="30" placeholder="Your Email Addrress" runat="server"></asp:TextBox>
                    </div>
                    <div class="w100  mar_b_15" >
                        <span class="labelCap">Message :*</span>
                        <asp:TextBox ID="txtMessage" CssClass="textBox" TextMode="MultiLine" Height="100" runat="server"></asp:TextBox>
                    </div>

                    <div class="w95  mar_b_15" >
                        <div id="recaptcha" style="transform:scale(0.77);-webkit-transform:scale(0.77);transform-origin:0 0;-webkit-transform-origin:0 0;"></div>
                        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                    </div>
                    <span class="space10"></span>
                        <%=errMsg %>
                    <span class="space10"></span>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonForm" Text="Submit" onclick="btnSubmit_Click"/>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="float_clear"></div>
</div>
</asp:Content>

