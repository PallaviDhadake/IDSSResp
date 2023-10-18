<%@ Page Title="Career Apply Online - IDSS Global" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="career-apply.aspx.cs" Inherits="career_apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeader">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite">Job Opportunity with IDSS Global</h1>
            <ul class="bCrumb">
                <li><a href="Default.aspx">Home</a></li>
                <li>&raquo;</li>
                <li>Job Opportunity</li>
            </ul>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->
    <span class="space40"></span>
    <div class="col_1140">
        <p class="paraText">IDSS Global is providing good service to all our clients from many years, successful solutions & their good results is our speciality. But the thing are always possible by a good team work. To form a good team of IDSS Global we are always looking for good Engineers. If you really found that spirit & devotion in you then feel free to apply with your latest CV at email: <b><a href="mailto:hr@idssglobal.com" class="careerLink">hr@idssglobal.com</a></b></p>
        <span class="space20"></span>
        <div class="txtCenter">

            <%=GetCareerListing() %>
            <div class="float_clear"></div>
        <!-- Removed
            <div class="careerCol">
                <div class="pad_15">
                    <div class="careerInfo">
                        <div class="careerPad">
                            <h2 class="pageH2 colorPrime bold mrg_B_10 txt_left">Accountant</h2>
                            <span class="jobInfo regular bold txt_left">Job Code : JC-IG-1</span>
                            <span class="jobInfo regular bold txt_left">Location : Pune</span>
                            <span class="jobInfo regular bold txt_left">Candiate : Male</span>
                            <span class="jobInfo regular bold txt_left">Age Limits : 23 to 30 Years</span>
                            <span class="jobInfo regular bold txt_left">Experience : 23 years - 4 years</span>
                            <span class="jobInfo regular bold txt_left">Job Details : </span>
                            <span class="jobInfo regular lineHt txt_left">Candiate must have good knowledge of accounting. Concepts of ledgers & balance sheet ust be clear.</span>
                        </div>
                    </div>
                </div>
            </div>
            -->
            <%--<div class="careerCol">
                <div class="pad_15">
                    <div class="careerInfo">
                        <div class="careerPad">
                            <h2 class="pageH2 colorPrime bold mrg_B_10 txt_left">Marketing executive</h2>
                            <span class="jobInfo regular bold txt_left">Job Code : JC-IG-2</span>
                            <span class="jobInfo regular bold txt_left">Location : Pune</span>
                            <span class="jobInfo regular bold txt_left">Candiate : Male</span>
                            <span class="jobInfo regular bold txt_left">Age Limits : Not Specified</span>
                            <span class="jobInfo regular bold txt_left">Experience : 2 to 4 years</span>
                            <span class="jobInfo regular bold txt_left">Job Details : </span>
                            <ul class="basicList" style="text-align:left">
                                <li>Person should have sound knowledge of marketing field.</li>
                                <li>Person Should Have Good Communication Skill</li>
                                <li>Should Be able To Travel</li>
                                <li>Good Marketing Skill</li>
                                <li>Professional</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="careerCol">
                <div class="pad_15">
                    <div class="careerInfo">
                        <div class="careerPad">
                            <h2 class="pageH2 colorPrime bold mrg_B_10 txt_left">AutoCAD Draughtsman</h2>
                            <span class="jobInfo regular bold txt_left">Job Code : JC-IG-3</span>
                            <span class="jobInfo regular bold txt_left">Location : Pune</span>
                            <span class="jobInfo regular bold txt_left">Candiate : Male / Female</span>
                            <span class="jobInfo regular bold txt_left">Age Limits : 20 to 30 Years</span>
                            <span class="jobInfo regular bold txt_left">Experience : 1 year</span>
                            <span class="jobInfo regular bold txt_left">Job Details : </span>
                            <span class="jobInfo regular lineHt txt_left"></span>
                            <ul class="basicList" style="text-align:left">
                                <li>AutoCAD Civil and Architectural drafting work for clients in US.</li>
                                <li>Previous experience with US / UK outsource architectural / civil drafting work will be an added advantage</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>

        <%--<h2 class="pageH2 colorPrime bold mrg_B_10">AutoCAD Draughtsman</h2>
        <span class="jobInfo regular bold">Job Code : JC-IG-3</span>
        <span class="jobInfo regular bold">Location : Pune</span>
        <span class="jobInfo regular bold">Candiate : Male / Female</span>
        <span class="jobInfo regular bold">Age Limits : 20 to 30 Years</span>
        <span class="jobInfo regular bold">Experience : 1 year</span>
        <span class="jobInfo regular bold">Job Details : </span>
        <span class="jobInfo regular lineHt">AutoCAD civil and architectural drafting work for clients in US. Previous experience with US / UK outsource architectural / civil drafting work will be an added advantage</span>--%>
            
        
    </div>
</asp:Content>

