<%@ Page Title="News Master | IDSS Admin" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="news-master.aspx.cs" Inherits="idssadmin_news_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(function () {
            $('#<% =txtNDate.ClientID%>').datepick({ dateFormat: 'dd/mm/yyyy' });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">News Master</h2>
    <span class="space15"></span>

    <div id="viewNews" runat="server">
        <a href="news-master.aspx?action=new" class="addNew themeClrBlue">Add New</a>
        <span class="space15"></span>
        <div class="formPanel" >
            <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                CssClass="gvApp" GridLines="None" OnRowDataBound="gvNews_RowDataBound">
                <RowStyle CssClass="row" />
                <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                    <asp:BoundField DataField="newsId">
                        <HeaderStyle CssClass="HideCol" />
                        <ItemStyle CssClass="HideCol" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nDate" HeaderText="News Date">
                        <ItemStyle Width="20%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="newsTitle" HeaderText="News Title">
                        <ItemStyle Width="50%"/>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemStyle Width="20%" />
                        <ItemTemplate>
                            <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Add Photos">
                    <ItemStyle Width="10%" />
                    <ItemTemplate>
                        <asp:Literal ID="litAddPhotos" runat="server"></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                    </Columns>
                <EmptyDataTemplate>
                    <span class="warning">No News to Display</span>
                </EmptyDataTemplate>
            </asp:GridView>           
        </div>
    </div>

    <div id="editNews" runat="server">
        <div class="formPanel">
            <h4 class="formTitle themeDarkBg"><%=pgTitle %></h4>
            <span class="titleLine"></span>
            <div class="pad_10">
                <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">News Date:</span>
                <asp:TextBox ID="txtNDate" runat="server" Width="210" CssClass="txtBox"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">News Title:</span>
                <asp:TextBox ID="txtTitle" CssClass="txtBox"  Width="600" MaxLength="200" runat="server"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">News Description:</span>
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="600" Height="100" CssClass="txtBox"></asp:TextBox>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">News Image:</span>
                <asp:FileUpload ID="fuImg" runat="server"  />
                <span class="space10"></span>
            </div>
        </div>
        <span class="space20"></span>
        <asp:Button ID="btnSave" runat="server" 
            CssClass="buttonBlue float_left mrgRgt10" Text="Save Info"  
            OnClick="btnSave_Click" />

        <asp:Button ID="btnDelete" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" 
            OnClick="btnDelete_Click" />

        <asp:Button ID="btnCancel" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Cancel" 
            OnClick="btnCancel_Click" />
        
        <span class="space40"></span>
    </div>
</asp:Content>

