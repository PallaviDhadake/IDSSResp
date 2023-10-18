<%@ Page Title="Team Member | Master" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="team-member-master.aspx.cs" Inherits="idssadmin_team_member_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
     $(function () {
         $('#<% =txtJoinDate.ClientID%>').datepick({ dateFormat: 'dd/mm/yyyy' });
     });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Team Member Master</h2>
    <span class="space15"></span>

    <div id="viewTeamMember" runat="server">
        <a href="team-member-master.aspx?action=new" class="addNew themeClrBlue">Add New</a>        
         <asp:Button ID="btnOrder" CssClass="buttonBlue float_right mrgRgt10" runat="server" OnClick="btnOrder_Click" Text="Reorder" />           
        <span class="space15"></span>
        <div class="formPanel">
            <asp:GridView ID="gvTeamMember" CssClass="gvApp" runat="server" AutoGenerateColumns="False" GridLines="None" OnRowDataBound="gvTeamMember_RowDataBound">
                <RowStyle CssClass="row" />
                <AlternatingRowStyle CssClass="alt" />
                <Columns>
                <asp:BoundField DataField="teamId">
                   <HeaderStyle CssClass="HideCol" />
                   <ItemStyle CssClass="HideCol" />
                </asp:BoundField>
                <asp:BoundField DataField="displayOrder" >
                    <HeaderStyle CssClass="HideCol" />
                   <ItemStyle CssClass="HideCol" />
                </asp:BoundField>
                <asp:BoundField DataField="teamName" HeaderText="Name">
                    <ItemStyle Width="30%"/>
                </asp:BoundField>
                <asp:BoundField DataField="teamPosition" HeaderText="Position">
                    <ItemStyle Width="30%"/>
                </asp:BoundField> 
                <asp:TemplateField>
                        <ItemStyle Width="20%" />
                        <ItemTemplate>
                            <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                        </ItemTemplate>
                 </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Display Order">
                    <ItemStyle Width="20%" />
                    <ItemTemplate>
                        <asp:TextBox ID="txtOrder" runat="server" CssClass="textOrder"></asp:TextBox>
                    </ItemTemplate>
                 </asp:TemplateField>                
                </Columns>
                <EmptyDataTemplate>
                    <span class="warning">No Any Team Data to Display</span>
                </EmptyDataTemplate>
            </asp:GridView>             
        </div>
    </div>



    <div id="editTeamMember" runat="server">
        <div class="formPanel">
            <h4 class=" formTitle themeDarkBg"><%= pgTitle %> </h4>
            <span class="titleLine"></span>
            <div class="pad_10">
               <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Joining Date </span>
                <asp:TextBox  ID="txtJoinDate" CssClass="txtBox" runat="server" Width="210"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Name: *</span>
                <asp:TextBox ID="txtName" runat="server" CssClass="txtBox" Width="600" MaxLength="40"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Position: *</span>
                <asp:TextBox ID="txtPost" runat="server" CssClass="txtBox" Width="600" MaxLength="30"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Profile: *</span>
                <asp:TextBox ID="txtProfile" runat="server" CssClass="txtBox" Width="600" TextMode="MultiLine" Height="300"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Photo: * <span>(Uplaod Square Images with atleast 225px X 225px ) </span></span>
                <asp:FileUpload ID="fuPhoto" runat="server" />
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Display Order: *</span>
                <asp:TextBox ID="txtDispOrder" runat="server" CssClass="txtBox" Width="210" ></asp:TextBox>
                <span class="space10"></span>
            </div>
        </div>
        <span class="space20"></span>
        <asp:Button ID="btnSave"  CssClass="buttonBlue float_left mrgRgt10" 
            runat="server" Text="Save Info" onclick="btnSave_Click" />
        <asp:Button ID="btnDelete" CssClass="buttonBlue float_left mrgRgt10"  OnClientClick="return confirm('Are you sure you want to delete this?');"
            runat="server" Text=" Delete " onclick="btnDelete_Click" />
        <asp:Button ID="btnCancel" CssClass="buttonBlue float_left mrgRgt10" 
            runat="server" Text="Cancel" onclick="btnCancel_Click" />
            <span class="space40"></span>
    </div>
</asp:Content>

