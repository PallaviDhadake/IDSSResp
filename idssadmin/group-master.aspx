<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="group-master.aspx.cs" Inherits="idssadmin_group_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 class="pgTitle">Project Group Master</h2>
<span class="space15"></span>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="formPanel">
            <h4 class="formTitle themeDarkBg">Project Group Master</h4>
            <span class="titleLine"></span>
            <div class="pad_10">
                <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>

                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Basic Type:</span>
                <asp:DropDownList ID="ddrType" CssClass="txtBox" runat="server" 
                    AutoPostBack="True" onselectedindexchanged="ddrType_SelectedIndexChanged">
                    <asp:ListItem Value="0"><-Select-></asp:ListItem>
                    <asp:ListItem Value="1">Indian</asp:ListItem>
                    <asp:ListItem Value="2">International</asp:ListItem>
                </asp:DropDownList>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Stream:</span>
                <asp:DropDownList ID="ddrStream" CssClass="txtBox" runat="server">
                    <asp:ListItem Value="0"><-Select-></asp:ListItem>
                </asp:DropDownList>
                <span class="space10"></span>


                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Project Group Name:*</span>
                <asp:TextBox ID="txtGrName" runat="server" CssClass="txtBox" MaxLength="50" Width="400"></asp:TextBox>
                <span class="space10"></span>

                <span class="space15"></span>
                <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" Text="Submit" onclick="btnSubmit_Click" />
                <asp:Button ID="btnDelete" runat="server" 
                    CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" 
                    OnClientClick="return confirm('Are you sure you want to delete this?');" 
                    onclick="btnDelete_Click" />
                <asp:Button ID="btnReset" runat="server" 
                    CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Reset" 
                    onclick="btnReset_Click" />
                <div class="float_clear"></div>

            </div>
        </div>

        <span class="space15"></span>
        <span class="space15"></span>
        <asp:GridView ID="gvGroups" runat="server" AutoGenerateColumns="False" 
                CssClass="gvApp" GridLines="None" onrowcreated="gvGroups_RowCreated" 
                onselectedindexchanged="gvGroups_SelectedIndexChanged" >
            <RowStyle CssClass="row" />
            <AlternatingRowStyle CssClass="alt" />
                <Columns>
                    <asp:BoundField DataField="prjGrpId">
                        <HeaderStyle CssClass="HideCol" />
                        <ItemStyle CssClass="HideCol" />
                    </asp:BoundField>
                    <asp:BoundField DataField="prjGrpName" HeaderText="Group Name">
                        <ItemStyle Width="60%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="psName" HeaderText="Stream">
                        <ItemStyle Width="40%"/>
                    </asp:BoundField>
                </Columns>
            <EmptyDataTemplate>
                <span class="warning">No Project Groups to Display</span>
            </EmptyDataTemplate>
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

