<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="project-master.aspx.cs" Inherits="idssadmin_project_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 class="pgTitle">Project Master</h2>
<%=errMsg %>
<span class="space15"></span>
<div id="editProject" runat="server">
    <div class="formPanel">
        <h4 class="formTitle themeDarkBg">Project Master</h4>
        <span class="titleLine"></span>
        <div class="pad_10">
            <div class="colorLightBlue">
                <span>Id :</span>
                <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
            </div>
            <span class="space10"></span>
            <span class="formLable dspBlk mrgBtm10">Project Type:</span>
            <asp:DropDownList ID="ddrType" CssClass="txtBox" runat="server" 
                AutoPostBack="True" onselectedindexchanged="ddrType_SelectedIndexChanged">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
                <asp:ListItem Value="1">Indian</asp:ListItem>
                <asp:ListItem Value="2">International</asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>

            <span class="formLable dspBlk mrgBtm10">Project Stream:</span>
            <asp:DropDownList ID="ddrStream" CssClass="txtBox" runat="server" 
                AutoPostBack="True" onselectedindexchanged="ddrStream_SelectedIndexChanged">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>

            <span class="formLable dspBlk mrgBtm10">Project Group:</span>
            <asp:DropDownList ID="ddrGroup" CssClass="txtBox" runat="server">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>
            <span class="formLable dspBlk mrgBtm10">Select Photo:</span>
            <asp:FileUpload ID="fuImage" runat="server" />
            <span class="space10"></span>
        </div>
    </div>
    <div class="float_clear"></div>
    <span class="space15"></span>
    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" 
            Text="Submit" onclick="btnSubmit_Click" />
    <asp:Button ID="btnDelete" runat="server" 
        CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" 
        OnClientClick="return confirm('Are you sure you want to delete this?');" 
        onclick="btnDelete_Click" />
    <asp:Button ID="btnReset" runat="server" 
        CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Reset" 
        onclick="btnReset_Click" />
    <div class="float_clear"></div>
</div>

<div id="viewProject" runat="server">
    <div class="formPanel">
        <h4 class="formTitle themeDarkBg">Project Master</h4>
        <span class="titleLine"></span>
        <div class="pad_10">
            <a href="project-master.aspx?action=new" class="addNew themeClrBlue">Add New</a>
            <span class="space20"></span>
            <asp:GridView ID="gvPro" runat="server" AutoGenerateColumns="False" 
                    CssClass="gvApp" GridLines="None" onrowdatabound="gvPro_RowDataBound" >
                <RowStyle CssClass="row" />
                <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                        <asp:BoundField DataField="projId">
                            <HeaderStyle CssClass="HideCol" />
                            <ItemStyle CssClass="HideCol" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemStyle Width="20%" />
                            <ItemTemplate>
                                <asp:Literal ID="litPhoto" runat="server"></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                   
                        <asp:BoundField DataField="psName" HeaderText="Stream">
                            <ItemStyle Width="30%"/>
                        </asp:BoundField>
                        <asp:BoundField DataField="prjGrpName" HeaderText="Group Name">
                            <ItemStyle Width="30%"/>
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemStyle Width="20%" />
                            <ItemTemplate>
                                <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                <EmptyDataTemplate>
                    <span class="warning">No Projects to Display</span>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>

</asp:Content>

