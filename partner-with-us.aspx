﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="partner-with-us.aspx.cs" Inherits="partner_with_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>IDSS Global – Leading Engineering Consultants In Pune India</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <!--<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

    <!-- for counters  -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!--<link href="Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
    </script>
    <script src="js/jquery.mb.YTPlayer.js"></script>



    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- Main page css -->
    <link href="css/intro.css" rel="stylesheet" />

    <%-- Tost Notifications --%>
    <link href="css/toastr.css" rel="stylesheet" />
    <script src="js/toastr.js"></script>

    <script type="text/javascript">
        function TostTrigger(EventName, MsgText) {
            // code to be executed
            Command: toastr[EventName](MsgText)
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": false,
                "positionClass": "toast-top-full-width",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "slideDown",
                "hideMethod": "fadeOut"
            }

        }
    </script>

     <script type="text/javascript">
         var onloadCallback = function () {
             grecaptcha.render('recaptcha', {
                 'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'
             });
         };
     </script>


</head>
<body>
    <div class="popup text-center">
        <div class="p-2">
            <span class="live">Live<span class="chat colorBlack">Chat</span></span><br />
            <span class="space15"></span>
            <div class="float-end">
                <a href="https://chatwith.io/instagram/idss-global" target="_blank" title="Contact us on Whatsapp" target="_blank"><img src="images/icons/whatsapp-(3).png" /></a>
                <a href="https://join.skype.com/invite/tePhIgOWqj6m" title="Contact us on Skype" target="_blank"><img src="images/icons/skype-(2).png" /></a>

                <!--<a href="https://wa.me/9960900134?text=If%20you%20need%20urgent%20support%20chat%20with%20experts" title="Contact us on Whatsapp" target="_blank"><img src="images/icons/whatsapp.png" /></a>-->
                <span class="space10"></span>
            </div>
        </div>
    </div>

    <!--Header Satrt-->
    <section id="header">
        <div class="container-fluid pt-2 pb-2">
            <div class="float-start">
                <a href="tel:+91-9960900134" class="indianFlag Arialfont text-decoration-none colorWhite">+91-9960900134</a>
                <a href="tel:+1(347)408-1246 " class="usasFlag Arialfont text-decoration-none colorWhite">+1(347)408-1246 </a>
            </div>

            <!--<span class="anchUS">San Francisco, CA, USA</span>
            <a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="Socialanch Facebookico" target="_blank" title="Facebook: IDSS Global"></a>
            <a href="https://www.linkedin.com/company/idss-global/" class="Socialanch LinkedInico" target="_blank" title="LinkedIn: IDSS Global"></a>
            <a href="https://twitter.com/GlobalIdss" class="Socialanch Twitterico" target="_blank" title="Twitter: IDSS Global"></a>-->

            <div class="float-end" id="contact">
                <span class="follow colorWhite">Follows Us:</span>
                <a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="Socialanch Facebookico" target="_blank" title="Facebook: IDSS Global"></a>
                <a href="https://www.linkedin.com/company/idss-global/" class="Socialanch LinkedInico" target="_blank" title="LinkedIn: IDSS Global"></a>
                <a href="https://twitter.com/GlobalIdss" class="Socialanch Twitterico" target="_blank" title="Twitter: IDSS Global"></a>
                <a href="#enquiry" class="btnquote text-decoration-none">Get Quote</a>
                <a href="#" class="email text-decoration-none colorWhite">Email:-info@idssglobal.com</a>
                <span class="space5"></span>
            </div>


            <%-- Mobile device --%>
            <div class="float-end" id="mobcontact">
                <%--<span class="follow colorWhite">Follows Us:</span>--%>
                <%--<span class="colorWhite semiBold regular usasFlag" style="font-size:1.2em">+1(347)408-1246 </span>--%>
                <a href="tel:+1(347)408-1246 " class="usasFlagmob Arialfont text-decoration-none colorWhite">+1(347)408-1246 </a>
                <%--<a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="Socialanch Facebookico" target="_blank" title="Facebook: IDSS Global"></a>
                <a href="https://www.linkedin.com/company/idss-global/" class="Socialanch LinkedInico" target="_blank" title="LinkedIn: IDSS Global"></a>
                <a href="https://twitter.com/GlobalIdss" class="Socialanch Twitterico" target="_blank" title="Twitter: IDSS Global"></a>--%>
                <a href="#enquiry" class="btnquote text-decoration-none">Get Quote</a>
                <a href="#" class="email text-decoration-none colorWhite">Email:-info@idssglobal.com</a>
                <span class="space5"></span>
            </div>


        </div>
        <div class="clearfix"></div>
        <div class="headerline"></div>
    </section>


    <!-- navigations -->
    <section id="navrbar">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-xl">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img alt="" src="images/idss-logo-blck.png" class="lg" />
                        <img alt="" src="images/idss-logo-name-white.png" class="lgName" />
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <img src="images/icons/social/nav-btn-color.png" />
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <!-- Navigation starts -->
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Default.aspx">Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link subnav" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    About Us
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="about-us.aspx">Overview</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="other-facts.aspx">Our Strength</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="our-team.aspx">IDSS Team</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="testimonials.aspx">Testimonials</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link subnav" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Services
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="services">Overview</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="civil-engineering-services">Civil Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="mechanical-engineering-services">Mechanical Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="architect-services">Architectural</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="lightning-protection-system-design">Lightning Protection System Design</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="geotechnical-engineering-design">Geotechnical Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="information-technology">Information Technology</a></li>
                                </ul>
                            </li>

                            <!--<li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                   data-mdb-toggle="dropdown" aria-expanded="false">
                                    Portfolio
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="#">Action</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">Another action</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">
                                            Submenu &raquo;
                                        </a>
                                        <ul class="dropdown-menu dropdown-submenu">
                                            <li>
                                                <a class="dropdown-item" href="#">Submenu item 1</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="#">Submenu item 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>-->

                            <li class="nav-item dropdown">
                                <a class="nav-link subnav" role="button" href="#" id="navbarNavDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                    Portfolio
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarNavDropdown">
                                    <li>
                                        <a class=" dropdown-item" href="https://www.idssglobal.com/projects/indian/all-projects-7">
                                            Indian Projects
                                        </a>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">
                                            International Projects &raquo;
                                        </a>
                                        <ul class="dropdown-menu dropdown-submenu">
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/civil-engineering-1">Civil Engineering</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/mechanical-engineering-2">Mechanical Engineering</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/architectural-3">Architectural</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/lightning-protection-system-design-4">Lighting Protection System Design</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/geo-technical-engineering-5">Geo-technical Engineering</a>
                                            </li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="https://www.idssglobal.com/projects/international/information-technology-6">Information Technology</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link subnav" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Info Center
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="certification.aspx">Certification</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="news">News Events</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="frequently-asked-questions.aspx">FAQ</a></li>
                                </ul>
                            </li>
                            <%--<li class="nav-item">
                                <a class="nav-link" href="#">Enquiry</a>
                            </li>--%>
                            <li class="nav-item dropdown">
                                <a class="nav-link subnav" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Career
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="career-intro.aspx">Introduction</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="career-apply.aspx">Apply Online</a></li>

                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact-us.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </section>

    <!-- banner start -->
    <section id="video">
        <div class="">
        <div class="video-container videobg">
            <div class="video-box">
                <div class="inner-video" id="v-pl">
                    <div id="player" class="player dis-block" data-property="{videoURL:'https://www.youtube.com/watch?v=wzPUYk2maj8',containment:'#v-pl', autoplay: true, showControls: false, mute:true, loop:true, opacity:1}"></div>
                </div>
                <%--<img src="images/img-video.jpg" class="width100" />--%>
                <div class="YTPOverlay">
                    <div class="container text-center d-flex align-items-center justify-content-center" style="height:500px">
                        
                        <div id="carouselExampleFade" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active animate__animated animate__pulse w-100">
                                    <h3 class="colorWhite large m-0 animate__animated animate__backInLeft">Your Reliable Partner for </h3>
                                    <h1 class="semiBold xx-large colorWhite m-0 animate__animated animate__backInRight">Architecture, Civil, Mechanical, </h1>
                                    <div class="colorWhite m-0 fontRegular regular animate__animated animate__flash">2D/3D CAD & BIM Services.</div>
                                </div>
                                <div class="carousel-item animate__animated animate__pulse w-100">
                                    <h3 class="colorWhite large m-0 animate__animated animate__backInLeft">Outsource your</h3>
                                    <h1 class="semiBold xx-large colorWhite m-0 animate__animated animate__backInRight">CAD Needs</h1>
                                    <div class="colorWhite m-0 fontRegular regular animate__animated animate__flash">We Are a Leading and Highly Skilled Team of Expert CAD Engineers for All Your Engineering Services Needs.</div>
                                </div>
                                <div class="carousel-item animate__animated animate__pulse w-100">
                                    <h3 class="colorWhite large m-0 animate__animated animate__backInLeft">Welcome To The</h3>
                                    <h1 class="semiBold xx-large colorWhite m-0 animate__animated animate__backInRight">House Of CAD Engineers</h1>
                                    <div class="colorWhite m-0 fontRegular regular animate__animated animate__flash">We Are a Leading and Highly Skilled Team of Expert CAD Engineers for All Your Engineering Services Needs. .</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
        <span class="space60"></span>
    </section>

    <!--<section class="video-container">
        <div class="">
            <video class="w-100" src="Video/corporate-video.mp4" autoplay loop playsinline muted></video>
            <div class="YTPOverlay">
                <div class="callout">
                    <div class="container">
                        <div id="carouselExampleFade" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <h3 class="colorWhite large m-0" data-aos="fade-down" data-aos-duration="1000">Suited For All</h3>
                                    <h1 class="semiBold xx-large colorWhite m-0">Idss Global Services</h1>
                                    <div class="colorWhite m-0 fontRegular regular" data-aos="fade-up" data-aos-duration="1000">Our professional and experienced team will get all your CAD requirements fully covered.</div>
                                </div>
                                <div class="carousel-item">
                                    <h3 class="colorWhite large m-0" data-aos="fade-down" data-aos-duration="1000">Welcome To The</h3>
                                    <h1 class="semiBold xx-large colorWhite m-0">House Of CAD Engineers</h1>
                                    <div class="colorWhite m-0 fontRegular regular" data-aos="fade-up" data-aos-duration="1000">We Are a Leading and Highly Skilled Team of Expert CAD Engineers for All Your Engineering Services Needs. .</div>
                                </div>
                                <div class="carousel-item">
                                    <h3 class="colorWhite large m-0" data-aos="fade-down" data-aos-duration="1000">Outsource your</h3>
                                    <h1 class="semiBold xx-large colorWhite m-0">CAD Needs</h1>
                                    <div class="colorWhite m-0 fontRegular regular" data-aos="fade-up" data-aos-duration="1000">We Are a Leading and Highly Skilled Team of Expert CAD Engineers for All Your Engineering Services Needs. .</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- banner ends -->
    <!-- About starts -->
    <section id="about">
        <div class="container">
            <div class="text-center">
                <h2 class="semiBold medium m-0 text-uppercase text-center">Award-winning Engineering Solution Firm </h2>
                <span class="shorline"></span>
            </div>
            <span class="space40"></span>
            <div class="row">
                <div class="col-md-6">
                    <p class="light fontRegular clrdarkgrey line-ht-7">We at 'IDSS Global' provide 'Engineering Services' throughout the globe. We are situated in the City of 'Pune' which is in Western Maharashtra, India. <span class="space10"></span>Our clientele are mainly in US, Canada, UK & Asia-Pacific region. Being an outsourcing company  for 32 international & 4 domestic  clients, we continuously starve for quality projects. Also, our clients get benefitted by less cost as compared to in-house making cost.<span class="space10"></span>Our domain basically is in Lightning Protection  AEC & EPC industries. The sector of the construction industry that provides the services on the architectural design, engineering design & construction services. This sectior being very active in the adoption of information, communication & technology, we at IDSS global continuously thrive for betterment of the industry. </p>
                </div>
                <div class="col-md-6">
                    <img src="images/About us.jpg" class="img-fluid w-100" />
                </div>
                <!--<p class="light fontRegular clrdarkgrey line-ht-7"><span class="colorBlack fontRegular regular">IDSS Global Is A ISO 9001: 2015 Certified Engineering Company</span> registered under Indian Government Act with Reg No: PIMPARI/II/21002 This is an Engineering Company with offices in Pune and associates in other key locations. We have working experience in most of US, UK, Europe and Australian proviences. IDSS Global is one of indias leading Engineering outsourcing service provider-over the last few years, we have developed with a number of global firms to setup remote studios (back office) for our clients and thereby mastered the art of Engineering services and its management.</p>-->
            </div>
        </div>
    </section>
    <span class="space40"></span>
    <!-- About ends -->

    <span class="space40"></span>
    <section>
    </section>

    <!-- why choose us start -->
    <section id="whyus">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="text-center">
                    <h2 class="text-uppercase semiBold medium m-0">Why IDSS Global</h2>
                    <span class="shorline m-0"></span>
                    <span class="space20"></span>
                    <p class="fontRegular regular line-ht-5">Our proven methods and workflow allow us to work seamlessly with your processes. Here are some reasons why our partners and customers love working with us.</p>
                    <span class="space30"></span>
                </div>
                <div class="col-sm-3">
                    <div class="iconborder iconbg">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <!--<img src="images/icons/productivity.png" class="img-fluid showme" />-->
                            <img src="images/icons/productivity-white.png" class="img-fluid" />
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium colorPrime">World Class Productivity</span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">IDSS Global hourly productivity is as good as US & Canadian firms – often better.</p>
                </div>
                <!--<div class="col-sm-3">
                    <div class="iconborder">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <img src="images/icons/strategy.png" class="img-fluid showme" />
                            <img src="images/icons/strategy-white.png" class="img-fluid hideme" />
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">End-to-End Solution </span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">We let go your worries through flawless end-to-end execution giving you timely updated.</p>
                </div>-->
                <div class="col-sm-3">
                    <div class="iconborder iconbg">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <!--<img src="images/icons/award.png" class="img-fluid showme" />-->
                            <img src="images/icons/award-white.png" class="img-fluid " />
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium colorPrime">Quality</span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">– Our building reflects the quality and utmost expertise which lasts for many light years.</p>
                </div>
                <div class="col-sm-3">
                    <div class="iconborder iconbg">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <!--<img src="images/icons/budget.png" class="img-fluid showme" />-->
                            <img src="images/icons/budget-white.png" class="img-fluid " />
                        </div>

                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium colorPrime">Budget Friendly </span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">Get a transparent and economical budget ideas without any latter false promises.</p>
                </div>
                <!--<span class="space40"></span>-->
                <div class="col-sm-3">
                    <div class="iconborder iconbg">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <!--<img src="images/icons/fast-delivery.png" class="img-fluid showme" />-->
                            <img src="images/icons/fast-delivery-white.png" class="img-fluid " />
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium colorPrime">Time Delivery </span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">We ensure on-time delivery updating frequent project status meeting the client’s expectation.</p>
                </div>
                <!--<div class="col-sm-3">
                    <div class="iconborder">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <img src="images/icons/package.png" class="img-fluid showme" />
                            <img src="images/icons/package-white.png" class="img-fluid hideme" />
                        </div>

                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">Proven track record</span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5">Proven track record of very strong quality, drawing accuracy to inputs & low revisions.</p>
                </div>-->
                <!--<div class="col-sm-3">
                    <div class="iconborder">
                        <div class="p-3 d-flex align-items-center justify-content-center" style="height:130px;">
                            <img src="images/icons/project-management.png" class="img-fluid showme" />
                            <img src="images/icons/project-management-white.png" class="img-fluid hideme" />
                        </div>

                    </div>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">Adopting new technology </span>
                    <span class="space10"></span>
                    <p class="fontRegular tiny line-ht-5"></p>
                </div>-->
                <!--<div class="col-lg-4">
                    <img src="images/Animated%20Icons/957-team-work-lineal.gif" />
                    <p class="light fontRegular line-ht-5 mt-3">15 Years Experience Team 15 Years Experience Team 15 Years Experience Team</p>
                </div>
                <div class="col-lg-4">
                    <img src="images/Animated%20Icons/472-time-capsule-lineal.gif" />
                    <p class="light fontRegular line-ht-5">Design Ready in 24 hrs, with On Target</p>
                </div>
                <div class="col-lg-4">
                    <img src="images/Animated%20Icons/project-completed.gif" />
                    <p class="light fontRegular line-ht-5">622+ projects completed</p>
                </div>
                <div class="col-lg-4">
                    <img src="images/Animated%20Icons/153-bar-chart-growth-lineal.gif" />
                    <p class="light fontRegular line-ht-5">95% accuracy & efficiency for all engineering services</p>
                </div>
                <div class="col-lg-4">
                    <img src="images/Animated%20Icons/955-demand-lineal.gif" />
                    <p class="light fontRegular line-ht-5">22+ Happy customers from USA, UK  & Canada efficiency for all engineering services</p>
                </div>-->
                <!--<div class="col-md-6 gy-2">
                    <div class="p-4">
                        <div class="absIconlist">
                            <img src="images/icons/experiance.png" />
                        </div>
                        <div class="absIconlistDesc">
                            <div class="pad_TB_10">
                                <span class="fontRegular line-ht-5 small">15 Years Experience Team 15 Years Experience Team 15 Years Experience Team</span>
                            </div>
                        </div>
                        <span class="space30"></span>
                        <div class="clearfix"></div>
                        <div class="absIconlist">
                            <img src="images/icons/design.png" />
                        </div>
                        <div class="absIconlistDesc">
                            <div class="pad_TB_10">
                                <span class="fontRegular line-ht-5 small">Design Ready in 24 hrs, with On Target</span>
                            </div>
                        </div>
                        <span class="space35"></span>
                        <div class="clearfix"></div>
                        <div class="absIconlist">
                            <img src="images/icons/complete.png" />
                        </div>
                        <div class="absIconlistDesc">
                            <div class="pad_TB_10">
                                <span class="fontRegular line-ht-5 small">622+ projects completed</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 gy-2">
                    <div class="p-4">
                        <div class="absIconlist">
                            <img src="images/icons/accuracy.png" />
                        </div>
                        <div class="absIconlistDesc">
                            <div class="pad_TB_10">
                                <span class="fontRegular line-ht-5 small">95% accuracy & efficiency for all engineering services</span>
                            </div>
                        </div>
                        <span class="space30"></span>
                        <div class="clearfix"></div>
                        <div class="absIconlist">
                            <img src="images/icons/happy-customers.png" />
                        </div>
                        <div class="absIconlistDesc">
                            <div class="pad_TB_10">
                                <span class="fontRegular line-ht-5 small">22+ Happy customers from USA, UK  & Canada efficiency for all engineering services</span>
                            </div>
                        </div>
                    </div>
                </div>-->
            </div>
        </div>
    </section>
    <!-- why choose us ends -->
    <span class="space50"></span>
    <section id="experties">
        <div class="container">
            <div class="text-center">
                <h2 class="text-uppercase semiBold medium m-0">Our Expertise</h2>
                <span class="shorline m-0"></span>
            </div>
            <span class="space20"></span>
            <div class="row">
                <div class="col-sm-4 d-flex align-content-stretch">
                    <div class="p-2">
                        <div class="expbgclr">
                            <span class="space15"></span>
                            <div class="p-3">
                                <div class="bgorg rounded">
                                    <div class="p-2">
                                        <span class="space5"></span>
                                        <h2 class="colorWhite semiBold semiMedium text-center fontRegular">Engineering Solution</h2>
                                    </div>
                                </div>
                                <span class="space15"></span>
                                <ul class="bulletlist">
                                    <li class="semiBold regular colorWhite mb-2"><span>&#8250;</span>Civil engineering</li>
                                    <span class="fontRegular colorWhite small">IDSS Global is providing provide Land development design and drafting, Survey drafting, Drafting and detailing, As-built drawings.</span>

                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Mechanical Engineering</li>
                                    <span class="fontRegular colorWhite small">Under Mechanical CAD Services, IDSS Global serves the needs of Mechanical Engineers, Production Engineers, Design Engineers</span>
                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Architectural Services</li>
                                    <span class="fontRegular colorWhite small">Whether large or small, companies like yours face the same problem – time to focus on the differentiators - vision and design.</span>
                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Lightning Protection</li>
                                    <span class="fontRegular colorWhite small">Whether large or small, companies like yourLightning is a capricious, random and unpredictable event. Its' physical characteristics include</span>
                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Geotechnical Engineering</li>
                                    <span class="fontRegular colorWhite small">IDSS develops tailored geotechnical exploration programs in support of each client’s specific project.</span>
                                </ul>
                            </div>
                            <!--<span class="space20"></span>-->
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 d-flex align-content-stretch">
                    <div class="p-2">
                        <div class="expbgclr">
                            <span class="space15"></span>
                            <div class="p-3">
                                <div class="bgorg rounded p-2">
                                    <span class="space5"></span>
                                    <h2 class="colorWhite semiBold semiMedium text-center fontRegular">Contract Staffing Solution </h2>
                                </div>
                                <span class="space15"></span>
                                <ul class="bulletlist">
                                    <li class="semiBold regular colorWhite mb-2"><span>&#8250;</span>Permanent Hiring</li>
                                    <span class="fontRegular colorWhite small">Hire permanent staff, when you have a good, long term visibility. Our team can help finding people with right skills, good cultural fitment and right intention to spend a long stint.</span>

                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Contract Staffing</li>
                                    <span class="fontRegular colorWhite small">At times, you have no visibility beyond a project. Also, you can't wait for potential candidates to serve long notice period. Get people who are available quickly, and start contributing right away.</span>

                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Training</li>
                                    <span class="fontRegular colorWhite small">Our team is continuously combing through the talent pool day in and day out. Let us help you with providing you top class trainers and close the knowledge gap for your organization.</span>

                                    <li class="semiBold regular colorWhite mt-4 mb-2"><span>&#8250;</span>Customized Staffing</li>
                                    <span class="fontRegular colorWhite small">There comes time when standard hiring models may not work. You could need a combination of such models, or beyond. Let's work together to solve your specific problem.</span>

                                </ul>
                            </div>
                            <span class="space35"></span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 d-flex align-content-stretch">
                    <div class="p-2">
                        <div class="expbgclr">
                            <span class="space15"></span>
                            <div class="p-3">
                                <div class="bgorg rounded p-2">
                                    <span class="space5"></span>
                                    <h2 class="colorWhite semiBold semiMedium text-center fontRegular">Software Solution </h2>
                                </div>
                                <span class="space15"></span>
                                <ul class="bulletlist">
                                    <li class="semiBold  colorWhite mb-2"><span>&#8250;</span>Embedded Product Engineering</li>


                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Software Product Engineering</li>


                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Digital Technology</li>


                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Mechanical Product Engineering</li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>After Market Services</li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Oil and gas industry Services Services</li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Banking and Finance Services Services</li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Cyber Security Services Services</li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Automotive and Plant Automation Digital Technology </li>

                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Oracle APEX</li>
                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Web Applications</li>
                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Mobile App Development</li>
                                    <li class="semiBold  colorWhite mt-4 mb-2"><span>&#8250;</span>Cloud Integrations</li>
                                </ul>
                            </div>
                            <span class="space50"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- stast starts -->
    <span class="space50"></span>
    <section id="counter" class="bgstat">
        <span class="space50"></span>
        <div class="container text-center">
            <div class="row" id="counter">
                <div class="col-sm-3 counter-Txt">
                    <div class="bg-white">
                        <div class="p-2">
                            <div class="statBox">
                                <img src="images/icons/working-hours-img.png" />
                                <span class="space5"></span>
                                <span class="count-num" data-count="9876">9600</span>
                                <span class="space5"></span>
                                <p class="light fontRegular">Project Hours</p>
                            </div>
                            <!--<span class="space5"></span>
                            <img src="images/icons/icons8-working-hours-68.png" />
                            <span class="space5"></span>
                            <span class="counter-value semiBold" data-count="9876">9500<sup>+2</sup></span><br />
                            <p class="light fontRegular">Project Hours</p>-->
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 counter-Txt">
                    <div class="bg-white">
                        <div class="p-2">
                            <div class="statBox">
                                <img src="images/icons/icons8-construction-64.png" />
                                <span class="space5"></span>
                                <span class="count-num" data-count="621">500</span>
                                <span class="space5"></span>
                                <p class="light fontRegular">Projects Delivered</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 counter-Txt">
                    <div class="bg-white">
                        <div class="p-2">
                            <div class="statBox">
                                <img src="images/icons/customer-stasisfacion.png" />
                                <span class="space5"></span>
                                <span class="count-num" data-count="32">20</span>
                                <span class="space5"></span>
                                <p class="light fontRegular">Satisfied International Client</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 counter-Txt">
                    <div class="bg-white">
                        <div class="p-2">
                            <div class="statBox">
                                <img src="images/icons/icons8-employee-64.png" />
                                <span class="space5"></span>
                                <span class="count-num" data-count="22">10</span>
                                <span class="space5"></span>
                                <p class="light fontRegular">Engaged Employees</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--</div>-->
        <span class="space50"></span>
    </section>





    <!--<section id="stats" class="bgstat">
        <span class="space60"></span>
        <div class="container">
            <div class="row">
                <div class="four col-md-3 gy-3">
                    <div class="counter-box">
                        <img src="images/icons/social/projecthours.png" />
                        <span class="space20"></span>
                        <span class="counter">9876</span>
                        <span class="space20"></span>
                        <span>Project Hours</span>
                    </div>
                </div>
                <div class="four col-md-3 gy-3">
                    <div class=" counter-box">
                    <img src="images/icons/social/project-delivered.png" />
                    <span class="space20"></span>
                    <span class="counter">621</span>
                    <span class="space20"></span>
                    <span>Projects Delivered</span>
                </div>
                </div>
                <div class="four col-md-3 gy-3">
                    <div class="counter-box">
                        <img src="images/icons/social/satisfied-clients.png" />
                        <span class="space20"></span>
                        <span class="counter">32</span>
                        <span class="space20"></span>
                        <span>Satisfied International Client</span>
                    </div>
                </div>
                <div class="four col-md-3 gy-3">
                    <div class="counter-box">
                        <img src="images/icons/social/engage-employees.png" />
                        <span class="space20"></span>
                        <span class="counter">22</span>
                        <span class="space20"></span>
                        <span>Engaged Employees</span>
                    </div>
                </div>
            </div>
        </div>
        <span class="space60"></span>
    </section>-->
    <span class="space50"></span>
    <!-- stast ends -->
    <!-- services start -->
    <section id="services">
        <div class="container text-center">
            <div class="row d-flex justify-content-center">
                <div class="text-center">
                    <h2 class="text-uppercase semiBold medium m-0">Our Services</h2>
                    <span class="shorline m-0"></span>
                </div>
                <span class="space30"></span>
                <div class="col-lg-4 p-3">
                    <a href="civil-engineering.aspx"><img src="images/civil_ico.png" alt="IDSS - CIVIL ENGINEERING" class="imgZoom disableDrag" /></a>
                    <span class="space15"></span>
                    <a href="civil-engineering.aspx" class="semiBold colorPrime semiMedium text-decoration-none">CIVIL ENGINEERING</a>
                    <span class="space15"></span>
                    <p class="regular lineHt">IDSS Global is providing provide Land development design and drafting, Survey drafting, Drafting and detailing, As-built drawings.</p>
                </div>
                <div class="col-lg-4 p-3">
                    <a href="mechanical-engineering.aspx"><img src="images/mech_ico.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                    <span class="space15"></span>
                    <a href="mechanical-engineering.aspx" class="semiBold colorPrime semiMedium text-decoration-none">MECHANICAL ENGINEERING</a>
                    <span class="space15"></span>
                    <p class="regular lineHt">Under Mechanical CAD Services, IDSS Global serves the needs of Mechanical Engineers, Production Engineers, Design Engineers..</p>
                </div>
                <div class="col-lg-4 p-3">
                    <a href="architect.aspx"><img src="images/arch_ico.png" alt="IDSS - ARCHITECTURAL SERVICES" class="imgZoom" /></a>
                    <span class="space15"></span>
                    <a href="architect.aspx" class="semiBold colorPrime semiMedium text-decoration-none">ARCHITECTURAL SERVICES</a>
                    <span class="space15"></span>
                    <p class="regular lineHt">Whether large or small, companies like yours face the same problem – time to focus on the differentiators - vision and design.</p>
                </div>
                <div class="col-lg-4 p-3">
                    <a href="lpsd.aspx"><img src="images/lightning-protection.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                    <span class="space15"></span>
                    <a href="lpsd.aspx" class="semiBold colorPrime semiMedium text-decoration-none">LIGHTNING PROTECTION</a>
                    <span class="space15"></span>
                    <p class="regular lineHt">Lightning is a capricious, random and unpredictable event. Its' physical characteristics include...</p>
                </div>
                <div class="col-lg-4 p-3">
                    <a href="geotechnical-engineering.aspx"><img src="images/geotechnical-engg.png" alt="IDSS - MECHANICAL ENGINEERING" class="imgZoom" /></a>
                    <span class="space15"></span>
                    <a href="geotechnical-engineering.aspx" class="semiBold colorPrime semiMedium text-decoration-none">GEOTECHNICAL ENGINEERING</a>
                    <span class="space15"></span>
                    <p class="regular lineHt">IDSS develops tailored geotechnical exploration programs in support of each client’s specific project.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- services end -->
    <!-- how we work start -->
    <span class="space50"></span>
    <section id="work">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h2 class="text-uppercase semiBold medium m-0">How We Work</h2>
                    <span class="shorline m-0"></span><br />
                </div>
                <span class="space50"></span>
                <div class="col-sm-6 gy-4" id="step1">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3 ">
                                    <%--<span class="semiBold semiMedium text-uppercase float-end mrg_l">Step<span class="colorPrime">  01</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-right">
                                        Getting input from Client through mail or dedicated server
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 themeBGPrime d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 1</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 gy-4" id="step2">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-4  bgparrotgrn d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 2</span>
                            </div>
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                    <%--<span class="semiBold semiMedium text-uppercase  mrg_l">Step<span class="stepclr2">  02</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-left">
                                        Respective resource allocation <span class="colorWhite">allocation</span>
                                       <%-- Changes/Modifications if required any--%>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 gy-4" id="step3">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                   <%-- <span class="semiBold semiMedium text-uppercase float-end mrg_l">Step<span class="stepclr3">  03</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-right">
                                        Self-checking by the team member to completed work with input
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 bgclrskyblue d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 3</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 gy-4" id="step4">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-4 bgcherypink d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 4</span>
                            </div>
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                   <%-- <span class="semiBold semiMedium text-uppercase mrg_l">Step<span class="stepclr4">  04</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-left">
                                        Changes/Modifications if required any
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6 gy-4" id="step5">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                    <%--<span class="semiBold semiMedium text-uppercase float-end mrg_l">Step<span class="stepclr5">  05</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-right">
                                        Rechecking the updated drawings by dedicated QC member
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 bgmarred d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 5</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 gy-4" id="step6">
                    <div class="workbox">
                        <div class="row">
                            <div class="col-4 bgocenblue d-flex align-items-center justify-content-center" style="height:150px;">
                                <!--<img src="images/icons/stepi-ico.png" />-->
                                <span class="semiBold semiMedium colorWhite text-uppercase">Step 6</span>
                            </div>
                            <div class="col-8 d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                  <%--  <span class="semiBold semiMedium text-uppercase  mrg_l">Step<span class="stepclr6">  06</span></span><br />--%>
                                    <span class="space10"></span>
                                    <p class="fontRegular regular text-left">
                                        Making of final output and sending error free set of drawings to the customer
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="col-lg-3 col-sm-6 gy-3">
                <div class="themeBGPrime">
                    <span class="regular bgorg fontRegular p-2">Step 01</span>
                    <span class="space20"></span>
                    <div class="p-2">
                        <div class="text-center">
                            <p class="colorWhite small fontRegular lh-base">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <img src="images/icons/download.png" class="workimg" />
                            <span class="space20"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 gy-3">
                <div class="themeBGPrime">
                    <span class="regular bgorg fontRegular p-2">Step 02</span>
                    <span class="space20"></span>
                    <div class="p-2">
                        <div class="text-center">
                            <p class="colorWhite small fontRegular lh-base">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <img src="images/icons/download.png" class="workimg" />
                            <span class="space20"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 gy-3">
                <div class="themeBGPrime">
                    <span class="regular bgorg fontRegular p-2">Step 03</span>
                    <span class="space20"></span>
                    <div class="p-2">
                        <div class="text-center">
                            <p class="colorWhite small fontRegular lh-base">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <img src="images/icons/download.png" class="workimg" />
                            <span class="space20"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 gy-3">
                <div class="themeBGPrime">
                    <span class="regular bgorg fontRegular p-2">Step 04</span>
                    <span class="space20"></span>
                    <div class="p-2">
                        <div class="text-center">
                            <p class="colorWhite small fontRegular lh-base">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <img src="images/icons/download.png" class="workimg" />
                            <span class="space20"></span>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>

    </section>
    <!-- how we work end -->
    <!-- BUSINESS MODELS START -->
    <span class="space20"></span>
    <!--<section id="binsmodel">
        <div class="container text-center">
            <div class="row">
                <div class="text-center">
                    <h2 class="text-uppercase semiBold medium m-0">BUSINESS MODELS</h2>
                    <span class="shorline m-0"></span><br />
                    <span class="clrdarkgrey semiMedium">Customer Enagement Modes</span>
                    <span class="space20"></span>
                </div>
                <div class="col-lg-3 col-sm-6 col-xs-6 p-2">
                    <img src="images/icons/project-mode.png" />
                    <span class="space15"></span>
                    <h3 class="lightblu semiBold semiMedium mb-2">Project Mode</h3>
                    <p class="clrdarkgrey small fontRegular lh-base">Specific set of deliverables/ milestones project manager</p>
                </div>
                <div class="col-lg-3 col-sm-6 p-2">
                    <img src="images/icons/project-mode.png" />
                    <span class="space15"></span>
                    <h3 class="lightblu semiBold semiMedium mb-2">Project Mode</h3>
                    <p class="clrdarkgrey small fontRegular lh-base">Specific set of deliverables/ milestones project manager</p>
                </div>
                <div class="col-lg-3 col-sm-6 p-2">
                    <img src="images/icons/project-mode.png" />
                    <span class="space15"></span>
                    <h3 class="lightblu semiBold semiMedium mb-2">Project Mode</h3>
                    <p class="clrdarkgrey small fontRegular lh-base">Specific set of deliverables/ milestones project manager</p>
                </div>
                <div class="col-lg-3 col-sm-6 p-2">
                    <img src="images/icons/project-mode.png" />
                    <span class="space15"></span>
                    <h3 class="lightblu semiBold semiMedium mb-2">Project Mode</h3>
                    <p class="clrdarkgrey small fontRegular lh-base">Specific set of deliverables/ milestones project manager</p>
                </div>
            </div>
        </div>
    </section>-->
    <!-- BUSINESS MODELS END -->
    <!-- Project start -->
    <span class="space60"></span>
    <section id="project" class="menu">
        <div class="container text-center">
            <div class="row p-4">
                <div class="text-center">
                    <h2 class="text-uppercase semiBold medium m-0">Projects</h2>
                    <span class="shorline m-0"></span><br />
                </div>
                <span class="space30"></span>

                <!--<ul class="nav nav-tabs d-flex justify-content-center">

                    <li class="nav-item">
                        <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#allprojects">
                            <h4 class="fontRegular semiBold border p-2">All</h4>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#civileng">
                            <h4 class="fontRegular semiBold border p-2">Civil Enginering</h4>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#mecheng">
                            <h4 class="fontRegular semiBold border p-2">Mechanical Enginering</h4>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#architech">
                            <h4 class="fontRegular semiBold border p-2">Architectural</h4>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#lightprosys">
                            <h4 class="fontRegular semiBold border p-2">Lightning Protection System Design</h4>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#geotecheng">
                            <h4 class="fontRegular semiBold border p-2 bgact">Geo-technical Enginering</h4>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#infotech">
                            <h4 class="fontRegular semiBold border p-2">Information Techonology</h4>
                        </a>
                    </li>
                </ul>-->
                <!--<div class="projectline"></div>-->
                <div class="tab-content">

                    <div class="tab-pane active show" id="allprojects">

                        <div class="tab-header text-center">
                            <span class="space30"></span>
                        </div>

                        <div class="row gy-5 justify-content-center">
                            <%--<div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div>
                                    <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/indian/all-projects-7'">
                                        <img src="images/projects/indian-projects-cover-img.jpg" class="img-fluid" />
                                        <div class="butTextWrap">
                                            <div class="butHeading">
                                                Indian Projects
                                                <br />
                                                <div class="butText">For More Projects</div>
                                            </div>
                                            <p>
                                                <a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/indian/all-projects-7">View More</a>


                                                <!--<div class="text-center">
                                                                                                    <a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/indian/all-projects-7"><img src="images/icons/zoom-in.png" class="img-fluid" /></a>
                                                </div>-->
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>



                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/civil-engineering-1'">
                                    <img src="images/projects/civil-eng-cover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Civil Engineering
                                            <br />
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/civil-engineering-1">View More</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/mechanical-engineering-2'">
                                    <img src="images/projects/mech-projcover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Mechanical Engineering
                                            <br />
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/mechanical-engineering-2">View More</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/architectural-3'">
                                    <img src="images/projects/archi-proj-cover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Architectural
                                            <br />
                                            <!--<span class="space20"></span>-->
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/architectural-3"> View More</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/lightning-protection-system-design-4'">
                                    <img src="images/projects/lightnig-protection-cover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Lightning Protection System
                                            <br />
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/lightning-protection-system-design-4">View More</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/geo-technical-engineering-5'">
                                    <img src="images/projects/geo-technical-cover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Geo-technical Engineering
                                            <br />
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/geo-technical-engineering-5">View More</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3">
                                <div class="butFrame" onclick="window.location='https://www.idssglobal.com/projects/international/information-technology-6'">
                                    <img src="images/projects/informtion-techono-cover-img.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Information Techonology
                                            <br />
                                            <div class="butText">For More Projects</div>
                                        </div>
                                        <p><a class="text-decoration-none colorWhite" href="https://www.idssglobal.com/projects/international/information-technology-6">View More</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--<div class="tab-pane" id="civileng">

                        <div class="tab-header text-center">
                            <span class="space30"></span>
                        </div>

                        <div class="row gy-5">
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!--<div class="tab-pane animate__animated animate__fadeIn" data-aos="fade-up" id="mecheng">

                        <div class="tab-header text-center">
                            <span class="space30"></span>
                        </div>

                        <div class="row gy-5">
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>-->
                    <!--<div class="tab-pane animate__animated animate__fadeIn" id="architech">

                        <div class="tab-header text-center">
                            <span class="space30"></span>
                        </div>

                        <div class="row gy-5">
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!--<div class="tab-pane animate__animated animate__fadeIn" id="lightprosys">

                        <div class="tab-header text-center">
                            <span class="space30"></span>
                        </div>

                        <div class="row gy-5">
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 gy-3 animate__animated animate__zoomIn">
                                <div class="butFrame" onclick="window.location='#'">
                                    <img src="images/sidebar-enquiry-idss-1.jpg" class="img-fluid" />
                                    <div class="butTextWrap">
                                        <div class="butHeading">
                                            Heading
                                            <br />
                                            <div class="butText">Sub Heading</div>
                                        </div>
                                        <p>Read More...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
    </section>
    <span class="space60"></span>
    <!-- Project end -->
    <!-- Testimonials start -->
    <section id="testimonials" class="bgTestimonial">
        <span class="space50"></span>
        <div class="container text-center">
            <div class="row">
                <div class="text-center">
                    <span class="regular fontRegular clrdarkgrey colorWhite text-uppercase">This Is What our customers says</span>
                    <span class="space30"></span>
                    <h2 class="text-uppercase semiBold large m-0 colorWhite">Clients Testimonials</h2>
                    <span class="testshorline m-0"></span><br />
                    <span class="space25"></span>
                </div>
                <span class="space40"></span>

                <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>-->
                            <!--<span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> I have been very pleased with your speed, accuracy, knowledge and the extremely good turnaround which I have gotten on all my work, and, of course, I have found it very cost effective as well as a great pleasure to work with your very professional staff.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Pete Yates, <span>Manager</span></span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>
                        <div class="carousel-item">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>
                            <span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> IDSS team is accurate, fast, great communicators, willing to go the extra mile, and are a pleasure to deal with. I am very happy with the service I receive.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Eden Wright, <span>CEO</span> </span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>
                        <div class="carousel-item">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>
                            <span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> Thank you for your eagerness to make progress on these drawings. I appreciate your dedication to this project very much.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Bryson Tucker, <span>Development Officer</span></span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>

                        <div class="carousel-item">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>
                            <span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> IDSS team is accurate, fast, great communicators, willing to go the extra mile, and are a pleasure to deal with. I am very happy with the service I receive.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Eden Wright, <span>CEO</span> </span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>

                        <div class="carousel-item">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>
                            <span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> Thank you! Everything is always done exactly as I see it and I just want to say thank you for always doing a terrific and accurate job.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Julia Grahn, <span>PM</span> </span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>

                        <div class="carousel-item">
                            <!--<div class="text-center">
                                <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                            </div>
                            <span class="space30"></span>-->
                            <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> Please pass our appreciation to the team for completing the details package for Oakland Park so promptly. We will be able to complete the package and present it to our clients on time, without the embarrassment of late delivery.<span class="regular">&#34;</span></p>
                            <span class="space30"></span>
                            <span class="semiBold semiMedium clroreange">Eden Anderson, <span>Technical Assistant</span> </span>
                            <!--<span class="space10"></span>
                            <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->

                        </div>

                    </div>
                </div>
                <!--<div class="text-center">
                    <img src="images/deepali-yadav.png" class="img-fluid testimg" />
                </div>
                    <span class="space30"></span>
                    <p class="fontRegular light colorWhite line-ht-5"><span>&#34;</span> I have been working with Primaverse for my AutoCAD assignments for a year now. The attention to detail and prompt completion of project is appreciated. The staff communicates well and tackles all projects with professional integrity. The staff also takes ownership of each project like it was their own. I am happy with the quality of work and their professional caring attitude.<span class="regular">&#34;</span></p>
                    <span class="space30"></span>
                <span class="semiBold semiMedium clroreange">Pallavi Dhadake</span>
                <span class="space10"></span>
                <span class="semiBold regular colorPrime">BARN Design and Engineering</span>-->
                <!--<div class="col-sm-6 p-4">
                    <img src="images/icons/quote-left.png" class="float-end testquote" />
                    <div class="testbox boxshadow">
                        <div class="p-4">
                            <span class="space15"></span>
                            <p class="fontRegular small lh-base clrdarkgrey mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                            <span class="fontRegular semiBold regular">Owner Of Leading Land Surveying Firm In Canda</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 p-4">
                    <img src="images/icons/quote-left.png" class="float-end testquote" />
                    <div class="testbox boxshadow">
                        <div class="p-4">
                            <span class="space15"></span>
                            <p class="fontRegular small lh-base clrdarkgrey mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                            <span class="fontRegular semiBold regular">Owner Of Leading Land Surveying Firm In Canda</span>
                        </div>
                    </div>
                </div>-->
            </div>
        </div>
        <span class="space50"></span>
    </section>

    <!-- Testimonials end -->
    <!-- quote strat -->
    <!--<section id="quote">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="p-3">
                        <span class="space10"></span>
                        <p class="fontRegular semiMedium clrdarkgrey mt-5"><span class="colorPrime">IDSS “Globally Optimized”</span>process is defined as Best Practices, Best Processes, Best People, Best Price, regardless of location. We globally optimize each project based on the customers requirements, processes, procedures and technology.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3">
                        <img src="images/Animated%20Icons/27-globe-flat.gif" class="img-fluid" />
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- quote end -->
    <!-- enquiry form strat -->
    <span class="space50"></span>
    <section id="enquiry">
        <div class="text-center">
            <h2 class="text-uppercase semiBold medium m-0">Send Enquiry</h2>
            <span class="shorline m-0"></span><br />
        </div>
        <span class="space30"></span>
        <div class="container iconbg rounded-4 shadow">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="col-md-5">
                    <div class="p-4">
                        <span class="fontRegular regular semiBold" style="color: #032e45; ">Reach out to us for the best possible solutions</span>
                        <span class="space15"></span>
                        <span class="extra-large semiBold textshadow">You ask</span><br />
                        <span class="extra-large bold textshadow" style="color: #ECBE13">We Deliver</span>
                        <span class="space15"></span>
                        <p class="fontRegular clrdarkgrey bold" style="color: #032e45;">What Services are you looking for?<span class="space10"></span><span class="fontRegular  line-ht-5 colorBlack"> Please fill the form and our technical experts will get in touch with you within next 24 hrs</span></p>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="p-4">
                        <form runat="server">
                            <div><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager></div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
                <ContentTemplate>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Your Name <span class="colorred">*</span></label>
                                     <asp:TextBox ID="txtName"  class="conTextBox" placeholder="Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Organisation <span class="colorred">*</span></label>
                                     <asp:TextBox ID="txtOrgnisation"  class="conTextBox" placeholder="Organisation Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Email <span class="colorred">*</span></label>
                                    <asp:TextBox ID="txtEmail"  class="conTextBox" placeholder="Email" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Phone</label>
                                    <asp:TextBox ID="txtPhone"  class="conTextBox" placeholder="With Country Code" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="">
                                    <label for="exampleFormControlSelect1">Services <span class="colorred">*</span></label>
                                    <asp:DropDownList ID="ddrServices" CssClass="conTextBox" runat="server">
                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">Civil Engineering</asp:ListItem>
                                        <asp:ListItem Value="2">Mechanical Engineering</asp:ListItem>
                                        <asp:ListItem Value="3">Architectural</asp:ListItem>
                                        <asp:ListItem Value="4">Lightning Protection System Design</asp:ListItem>
                                        <asp:ListItem Value="5">Geotechnical Engineering</asp:ListItem>
                                        <asp:ListItem Value="6">Information Technology</asp:ListItem>
                                    </asp:DropDownList>
                                    <%--<select class="conTextBox" id="exampleFormControlSelect1">
                                        <option>Civil Engineering</option>
                                        <option>Mechanical Engineering</option>
                                        <option>Architectural</option>
                                        <option>Lightning Protection System Design</option>
                                        <option>Geotechnical Engineering</option>
                                        <option>Information Technology</option>
                                    </select>--%>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress2">Message</label>
                                <asp:TextBox ID="txtMsg"  class="conTextBox" TextMode="MultiLine" Height="150" placeholder="Message" runat="server"></asp:TextBox>
                            </div>

                    <div class="form-group">
                        <div id="recaptcha" style="transform: scale(0.77); -webkit-transform: scale(0.77); transform-origin: 0 0; -webkit-transform-origin: 0 0;"></div>
                        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                    </div>
                            <%--<button type="submit" class="buttonForm text-uppercase">Submit</button>--%>
                    <asp:Button ID="btnSubmit" CssClass="buttonForm text-uppercase" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
                        
                        </ContentTemplate>
            </asp:UpdatePanel> 
                        </form>
                    </div>
                </div>

            </div>
            <spann class="space30"></spann>
        </div>
    </section>
    <span class="space50"></span>
    <!-- enquiry form end -->

   <%-- </section>--%>
   

    <!-- footer starts -->
    <section id="footer" class="footerBg">
        <div class="container text-center">
            <span class="space20"></span>
            <img src="images/idss-logo-trans.png" alt="IDSS Global" class="footLogo" />
            <ul class="footerNav">
                <li><a href="about-us.aspx" class="bold">About Us</a></li>
                <li><a href="services.aspx" class="bold">Services</a></li>
                <li><a href="projects.aspx" class="bold">Portfolio</a></li>
                <li><a href="news" class="bold">News</a></li>
                <li><a href="#enquiry" class="bold">Enquiry</a></li>
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

            <span class="colorBlack">
                IDSS Global &copy; 2010
                <script type="text/javascript">new Date().getFullYear() > 2010 && document.write("-" + new Date().getFullYear());</script>. All Rights Reserved
            </span>
            <!--
            <span class="space20"></span>
            <span class="designCredit" >Website by <a href="http://www.intellect-systems.com" target="_blank" >Intellect Systems</a> </span>
            -->
            <span class="space10"></span>
        </div>
        <!--<span class="space20"></span>
        <div class="container-fluid">
            <span class="small fontRegular colorWhite">&#169; Copyright 2010-2022. All Rights Reserved by <a href="#" class="text-decoration-none idds colorPrime">IDDS Global</a></span>-->
        <!--<span class="colorWhite intellect">Website Developed By</span><a href="#" class="themeClrBlue text-decoration-none">Intellect System</a>-->
        <!--<span id="fcomnm" class="small fontRegular colorWhite float-end">International Design &#38; Software Solutions</span>
        </div>
        <span class="space20"></span>-->
    </section>
    <!-- footer ends -->

    <script>
        AOS.init();
    </script>

    <!--<script type="text/javascript">
        $(document).ready(function () {
            $('.counter').each(function () {
                $(this).prop('counter', 100).animate({
                    Counter: $(this).text()
                }, {
                    duration: 3000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });

            });

        });
    </script>-->
    <!--<script>
        var a = 0;
        $(window).scroll(function () {

            var oTop = $('#counter').offset().top - window.innerHeight;
            if (a == 0 && $(window).scrollTop() > oTop) {
                $('.counter-value').each(function () {
                    var $this = $(this),
                      countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    },

                      {

                          duration: 3000,
                          easing: 'swing',
                          step: function () {
                              $this.text(Math.floor(this.countNum));
                          },
                          complete: function () {
                              $this.text(this.countNum);

                          }

                      });
                });
                a = 1;
            }

        });
    </script>-->

    <script>
        var a = 0;
        $(window).scroll(function () {

            var oTop = $('#counter').offset().top - window.innerHeight;
            if (a == 0 && $(window).scrollTop() > oTop) {
                $('.count-num').each(function () {
                    var $this = $(this),
                        countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    },

                        {

                            duration: 2000,
                            easing: 'swing',
                            step: function () {
                                $this.text(Math.floor(this.countNum));
                            },
                            complete: function () {
                                $this.text(this.countNum);
                                //alert('finished');
                            }

                        });
                });
                a = 1;
            }

        });
    </script>


   
    <script type="text/javascript">
        $('document').ready(function () {
            if ($(".player").length > 0) {
                $(".player").mb_YTPlayer();
            }
        });
    </script>

    <script>
        $(function () {
            //alert("function called");
            // Check the initial Poistion of the Sticky Header
            var stickyHeaderTop = $('#navrbar').offset().top;

            $(window).scroll(function () {
                //alert("alert1");
                if ($(window).scrollTop() > stickyHeaderTop) {
                    $('#navrbar').css({ position: 'fixed', top: '0px' });
                    $('#navrbar').css('display', 'block');
                }
                else {
                    $('#navrbar').css({ position: 'sticky', top: '0px' });
                    $('#navrbar').css('display', 'block');
                }
            });
        });
    </script>
   
</body>
</html>
