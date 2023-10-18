<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="IE=edge" http-equiv="X-UA-Compatible" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <title>Leading CAD outsourcing company In Pune India | IDSS Global</title>
    
    <meta name="description" content="IDSS global is recognised as one of the leading engineering consulting firms in Pune, India. We are offering wide range of engineering services to our customers like mechanical engineering, civil engineering, architectural design, Geotechnical engineer services and Lightning Protection System Design." />

    <meta name="keywords" content="mechanical engineering, civil engineering, architectural design, Geotechnical engineer services, Lightning Protection System Design" />

    <link href="css/generic.css" rel="stylesheet" type="text/css" />
    <link href="css/idss.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script src="js/jquery.vticker-min.js"></script>
    <%--<script src="js/text-slider.js" type="text/javascript"></script>--%>
    <%--<script>
        $(document).ready(function () {
            $('.slide').textSlider();
        });
    </script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#slideBanner").backstretch(
            ["images/serv-banner/banner_1.jpg",
             "images/serv-banner/banner_2.jpg",
             "images/serv-banner/banner_3.jpg",
            "images/serv-banner/banner_5.jpg"],
            { duration: 3000, fade: 750 });
        });
    </script>
    <style type="text/css">
        map{ display:inline }
        
    </style>
    
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-219110370-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-219110370-1');
</script>

