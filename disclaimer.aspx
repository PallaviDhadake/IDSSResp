<%@ Page Title="Disclaimer by IDSS Global" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="disclaimer.aspx.cs" Inherits="disclaimer" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
    <div class="pgHeader">
        <div class="col_1140">
            <div class="page_TB_pad">
                <h1 class="pageH1 bold colorWhite">Disclaimer</h1>
                <ul class="bCrumb">
                    <li><a href="<%= Master.rootPath %>">Home</a></li>
                    <li>&raquo;</li>
                    <li>Disclaimer</li>
                </ul>
                <div class="float_clear"></div>
            </div>
        </div>
    </div>
<!-- Page Header Ends -->
    <span class="space40"></span>
    <div class="col_1140">
        <p class="paraTxt">The images used in the website are not our copyright. We do not intend to use it without original owner’s permission However, we have found the images as a free image search through Google.co.in. <br /> If you find your copyright image in our website, do inform us on our email info@idssglobal.com along with copyright evidence, so we can verify the same and remove it from our site if objectionable.</p> 
    </div>
</asp:Content>

