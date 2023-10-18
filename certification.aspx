<%@ Page Title="Certification | IDSS Global" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="certification.aspx.cs" Inherits="certification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeaderCert">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite">Certification</h1>
            <ul class="bCrumb">
                <li><a href="Default.aspx">Home</a></li>
                <li>&raquo;</li>
                <li>Certification</li>
            </ul>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->
<div class="w100 ">
    <div class="col_1140 txtCenter">
        <%--<div class="pad_20">--%>
        <span class="space20"></span>
        <h2 class="srvTitle">IDSS is a ISO 9001:2015 Certified Company</h2>
        <span class="space20"></span>
        <%--</div>--%>
    </div>
</div>

<div class="col_1140">
    <div class="col_800">
        <div class="cert-img">
            <div class="pad_10">
                <img src="images/ISO.png" class="w100" />
            </div>
        </div>
        <div class="cert-info txtJustify">
            <span class="news-Tag mrg_B_10 fontRegular">ISO</span>
            <p class="paraTxt mrg_B_15">ISO 9001:2008 specifies requirements for a quality management system where an organization needs to demonstrate its ability to consistently provide product that meets customer and applicable statutory and regulatory requirements and aims to enhance customer satisfaction through the effective application of the system including processes for continual improvement of the system and the assurance of conformity to customer and applicable statutory and regulatory requirements.</p>
        </div>
        <div class="float_clear"></div>
        <span class="space20"></span>

        <div class="cert-img">
            <div class="pad_10">
                <img src="images/IAF.png" class="w100" />
            </div>
        </div>
        <div class="cert-info txtJustify">
            <span class="news-Tag mrg_B_10 fontRegular">IAF</span>
            <p class="paraTxt mrg_B_15">The IAF is the world association of Conformity Assessment Accreditation Bodies and other bodies interested in conformity assessment in the fields of management systems, products, services, personnel and other similar programmes of conformity assessment. Its primary function is to develop a single worldwide program of conformity assessment which reduces risk for business and its customers by assuring them that accredited certificates may be relied upon.</p>
        </div>
        <div class="float_clear"></div>
        <span class="space20"></span>

        <div class="cert-img">
            <div class="pad_10">
                <img src="images/IAS.png" class="w100" />
            </div>
        </div>
        <div class="cert-info txtJustify">
            <span class="news-Tag mrg_B_10 fontRegular">IAS</span>
            <p class="paraTxt mrg_B_15">The International Accreditation Service (IAS) provides objective evidence that an organization operates at the highest level of ethical, legal and technical standards. As one of the leading accreditation bodies in the United States, IAS is a signatory to the four primary international organizations that form a unified system for evaluating and recognizing competent accreditation bodies worldwide.</p>
        </div>
        <div class="float_clear"></div>
        <span class="space20"></span>
    </div>

    <div class="col_340">
        <div class="pad_L_30">
            <div class="sideBar">
                <img alt="IDSS - Certificate" src="images/IDSS-Certificate.png"  class="width100"/>
                <%--<div class="pad_20">
                    <span class="sideIntro">
                        We value our client relationships above all else, save and except the safety and well being of our own people and their families. Without our clients, there would be no IDSS Global. 
                    </span>
                    <span class="space20"></span>
                    <a href="services.aspx" class="sideAnch" title="Read about IDSS Global Services">Read More</a>
                </div>--%>
            </div>
        </div>
    </div>
    <div class="float_clear"></div>
</div>
</asp:Content>