</head>
<body oncontextmenu="return false;">
    
    <!-- Header starts -->
    <div class="bgGrey" id="topContact">
        <div class="col_1140 posRelative">
            <div class="pad_20">
                <div class="contactPanel">
                    <a href="tel:+91-9960900134" class="indFlag fontArial">+91-9960900134</a>
                    <a href="tel:+1(347)408-1246" class="usaFlag fontArial">+1(347)408-1246</a>
                    <span class="contText fontArial">For Enquiry:&nbsp;</span>
                </div>
            </div>
        </div>
    </div>
    <div id="header">
        <div class="col_1140 posRelative">
            <div class="pad_TB_15">
                <a href="<%= rootPath %>">
                    <img alt="" src="images/idss-logo.png" class="logo" />
                    <img alt="" src="images/idss-logo-name.png" class="logoName" />
                </a>
                <img alt="" src="images/certified-logos.png" class="certLogos" />
                <div class="float_clear"></div>
            </div>
            <div class="contactPanel" id="contact">
                <a href="tel:+91-9960900134" class="indFlag fontArial">+91-9960900134</a>
                <a href="tel:+1(347)408-1246 " class="usaFlag fontArial">+1(347)408-1246 </a>
                <span class="contText fontArial">For Enquiry:&nbsp;</span>
            </div>
            <!--
            <span class="tollFree">TOLLFREE: 1-628-400-5833</span>
            <span class="usaFlag">+44-7774792777</span>
            <span class="indFlag">+91-9960900134</span>
            <div class="float_clear"></div>
            <span class="space10"></span>
            -->
        </div>
        <div class="line2X themeBGPrime"></div>
    </div>
    <!-- Header ends -->
    <!-- Responsive Navigation Btn starts -->
    <div class="themeBGPrime disp-none">
        <div class="col_1140 posRelative" id="nav">
            <a id="navigationBtn"></a>
            <div class="float_clear"></div>
            <div class="socialPanel">
                <span class="anchUSA">NEW YORK, NY, USA</span>
                <a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="anchSocial icoFacebook" target="_blank" title="Facebook: IDSS Global"></a>
                <a href="https://www.linkedin.com/company/idss-global/" class="anchSocial icoLinkedIn" target="_blank" title="LinkedIn: IDSS Global"></a>
                <a href="https://twitter.com/GlobalIdss" class="anchSocial icoTwitter" target="_blank" title="Twitter: IDSS Global"></a>
            </div>
        </div>
    </div>
    <!-- Responsive Navigation Btn ends -->
    <!-- Navigation Starts -->
    <div id="topNavPanel">
        <div class="col_1140 posRelative">
             <div class="socialPanel">
                <span class="anchUSA">NEW YORK, NY, USA</span>
                <a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="anchSocial icoFacebook" target="_blank" title="Facebook: IDSS Global"></a>
                <a href="https://www.linkedin.com/company/idss-global/" class="anchSocial icoLinkedIn" target="_blank" title="LinkedIn: IDSS Global"></a>
                <a href="https://twitter.com/GlobalIdss" class="anchSocial icoTwitter" target="_blank" title="Twitter: IDSS Global"></a>
            </div>
            <ul id="topNav">
                <li><a href="<%= rootPath %>">Home</a></li>
                <li><a class="subNav">About Us</a>
                    <ul>
                        <li><a href="about-us.aspx">Overview</a></li>
                        <li><a href="other-facts.aspx">Our Strength</a></li>
                        <li><a href="our-team.aspx">IDSS Team</a></li>
                        <li><a href="testimonials.aspx">Testimonials</a></li>
                    </ul>
                </li>
                <li><a class="subNav">Services</a>
                    <ul>
                        <li><a href="services">Overview</a></li>
                        <li><a href="civil-engineering-services">Civil Engineering</a></li>
                        <li><a href="mechanical-engineering-services">Mechanical Engineering</a></li>
                        <li><a href="architect-services">Architectural</a></li>
                        <li><a href="lightning-protection-system-design">Lightning Protection System Design</a></li>
                        <li><a href="geotechnical-engineering-design">Geotechnical Engineering</a></li>
                        <li><a href="information-technology">Information Technology</a></li>
                    </ul>
                </li>
                <li><a>Portfolio</a>
                    <%=menuStr %>
                    <%--<ul>
                        <li><a href="projects.aspx?type=indian">Indian</a></li>
                        <li><a href="projects.aspx?type=international">International</a></li>
                    </ul>--%>
                </li>
                <li><a class="subNav">Info Center</a>
                    <ul>
                        <li><a href="certification.aspx">Certification</a></li>
                        <li><a href="news">News Events</a></li>
                        <li><a href="frequently-asked-questions.aspx">FAQ</a></li>
                    </ul>
                </li>
                <li><a href="partner-with-us">Partner With Us</a></li>
                <li><a class="subNav">Career</a>
                    <ul>
                        <li><a href="career-intro.aspx">Introduction</a></li>
                        <li><a href="career-apply.aspx">Apply Online</a></li>
                    </ul>
                </li>
                <li><a href="contact-us.aspx">Contact</a></li>
            </ul>
            <div class="float_clear"></div>
        </div>
         
    </div>
   
    <!-- Navigation Ends -->
    <!-- Banner Starts -->
    <div id="banner">
        <div class="col_1140">
            <span class="space40"></span>
            <div class="col_1_2" id="slideBanner"></div>
            <div class="col_1_2">
                <div class="bannerPad">
                    <h1 class="bannerTitle bold upperCase">IDSS Global - CAD Outsourcing Services</h1>
                    <p class="regular lineHt">IDSS Global is an employee-owned, Indian engineering company with offices in the Pune and associates located in other key locations. We have working experience in US, UK And Australian provinces.</p>
                    <span class="space30"></span>
                    <a href="services" class="readBlue">Know More</a>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space40"></span>
        </div>
    </div>
    <%--<div id="banner">
        <div class="slide">
            <div class="slider-item">
                <div class="col_1140">
                    <div class="col_1_2">
                        <img src="images/civil-engineering-services.jpg" class="width100" />
                    </div>
                    <div class="col_1_2">
                        <div class="pad_L_30">
                            <h2 class="bannerTitle bold">CIVIL ENGINEERING SERVICES</h2>
                            <p class="regular lineHt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget pulvinar metus, in pulvinar nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc tincidunt justo at aliquam mattis. Nulla ultricies scelerisque nunc. </p>
                            <span class="space30"></span>
                            <a href="#" class="readBlue">Know More</a>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                </div>
            </div>
            <div class="slider-item">
                <div class="col_1140">
                    <div class="col_1_2">
                        <img src="images/mechanical-engineering-services.jpg" class="width100" />
                    </div>
                    <div class="col_1_2">
                        <div class="pad_L_30">
                            <h2 class="bannerTitle bold">MECHANICAL ENGINEERING SERVICES</h2>
                            <p class="regular lineHt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget pulvinar metus, in pulvinar nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc tincidunt justo at aliquam mattis. Nulla ultricies scelerisque nunc. </p>
                            <span class="space30"></span>
                            <a href="#" class="readBlue">Know More</a>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                </div>
            </div>
            <div class="slider-item">
                <div class="col_1140">
                    <div class="col_1_2">
                        <img src="images/architectural-services.jpg" class="width100" />
                    </div>
                    <div class="col_1_2">
                        <div class="pad_L_30">
                            <h2 class="bannerTitle bold">ARCHITECTURAL SERVICES</h2>
                            <p class="regular lineHt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget pulvinar metus, in pulvinar nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc tincidunt justo at aliquam mattis. Nulla ultricies scelerisque nunc. </p>
                            <span class="space30"></span>
                            <a href="#" class="readBlue">Know More</a>
                        </div>
                    </div>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Banner Ends -->
    <div class="col_1140 txtCenter">
        <div class="pad_TB_30">
            <h2 class="extra-large colorPrime" >Who We Are</h2>
            <span class="space30"></span>
            <p class="regular colorBlack lineHt">
                <b>IDSS Global Is A ISO 9001: 2015 Certified Engineering Company</b>, registered under Indian Government Act with Reg No: PIMPARI/II/21002 This is an Engineering Company with offices in Pune and associates in other key locations. We have working experience in most of US, UK, Europe and Australian proviences. IDSS Global is one of indias leading Engineering outsourcing service provider-over the last few years, we have developed with a number of global firms to setup remote studios (back office) for our clients and thereby mastered the art of Engineering services and its management.
            </p>
            <span class="space20"></span>
        </div>
    </div>

    <div class="col_1140 txtCenter">
        <h2 class="colorPrime extra-large">Our Services</h2>
        <span class="space20"></span>
        <div class="col30Percent">
            <div class="pad_10">
                <a href="civil-engineering.aspx"><img src="images/civil_ico.png" alt="IDSS - CIVIL ENGINEERING" class="imgZoom disableDrag" /></a>
                <span class="space15"></span>
                <a href="civil-engineering.aspx" class="bold colorPrime medium txtDecNo">CIVIL ENGINEERING</a>
                <span class="space15"></span>
                <p class="regular lineHt">IDSS Global is providing provide Land development design and drafting, Survey drafting, Drafting and detailing, As-built drawings.</p>
                
            </div>
        </div>
        <div class="col30Percent">
            <div class="pad_10">
                <a href="mechanical-engineering.aspx"><img src="images/mech_ico.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                <span class="space15"></span>
                <a href="mechanical-engineering.aspx" class="bold colorPrime medium txtDecNo">MECHANICAL ENGINEERING</a>
                <span class="space15"></span>
                <p class="regular lineHt">Under Mechanical CAD Services, IDSS Global serves the needs of Mechanical Engineers, Production Engineers, Design Engineers..</p>
            </div>
        </div>
        <div class="col30Percent">
            <div class="pad_10">
                <a href="architect.aspx"><img src="images/arch_ico.png" alt="IDSS - ARCHITECTURAL SERVICES" class="imgZoom"  /></a>
                <span class="space15"></span>
                <a href="architect.aspx" class="bold colorPrime medium txtDecNo">ARCHITECTURAL SERVICES</a>
                <span class="space15"></span>
                <p class="regular lineHt">Whether large or small, companies like yours face the same problem – time to focus on the differentiators - vision and design.</p>
                
            </div>
        </div>

         <div class="col30Percent">
            <div class="pad_10">
                <a href="lpsd.aspx"><img src="images/lightning-protection.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                <span class="space15"></span>
                <a href="lpsd.aspx" class="bold colorPrime medium txtDecNo">LIGHTNING PROTECTION</a>
                <span class="space15"></span>
                <p class="regular lineHt">Lightning is a capricious, random and unpredictable event. Its' physical characteristics include...</p>
            </div>
        </div>
         <div class="col30Percent">
            <div class="pad_10">
                <a href="geotechnical-engineering.aspx"><img src="images/geotechnical-engg.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                <span class="space15"></span>
                <a href="geotechnical-engineering.aspx" class="bold colorPrime medium txtDecNo">GEOTECHNICAL ENGINEERING</a>
                <span class="space15"></span>
                <p class="regular lineHt">IDSS develops tailored geotechnical exploration programs in support of each client’s specific project.</p>
            </div>
        </div>
        
        <span class="space30"></span>
        <!-- <a href="services.aspx" class="readAnchBlue">Know More</a> -->

    </div>

    <span class="space30"></span>

    <div class="width100 pattern">
        <div class="col_1140 txtCenter" >
            <span class="space30"></span>
            <h2 class="extra-large colorSec">GLOBALLY OPTIMIZED</h2>
            <span class="space30"></span>
            <%--<img src="images/global.png" alt="" class="globalImg width100" usemap="#GlobalPresence" />--%>
            <div class="map-container">
                <span class="pune map-point tooltip"><span class="tooltiptext" >Pune, India</span></span>
                <span class="china map-point tooltip"><span class="tooltiptext" >China</span></span>
                <span class="singapore map-point tooltip"><span class="tooltiptext" >Singapore</span></span>
                <span class="australia map-point tooltip"><span class="tooltiptext" >Australia</span></span>
                <span class="usa map-point tooltip"><span class="tooltiptext" >USA</span></span>
                <span class="canada map-point tooltip"><span class="tooltiptext" >Canada</span></span>
                <span class="uk map-point tooltip"><span class="tooltiptext" >UK</span></span>
                <img src="images/global-locations.png" alt="" class="globalImg width100 " usemap="#GlobalPresence" />

                <div class="mapBox">
                    <div class="pad_10">
                        <span>Pune, India</span>
                        <span>China</span>
                        <span>Singapore</span>
                        <span>Australia</span>
                        <span>USA</span>
                        <span>Canada</span>
                        <span>UK</span>
                    </div>
                </div>
            </div>
            <map name="GlobalPresence" style="position:relative">
                <area target="_self" alt="Pune, India" title="Pune, India" href="#" coords="684,222,24" shape="circle">
                <area target="_self" alt="China" title="China" href="#" coords="726,121,24" shape="circle">
                <area target="_self" alt="Singapore" title="Singapore" href="#" coords="772,289,24" shape="circle">
                <area target="_self" alt="Australia" title="Australia" href="#" coords="853,373,24" shape="circle">
                <area target="_self" alt="USA" title="USA" href="#" coords="137,162,24" shape="circle">
                <area target="_self" alt="Canada" title="Canada" href="#" coords="151,108,24" shape="circle">
                <area target="_self" alt="UK" title="UK" href="#" coords="445,112,24" shape="circle">
            </map>

            <span class="space30"></span>
            <p class="regular colorSec lineHt">IDSS “Globally Optimized” process is defined as Best Practices, Best Processes, Best People, Best Price, regardless of location. We globally optimize each project based on the customers requirements, processes, procedures and technology. </p>
            <span class="space30"></span>
        </div>
    </div>
    <span class="space30"></span>
    <!-- News and Career start -->
    <div class="width100">
        <div class="col_1140">
            <div class="col_2_3">
                <div class="pad_15">
                    <h2 class="large colorPrime">Latest News</h2>
                    <span class="space30"></span>
                    <div id="news-container">
                        <ul>
                            <%=newsStr %>
                        </ul>
                    </div>
                    
                    <%--<div class="newsImg">
                        <img src="images/cad-news.jpg" alt="IDSS CAD News" class="imgZoom" />
                    </div>
                    <div class="newsBox">
                        <a href="news.aspx#1" class="colorBlack medium txtDecNone">CAD services will certainly make your work process smoother</a>
                        <span class="space10"></span>
                        <p class="newsText">And of course, outsourcing of your CAD services is going to affect the morale of your staff and personnel. So before your go ahead with outsourcing your CAD services, think about how you could re-organize and .</p>
                    </div>
                          
                    <div class="float_clear"></div>--%>
                </div>
            </div>
            <div class="col_1_3 ">
                <div class="pad_15">
                    <h2 class="large colorPrime">Career Opprtunities</h2>
                    <span class="space30"></span>
                    <a href="career-intro.aspx"><img src="images/career.jpg" title="Apply Online" alt="Career with IDSS Global" class="width100 imgZoom" /></a>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space50"></span>
        </div>
    </div>
    <!-- News and Career end -->
    <div class="width100">
        <div class="col_1140">
            <%--<span class="space30"></span>
            <span class="space30"></span>--%>
            <div class="col_1_3">
                <div class="pad_15">
                    <div class="posRelative">
                        <span class="patchSpan">LPSD</span>
                        <a href="lpsd.aspx">
                            <img src="images/lpsd-3-1.jpg" alt="IDSS - LPSD Project"  class="width100 imgZoom"/>
                        </a>
                        <span class="space10"></span>
                        <a href="lpsd.aspx" class="anch-3-1" >Know more about Lightning Protection System Design</a>
                    </div>
                </div>
            </div>
            <div class="col_1_3">
                <div class="pad_15">
                    <div class="posRelative">
                        <span class="patchSpan">PROJECTS</span>
                        <a href="services.aspx">
                            <img src="images/projects-3-1.jpg" alt="IDSS Projects" class="width100 imgZoom" />
                        </a>
                        <span class="space10"></span>
                        <a href="services.aspx" class="anch-3-1" >Know more about our recent Projects</a>
                    </div>
                </div>
            </div>
            <div class="col_1_3">
                <div class="pad_15">
                    <div class="posRelative">
                        <span class="patchSpan">PEOPLE</span>
                        <a href="testimonials.aspx">
                            <img src="images/people-3-1.jpg" alt="IDSS Testimonials" class="width100 imgZoom" />
                        </a>
                        <span class="space10"></span>
                        <a href="testimonials.aspx" class="anch-3-1" >Know what people say about us</a>
                    </div>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>
        <span class="space30"></span>
    </div>


    <div class="liner themeBGPrime"></div>
    <!-- footer start -->
    <div class="width100">
        <div class="footerBg">
            <div class="col_1140 txtCenter">
                <span class="space20"></span>
                <img src="images/idss-logo-trans.png" alt="IDSS Global" class="footLogo"/>
                <ul class="footerNav">
                    <li><a href="about-us.aspx" class="bold">About Us</a></li>
                    <li><a href="services.aspx" class="bold">Services</a></li>
                    <li><a href="projects.aspx" class="bold">Portfolio</a></li>
                    <li><a href="news" class="bold">News</a></li>
                    <li><a href="partner-with-us" class="bold">Partner With Us</a></li>
                    <li><a href="career-intro.aspx" class="bold">Career</a></li>
                    <li><a href="contact-us.aspx" class="bold">Contact Us</a></li>
                    <li><a href="disclaimer.aspx" class="bold">Disclaimer</a></li>
                    <li><a href="privacy-policy.aspx" class="bold">Privacy Policy</a></li>
                </ul>
                
                <!--
                <span class="space10"></span>
                <a href="#" target="_blank" class="ft_fb mrg_r_15" ></a>
                <a href="#" target="_blank" class="ft_tw mrg_r_15"></a>
                <a href="#" target="_blank" class="ft_lin"></a>
                -->
                
                <span class="colorBlack">IDSS Global &copy; 2010<script type="text/javascript">new Date().getFullYear() > 2010 && document.write("-" + new Date().getFullYear());</script>. All Rights Reserved</span>
                <!-- 
                <span class="space20"></span>
                <span class="designCredit" >Website by <a href="http://www.intellect-systems.com" target="_blank" >Intellect Systems</a> </span>
                -->
                <span class="space10"></span>
            </div>
        </div>
    </div>
    <!-- footer Ends -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navigationBtn').click(function () {
                $(this).toggleClass('open');
                $("#topNav").slideToggle("2000");
            });
        });


        $('#news-container').vTicker({
            speed: 500,
            pause: 3000,
            animation: 'fade',
            mousePause: true,
            height: 250,
            showItems: 1
        });
    </script>  

    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5b83c4dbf31d0f771d842af7/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>
</html>
