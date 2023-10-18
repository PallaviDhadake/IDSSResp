<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="change-pwd.aspx.cs" Inherits="idssadmin_change_pwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="pgTitle">Change Password</h2>
<span class="space15"></span>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="formPanel">
            <h4 class="formTitle themeDarkBg">Change Password</h4>
            <span class="titleLine"></span>
            <div class="pad_10">
                <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Old Password:*</span>
                <asp:TextBox ID="txtOldPass" runat="server" CssClass="txtBox" MaxLength="30" Width="600"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">New Password:*</span>
                <asp:TextBox ID="txtNewPass" runat="server" CssClass="txtBox" MaxLength="30" Width="600"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Confirm Password:*</span>
                <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="txtBox" MaxLength="30" Width="600"></asp:TextBox>
                <span class="space10"></span>
            </div>
        </div>
        <span class="space15"></span>
        <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" 
            Text="Submit" onclick="btnSubmit_Click" />
        <div class="float_clear"></div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

