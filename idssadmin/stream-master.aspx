<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="stream-master.aspx.cs" Inherits="idssadmin_stream_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="pgTitle">Stream Master</h2>
<span class="space15"></span>

    <div class="formPanel">
        <h4 class="formTitle themeDarkBg">Stream Master</h4>
        <span class="titleLine"></span>
        <div class="pad_10">
            <div class="colorLightBlue">
                <span>Id :</span>
                <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
            </div>
            <span class="space10"></span>
            <span class="formLable dspBlk mrgBtm10">Type:</span>
            <asp:DropDownList ID="ddrType" CssClass="txtBox" runat="server">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
                <asp:ListItem Value="1">Indian</asp:ListItem>
                <asp:ListItem Value="2">International</asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>

            
            <span class="formLable dspBlk mrgBtm10">Stream Name:*</span>
            <asp:TextBox ID="txtName" runat="server" CssClass="txtBox" MaxLength="50" Width="400"></asp:TextBox>
            <span class="space30"></span>
             
            <div class="float_clear"></div>
            <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" 
                    Text="Submit" onclick="btnSubmit_Click" />
            <asp:Button ID="btnDelete" runat="server" 
                CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" 
                OnClientClick="return confirm('Are you sure you want to delete this?');" 
                onclick="btnDelete_Click" />
            <asp:Button ID="btnReset" runat="server" 
                CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Reset" 
                onclick="btnReset_Click" />
            <span class="space15"></span>
            <div class="float_clear"></div>
        </div>
    </div>
    
   
    <div class="float_clear"></div>

    <asp:GridView ID="gvStream" runat="server" AutoGenerateColumns="False" 
            CssClass="gvApp" GridLines="None" onrowcreated="gvStream_RowCreated" 
        onselectedindexchanged="gvStream_SelectedIndexChanged" >
        <RowStyle CssClass="row" />
        <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="psId">
                    <HeaderStyle CssClass="HideCol" />
                    <ItemStyle CssClass="HideCol" />
                </asp:BoundField>
                <asp:BoundField DataField="psName" HeaderText="Stream Name">
                    <ItemStyle Width="60%"/>
                </asp:BoundField>
                <asp:BoundField DataField="basicType" HeaderText="Stream Type">
                    <ItemStyle Width="40%"/>
                </asp:BoundField>

            </Columns>
        <EmptyDataTemplate>
            <span class="warning">No Project Groups to Display</span>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

