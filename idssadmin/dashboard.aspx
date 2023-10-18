<%@ Page Title="Dashboard | IDSS Admin" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="idssadmin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 class="pgTitle">Dashboard</h2>
<span class="space15"></span>
<span class="space15"></span>
<div class="formPanel">
    <h4 class="formTitle" style="color:#0073aa">Welcome Admin :)</h4>
    <span class="titleLine"></span>
    <div class="pad_10">
        <a href="#" class="countBox" title="Enquiry">
            <div class="pad_10">
                <img src="images/icons/career.jpg" class="float_left" />
                <div class="countText">
                    <div class="pad_TB_10">
                        <span>25</span>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
        </a>

        <a href="#" class="countBox" title="Career">
            <div class="pad_10">
                <img src="images/icons/enquiry.jpg" class="float_left" />
                <div class="countText">
                    <div class="pad_TB_10">
                        <span>56</span>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
        </a>

        <a href="#" class="countBox" title="Domain & Hosting Renewal">
            <div class="pad_10">
                <img src="images/icons/renewal.jpg" class="float_left" />
                <div class="countText">
                    <div class="pad_TB_10">
                        <span>65</span>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
        </a>

        <%--<a href="#" class="countBox" title="Testimonials">
            <div class="pad_10">
                <img src="images/icons/renewal.jpg" class="float_left" />
                <div class="countText">
                    <div class="pad_TB_10">
                        <span>65</span>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
        </a>--%>

        <div class="countBox" title="Website Visits">
            <div class="pad_10">
                <img src="images/icons/views.jpg" class="float_left" />
                <div class="countText">
                    <div class="pad_TB_10">
                        <span>756</span>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
        </div>

        <div class="float_clear"></div>
    </div>
</div>
<span class="space20"></span>

</asp:Content>

