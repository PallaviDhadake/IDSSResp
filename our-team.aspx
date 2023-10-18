<%@ Page Title="Team | IDSS Global International Design & Software Solutions Pune India" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="our-team.aspx.cs" Inherits="our_team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeaderTeam">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite">Our Team</h1>
            <ul class="bCrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>&raquo;</li>
                    <li>Team IDSS Global</li>
                </ul>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->

<div class="col_1140" id="team">
    <span class="space40"></span>
    <%=GetTeamData() %>

    <%--<div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/shila-patil.png" alt="Mrs. Shila Patil" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mrs. Shila Patil<span>President &amp; CEO</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mrs Shila</b> is the founder & President of International Design & Software Solutions, Pune, India. An ambassador of change & a visionary leader with an impressive track record of delivering record breaking volumes & turnovers by driving strategic initiatives. She is experienced in establishing new units & transitioning organizations into profit centres by providing directional leadership & implementing entrepreneurial initiatives. Extensive cross functional knowledge from technology, marketing, sales, customer experience, operations & finance, etc.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>

    <span class="space40"></span>

     <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/sachin-patil-idss.jpg" alt="Mr. Sachin Patil" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mr. Sachin Patil<span>Director and Co-Founder</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mr. Sachin</b> has 13+ years’ experience in designing and management he is A head heart and gut strong professional who has performed in extreme work pressures also carries good amount of credentials in terms of training young Civil engineers on Land development, Structural design, Timber design projects for US and Canada clients.
                    He uses team to spread ideas and direction throughout the organization until every employee understands their expected role and responsibilities for contribution.He formulating and implementing the strategic plan that guides the direction of the business using the input of employees at every level of the organization.
                    <!-- to develop the strategic plan.Forming, staffing, guiding, leading and managing an organization sufficient to accomplish the directors responsibilities and the strategic plan of the business. Overseeing the complete operation of an organization in accordance with the direction established in the strategic plans of Mr Sachin.-->
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>

    <span class="space40"></span>
    
    <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/ravi-lad.png" alt="Mr. Ravi Lad" />
                    </div>
                </div>
            </div>
        </div>

        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mr. Ravi Lad<span>AVP - Operations</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mr. Ravi</b> has 15+ years’ experience in AVP Operations combines natural leadership skills, strong interpersonal and organizational skills to motivate and lead people towards successfully achieving goals.He is dedicated to a high level of professionalism, integrity, timeliness and responsiveness in every project and takes a pro-active team approach by providing his team of Software Engineers & Mechanical Engineers with the necessary tools and opportunities to excel in meeting project demands while satisfying clients.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>
    <span class="space40"></span>
    <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/shrikant-idss.jpg" alt="Mr. Shrikant" />
                    </div>
                </div>
            </div>
        </div>

        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mr. Shirikant<span>Business Development Manager</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mr. Shrikant</b> has 6+ years business Development experience in local and international sales. Have experience of working in engineering services industry and looked after international sales for North America, UK, Scandinavia and Australian market throughout the span. Have Worked with international clients in software engineering, mechanical, buildings and civil industry. Have expertise in pre sales and post sales activities like market research, demand generation, team building and internal training, online presentation, business proposals, inquiry handling, negotiation, project co-ordination and existing account management for the company. Skilled in making strategic business presentations, supporting marketing activities and overall sales operation.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>

    <span class="space40"></span>

    <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/deepali-yadav.png" alt="Deepali Yadav" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Deepali Yadav<span>Sr. Project Manager</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Miss Dipali</b> has 17+ years design experience with global clients She is currently in charge of West Coast operations & directly co-ordinates with all the clients of this region, for on-going projects. She is dedicated to a high level of professionalism, integrity, timeliness and responsiveness in every project and takes a pro-active team approach by providing her team of Architects with the necessary tools and opportunities to excel in meeting project demands while satisfying clients.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>

    <span class="space40"></span>


     <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/priyanka-burde.jpg" alt="Deepali Yadav" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Miss Priyanka G. Burde<span>Marketing Head</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Miss Priyanka</b> is a avid international marketer and a Strategic Thinker in the field of Business/Market Research, Email Marketing, Pre-Sales Analysis, Marketing Communication .Have expertise in the field of Market Research, Market Mapping and Analysis and Relationship Management. She plan and deliver global marketing strategies executing digital online and tactics, using both above and below the line channels and public media relations.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>

    <span class="space40"></span>

    <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/dinesh-salunke-idss-marketing.jpg" alt="Mr. Dinesh salunke" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mr. Dinesh Salunke<span>Marketing Executive</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mr. Dinesh</b> has international marketing experience with global clients. Dinesh believes giving in exposure and driving business growth through understanding customer requirement & giving them optimize solution.Experienced International Technical Marketing and Sales Executive with a demonstrated history of working in CAD outsourcing and services industry. Skilled in Development,Management, Customer Service, Business Development, Leadership, Team Management &Strong Technical professional.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>
    

    <span class="space40"></span>

    <div class="bgEF">
        <div class="teamBox">
            <div class="pad_20">
                <div class="teamShape">
                    <div class="pad_10">
                        <img src="images/sujit-vartikar.png" alt="Mr. Sujit Vartikar" />
                    </div>
                </div>
            </div>
        </div>
        <div class="teamInfo">
            <div class="pad_20">
                <h3 class="teamName">Mr. Sujit Vartikar<span>Human Resources</span></h3>
                <span class="space10"></span>
                <p class="regular lineHt colorBlack">
                    <b>Mr.Sujit</b> has 13+ years of experienced in human resource management and has beenleading all the initiatives from recruitments, employee relations & communication, performance management & training & development. He has problem solving abilities, excellent verbal and written communication skills, motivate others to maximum co-operation, self-motivated, capable of shouldering additional responsibilities when the situation demands.
                </p>
            </div>
        </div>
        <div class="float_clear"></div>
    </div>--%>
</div>
</asp:Content>

