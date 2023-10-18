<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="career-master.aspx.cs" Inherits="idssadmin_career_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 class="pgTitle">Career Master</h2>
<span class="space15"></span>
    <div id="editJob" runat="server">
        <div class="formPanel">
            <h4 class="formTitle themeDarkBg">Career Master</h4>
            <span class="titleLine"></span>
            <div class="pad_10">
                <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Job Code:*</span>
                <asp:TextBox ID="txtJobCode" runat="server" CssClass="txtBox" MaxLength="20" Width="200"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Job Title:*</span>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="txtBox" MaxLength="200" Width="600"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Job Location:*</span>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="txtBox" MaxLength="30" Width="200"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Age Limit:*</span>
                <asp:TextBox ID="txtAge" runat="server" CssClass="txtBox" MaxLength="50" Width="200"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Preferred Gender:*</span>
                <asp:DropDownList ID="ddrGender" CssClass="txtBox" runat="server">
                    <asp:ListItem Value="0"><-Select-></asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem Value="3">Any</asp:ListItem>
                </asp:DropDownList>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Experience:*</span>
                <asp:TextBox ID="txtExp" runat="server" CssClass="txtBox" MaxLength="50" Width="200"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Job Details:*</span>
                <asp:TextBox ID="txtDetails" runat="server" CssClass="txtBox" Width="400" TextMode="MultiLine"  Height="80"></asp:TextBox>
                <span class="space10"></span>
            </div>
        </div>
        <span class="space20"></span>
        <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnDelete" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" 
            OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="btnDelete_Click" />
        <asp:Button ID="btnReset" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Reset" OnClick="btnReset_Click" />
        <asp:Button ID="btnCancel" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Cancel" OnClick="btnCancel_Click" />
        <div class="float_clear"></div>
    </div>

    <div id="viewJob" runat="server">
        <a href="career-master.aspx?action=new" class="addNew themeClrBlue">Add New</a>
        <span class="space15"></span>
        <div class="formPanel" >
            <asp:GridView ID="gvCareer" runat="server" AutoGenerateColumns="False" 
                CssClass="gvApp" GridLines="None" OnRowDataBound="gvCareer_RowDataBound" >
                <RowStyle CssClass="row" />
                <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                    <asp:BoundField DataField="crId">
                        <HeaderStyle CssClass="HideCol" />
                        <ItemStyle CssClass="HideCol" />
                    </asp:BoundField>
                    <asp:BoundField DataField="crCode" HeaderText="Job Code">
                        <ItemStyle Width="15%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="crTitle" HeaderText="Job Title">
                        <ItemStyle Width="60%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="crLocation" HeaderText="Job Location">
                        <ItemStyle Width="20%"/>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemStyle Width="5%" />
                        <ItemTemplate>
                            <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                <EmptyDataTemplate>
                    <span class="warning">No Jobs to Display</span>
                </EmptyDataTemplate>
            </asp:GridView>           
        </div>
    </div>
</asp:Content>

