<%@ Page Title="Lightning Protection System Design | Lightning Protection for Buildings" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="lpsd.aspx.cs" Inherits="lpsd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
    <div class="pgHeaderLpsd">
        <div class="col_1140">
            <div class="page_TB_pad">
                <h1 class="pageH1 bold colorWhite">Lightning Protection System Design</h1>
                <ul class="bCrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>&raquo;</li>
                    <li>Lightning Protection System Design</li>
                </ul>
            <div class="float_clear"></div>
            </div>
        </div>
    </div>
<!-- Page Header Ends -->
    <span class="space40"></span>
    <div class="col_1140">
        <div class="col_1_2">
        <a href="lpsd.aspx">
            <img src="images/serv-LPSD-2.jpg" alt="Lightning Protection System Design" class="width100" />
        </a>
    </div>
    <div class="col_1_2">
        <div class="pad_L_30">
            <h3 class="pageH3 colorPrime mrg_B_15">Lightning Protection System Design</h3>
            <p class="regular lineHt">Lightning is a capricious, random and unpredictable event. Its' physical characteristics include current levels sometimes in excess of 400 kA, temperatures to 50,000 degrees F., and speeds approaching one third the speed of light. Globally, some 2000 on-going thunderstorms cause about 100 lightning strikes to earth each second. USA insurance company information shows one homeowner's damage claim for every 57 lightning strikes. Data about commercial, government, and industrial lightning-caused losses is not available.</p>
            <span class="space20"></span>
            <%--<a href="lpsd.aspx" class="readMore">Read More</a>--%>
        </div>
    </div>
    <div class="float_clear"></div>
    
    <span class="space30"></span>

        <p class="para-txt">Lightning is a capricious, random and unpredictable event. Its' physical characteristics include current levels sometimes in excess of 400 kA, temperatures to 50,000 degrees F., and speeds approaching one third the speed of light. Globally, some 2000 on-going thunderstorms cause about 100 lightning strikes to earth each second. USA insurance company information shows one homeowner's damage claim for every 57 lightning strikes. Data about commercial, government, and industrial lightning-caused losses is not available. Annually in the USA lightning causes more than 26,000 fires with damage to property (NLSI estimates) in excess of $5-6 billion.</p>
        <span class="space30"></span>
        <h3 class="mediumPara bold colorPrime">The phenomenology of lightning strikes to earth, as presently understood, follows an approximate behavior:</h3>
        <span class="space10"></span>
        <ul class="basicList">
            <li>The downward Leaders from a thundercloud pulse towards earth seeking out active electrical ground targets.</li>
            <li>Ground-based objects (fences, trees, blades of grass, corners of buildings, people, lightning rods, etc., etc.) emit varying degrees of electric activity during this event. Upward Streamers are launched from some of these objects. A few tens of meters off the ground, a "collection zone" is established according to the intensified local electrical field.</li>
            <li>Some Leader(s) likely will connect with some Streamer(s). Then, the "switch" is closed and the current flows. We see lightning.</li>
        </ul>
        <span class="space30"></span>
        <p class="para-txt">Lightning effects can be direct and/or indirect. Direct effects are from resistive (ohmic) heating, arcing and burning. Indirect effects are more probable. They include capacitive, inductive and magnetic behavior. Lightning "prevention" or "protection" (in an absolute sense) is impossible. A diminution of its consequences, together with incremental safety improvements, can be obtained by the use of a holistic or systematic hazard mitigation approach, described below in generic terms.</p>
        <span class="space30"></span>
        <h3 class="mediumPara bold colorPrime">The system design will include:</h3>
        <span class="space10"></span>
        <ul class="basicList">
            <li>Grounding systems design – a configuration should be designed as a result of soil resistivity analysis.</li>
            <li>Downconductor routes - chosen to avoid other services, maintain minimum bending radii of 20 cm (8 inches) or greater and minimize down conductor run length.</li>
            <li>Downconductor securing requirements.</li>
            <li>LPSD - CAD analysis design software which determines terminal placement, mast & height requirements as well as protection level calculation.</li>
        </ul>
        <span class="space30"></span>
        <span class="para-txt">All of the above are recommended for a successful installation.</span>
    </div>
</asp:Content>

