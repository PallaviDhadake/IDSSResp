<%@ Page Language="C#" AutoEventWireup="true" CodeFile="intro.aspx.cs" Inherits="intro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>IDSS Global – Leading Engineering Consultants In Pune India</title>
    <meta content="" name="description"/>
    <meta content="" name="keywords"/>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://unpkg.com/youtube-background/jquery.youtube-background.min.js"></script>
    <%-- <!-- Vendor CSS File -->
   <link href="Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="Vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>--%>
  
    <%-- Main page css --%>
    <link href="css/intro.css" rel="stylesheet" />

</head>
<body>
<!--Header Satrt-->
    <section id="header">
        <div class="container-fluid pt-2 pb-2">
            <div class="">
                <span class="anchUS">San Francisco, CA, USA</span>
                <a href="https://www.facebook.com/IDSS-Global-2163901323891144" class="Socialanch Facebookico" target="_blank" title="Facebook: IDSS Global"></a>
                <a href="https://www.linkedin.com/company/idss-global/" class="Socialanch LinkedInico" target="_blank" title="LinkedIn: IDSS Global"></a>
                <a href="https://twitter.com/GlobalIdss" class="Socialanch Twitterico" target="_blank" title="Twitter: IDSS Global"></a>
                <%-- </div>--%>
                <div class="float-end" id="contact">
                    <a href="#" class="btnquote">Get Quote</a>
                    <a href="tel:+91-9960900134" class="indianFlag Arialfont text-decoration-none">+91-9960900134</a>
                    <a href="tel:+16284005845" class="usasFlag Arialfont text-decoration-none">+1-628-400-5845</a>
                    <%--<span class="contText fontArial">For Enquiry:&nbsp;</span>--%>
                </div>
            </div>
        </div>
    </section>
    <div class="float_clear"></div>
    <div class="headerline"></div>

    <%-- navigations --%>
    <section id="navrbar">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-xl bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img alt="" src="images/idss-logo.png" class="lg" />
                        <img alt="" src="images/idss-logo-name.png" class="lgName" /></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <%--<span class="navbar-toggler-icon"></span>--%>
                        <img src="images/icons/social/nav-btn-color.png" />
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <!-- Navigation starts -->
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">About Us
                                </a>
                                <ul class="dropdown-menu m-auto">
                                    <li><a class="dropdown-item" href="#">Overview</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Our Strength</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">IDSS Team</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Testimonials</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Services
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Overview</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Civil Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Mechanical Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Architectural</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Lightning Protection System Design</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Geotechnical Engineering</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Information Technology</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Portfolio</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Info Center
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Certification</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">News Events</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">FAQ</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Enquiry</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Career
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Introduction</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Apply Online</a></li>

                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </section>

    <%-- banner start --%>
    
      <section class="video-container">
        <div class="">
            <video src="Video/corporate-video.mp4" autoplay loop playsinline muted></video>
            <div class="YTPOverlay">
                <div class="callout">
                    <div class="container">
                        <h1 class="colorWhite large">Lorem Ipsum is simply dummy text of the printing and typesetting industry</h1>
                        <span class="space10"></span>
                        <div class="colorWhite">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<span class="space50"></span>--%>
   <%-- <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/banner.jpg" class="d-block w-100" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="semiBold semiMedium colorBlack text-start mt-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/banner.jpg" class="d-block w-100" alt="..."/>
            </div>
            <div class="carousel-item">
                <img src="images/banner.jpg" class="d-block w-100" alt="..."/>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>--%>
    <%-- banner end --%>

    <%-- why choose us start --%>
    <span class="space50"></span>
    <section id="whyus">
        <div class="container">
            <div class="row">
                <h2 class="text-uppercase semiBold medium text-center">Why choose us </h2>
            <span class="space40"></span>
            <div class="col-md-6">
                <img src="images/icons/experiance.png" class="d-inline-block" /><p class="fontRegular light lh-5 d-inline-block ms-3">15 Years Experience Team</p>
            <span class="space10"></span>
                <div class="clearfix"></div>
                <img src="images/icons/design.png" class="d-inline-block" /><p class="fontRegular light lh-5 d-inline-block ms-3">Design Ready in 24 hrs, with On Target </p>
            <span class="space10"></span>
                <div class="clearfix"></div>
                 <img src="images/icons/complete.png" class="d-inline-block" /><p class="fontRegular light lh-5 d-inline-block ms-3">622+ projects completed</p>
            </div>
            <div class="col-md-6">
                <span class="space10"></span>
                <div class="clearfix"></div>
                <img src="images/icons/accuracy.png" class="d-inline-block" /><p class="fontRegular light lh-5 d-inline-block ms-3">95% accuracy & efficiency for all engineering services</p>
                <span class="space10"></span>
                <div class="clearfix"></div>
                <img src="images/icons/happy-customers.png" class="d-inline-block" /><p class="fontRegular light lh-5 d-inline-block ms-3">22+ Happy customers from USA, UK  & Canada</p>
            </div>
            </div>
        </div>
    </section>
    <%-- why choose us end --%>

    <%-- stats start --%>
   <%-- <span class="space50"></span>
    <section id="stats" class="bgstat">
        <span class="space30"></span>
       <div class="container">
    
    <div class="row">

	<div class="four col-md-3">
		<div class="counter-box">
			<i class="fa fa-thumbs-o-up"></i>
			<span class="counter">2147</span>
			<p>Happy Customers</p>
		</div>
	</div>
	<div class="four col-md-3">
		<div class="counter-box">
			<i class="fa fa-group"></i>
			<span class="counter">3275</span>
			<p>Registered Members</p>
		</div>
	</div>
	<div class="four col-md-3">
		<div class="counter-box">
			<i class="fa  fa-shopping-cart"></i>
			<span class="counter">289</span>
			<p>Available Products</p>
		</div>
	</div>
	<div class="four col-md-3">
		<div class="counter-box">
			<i class="fa  fa-user"></i>
			<span class="counter">1563</span>
			<p>Saved Trees</p>
		</div>
	</div>
  </div>	
</div>
        <span class="space30"></span>
    </section>
    <span class="space50"></span>--%>
    <%-- stats end --%>

    <%--<script type="text/javascript">
        $(document).ready(function () {
           
            $('.counter').each(function () {
                $(this).prop('Counter', 0).animate({
                    Counter: $(this).text()
                }, {
                    duration: 4000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
            });
            
        });

</script>--%>



</body>
</html>
