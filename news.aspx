<%@ Page Title="Latest News updates | IDSS Global" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeader">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite">News Updates</h1>
            <%= bCrumbStr %>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->

    <span class="space30"></span>
    <div class="col_1140">
        <div class="col_800">
            <%= newsStr %>
        </div>
                
       <%-- <!-- Sidebar starts -->
        <div class="col_340">
            <div class="pad_L_30">
                <div class="sideBar">
                    <div class="pad_TB_20">
                        <h4 class="sideTitle bold medium upperCase">send us enquiry</h4>
                    </div>
                    <img alt="IDSS - Civil Engineering Services" src="<%= Master.rootPath + "images/sidebar-enquiry-idss.jpg" %>"  class="width100"/>
                    <div class="pad_20">
                        <span class="sideIntro">
                            Have any project in mind, feel free to send us enquiry, we'll contact you soon..!! 
                        </span>
                        <span class="space20"></span>
                        <a href="enquiry.aspx" class="sideAnch">Enquiry Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sidebar ends -->--%>
        <div class="float_clear"></div>
    </div>
<%--
<div class="col_1140">
<div id="1">
    <span class="space40"></span>
     <h3 class="large bold colorPrime">CAD services will certainly make your work process smoother</h3>
    <span class="space30"></span>
    <p class="para-txt">
    <img alt="" class="newsImgInside" src="upload/news/cad-news.jpg" />
    And of course, outsourcing of your CAD services is going to affect the morale of your staff and personnel. So before your go ahead with outsourcing your CAD services, think about how you could re-organize.</p>
    <div class="float_clear"></div>
</div>
<span class="newsLiner"></span>
<div id="2">
    <span class="space40"></span>
    <h3 class="large bold colorPrime">5 LATEST TRENDS IN CAD TECHNOLOGY</h3>
    <span class="space30"></span>
    <p class="para-txt">
        CAD (Computer Aided Designing) is a methodology in which computer
        technology is used for creating designs that can be leveraged in various fields
        and industry verticals. Using it, numerous products can be designed with
        accurate measurements and the design process can be also be adequately
        documented. <br /><br />
        Computer Aided Designing has evolved as one of the best computerized
        designing methodologies and facilitates a wide array of manufacturing
        processes by transferring the comprehensive diagrams easily to a manufacturing
        and designing system. With its help, both 2D and 3D diagrams can be produced,
        and these diagrams can be rotated at any angle to view the details from a
        particular perspective. Once the design is complete, specialized plotters or
        printers are used for printing the design renderings.    
    </p>
    <span class="space20"></span>
<h3 class="medium bold">The Many Uses of CAD</h3>
<span class="space20"></span>
<p class="para-txt">Computer Aided Designing software can be used for -<br /><br />
 Producing 2D or 3D detailed engineering designs of physical components
of products being manufactured<br />
 Creating conceptual designs, product layouts, carrying out dynamic and
strength analysis of the manufacturing processes and assembly<br />
 Preparing environmental impact reports and designs which can then be used
in for producing a rendering of the exterior and interior look when new
structures are constructed
</p><span class="space20"></span>

<h3 class="medium bold">The Latest Trends in CAD technology</h3>
<span class="space20"></span>
<p class="para-txt">As technology keeps evolving, Computer Aided Design trends are
also changing at a fast pace. Here are the top design trends which are expected
to dominate the design industry in the years to come:
</p>
<span class="space20"></span>

<h3 class="medium bold">1. Upstart Technology</h3>
<span class="space20"></span>
<p class="para-txt">Like every technology-based solution, CAD software is also changing at an
accelerated pace to adapt itself to the ever-changing world of digital
technology. A lot of enterprises worldwide have released cutting edge
collaborative and cloud based solutions which offer a whole new range of
functionalities. Enterprises and organizations of all sizes are indulging in
innovating and enabling Computer Aided Designing with new capabilities
which can be leveraged for better designing of products, machines, and other
entities. Upstart technical firms are among the significant contributors of
such new design trends.<br /><br />
A plethora of design experts believes that computer aided designing
technology as we know it today needs an upgrade, so as to deliver better
services. Therefore, it is safe to expect that this technique will undergo a
complete transformation in the years to come.
</p>

<span class="space20"></span>

<h3 class="medium bold">2. Internet of Things</h3>
<span class="space20"></span>
<p class="para-txt">
The IoT (Internet of Things) refers to the network of connected devices
which are capable of interacting with their surroundings and collecting data.
Connected objects in IoT networks are capable of interacting with each other
and sending signals. Most of these devices are either the part of a home, an
office, a factory or a car. In order to plan, design, and personalize marketing
strategies, IoT is amongst the latest trends in computer designing which is
catching the attention of various people.<br /><br />
It has been estimated by Cisco, that by 2020, over 50 billion devices
worldwide will be online and be a part of some or the other IoT network.
This will certainly change the way we work and complete our day to day
tasks in a dramatic manner. While everyone on the planet would be affected
and impacted by these devices, but the personnel who will be affected the
most will be engineers. Once the manufacturing units, factories and facilities
will come online, massive new efficiencies will be introduced. Thus,
computer aided designing will evolve as one of the most preferred ways to
design newer machines which can interact and deliver incredible
performance.
</p>

<span class="space20"></span>

<h3 class="medium bold">3. Mobile Access to CAD</h3>
<span class="space20"></span>
<p class="para-txt">
Mobile access and mobility have become two of the most vital
aspects that organizations and people look for in almost every technology.
Thus, mobile access is going to be one of the top trends in the coming years.<br /><br />
As per a survey, close to 30% of computer aided designing developers are
currently deploying some means of accessing the data on mobile platforms
and this number is expected to grow by 8-10 per cent every year. Mobile
access allows people to access tools, apps and other relevant data anywhere
and anytime. This implies increased productivity and that's why the tech
experts are looking out for innovative ways using which computer aided
designing can be made mobile.
</p>

<span class="space20"></span>

<h3 class="medium bold">4. 3D Printed Buildings</h3>
<span class="space20"></span>
<p class="para-txt">
Among the evolving trends in CAD technology are 3D printed buildings.
Now a 3D printer can support the creation of an entire building. In fact,
many tools and 3D printers are being used for construction of entire
apartment blocks. This method is much more eco-friendly, cost-effective,
and time-efficient in printing buildings than the other conventional methods.<br /><br />
In the future, 3D printers using such technology will make it much easier to
develop housing in highly populated areas. It is expected that construction
firms in the coming years will catch up with this technology facilitating new
innovation in design.
</p>

<span class="space20"></span>

<h3 class="medium bold">5. CAD and the Cloud are expected to Grow Together</h3>
<span class="space20"></span>
<p class="para-txt">
One of the latest trends in computer aided design technology, which is
expected to change the way we access tools and use them, is the growth of
computer designing in the cloud. Rapid advancements in cloud technology
have become a great way for organizations worldwide to access vital
information on the go and to make the data, tools, and much more available
to people anywhere and at any time. Today, the power of the cloud is driving
Computer Aided Technology as well, allowing developers and designers to
save their work on cloud platforms which can then be accessed from
anywhere. The benefits which such software offer include higher mobility,
ease of updating the software, increased storage capacity, and more
importantly, significant cost reductions.

</p>

<div class="float_clear"></div>
</div>
<span class="newsLiner"></span>



</div>--%>
</asp:Content>

