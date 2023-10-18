<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="news-photos.aspx.cs" Inherits="idssadmin_news_photos" %>
<%@ MasterType VirtualPath="~/idssadmin/MasterAdmin.master"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .closeAnch{background:url(images/icons/deleteIco.png) no-repeat center center; display:block; height:20px; width:20px; position:absolute; top:5px; right:5px  }
        .imgBox{ float:left;position:relative }
        .imgContainer{ height:200px !important; width:200px; overflow:hidden !important; }
        .w100{ width:100% }
        .pad-5{ padding:5px }
        .border1{ border:1px solid #ececec }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Add Photos</h2>
    <span class="space15"></span>
    <div class="formPanel">
        <h4 class="formTitle themeDarkBg">Add Photos to News</h4>
        <span class="titleLine"></span>
        <div class="pad_10">
            <span class="formLable dspBlk mrgBtm10">Select News :</span>
            <asp:DropDownList ID="ddrAddNewsPhoto" CssClass="txtBox" Width="600" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddrAddNewsPhoto_SelectedIndexChanged">
                <asp:ListItem Value="0"><--Select--></asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>
            <span class="formLable dspBlk mrgBtm10">Select Photo:</span>
            <asp:FileUpload ID="fuImage" runat="server" />
            <span class="space10"></span>
        </div>
    </div>
    <span class="space20"></span>
    <%= errMsg %>
    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" Text="Submit" OnClick="btnSubmit_Click"/>
    <div class="float_clear"></div>
    <span class="space20"></span>
    <div class="float_clear"></div>
    <div class="spacer"></div>
    <%=photoMarkup %>
    <div class="float_clear"></div>
</asp:Content>

