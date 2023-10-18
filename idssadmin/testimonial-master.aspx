<%@ Page Title="" Language="C#" MasterPageFile="~/idssadmin/MasterAdmin.master" AutoEventWireup="true" CodeFile="testimonial-master.aspx.cs" Inherits="idssadmin_testimonial_master" %>
<%@ MasterType VirtualPath="~/idssadmin/MasterAdmin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Testimonials Master</h2>
<span class="space15"></span>
    <div id="edittestimonial" runat="server">
        <div class="formPanel">
            <h4 class="formTitle themeDarkBg">Testimonials Master</h4>
            <span class="titleLine"></span>
            <div class="pad_10">
                <div class="colorLightBlue">
                    <span>Id :</span>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space10"></span>
                <span class="formLable dspBlk mrgBtm10">Name:*</span>
                <asp:TextBox ID="txtName" runat="server" CssClass="txtBox" MaxLength="50" Width="600"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Company Name:</span>
                <asp:TextBox ID="txtCompNm" runat="server" CssClass="txtBox" MaxLength="400" Width="600"></asp:TextBox>
                <span class="space10"></span>

                <span class="formLable dspBlk mrgBtm10">Testimonial Data:*</span>
                <asp:TextBox ID="txtTestDesc" runat="server" CssClass="txtBox" Width="600" TextMode="MultiLine"  Height="150"></asp:TextBox>
                <span class="space10"></span>

                <label>Upload Image: <span>*Image should be 200x200 pixel in size.</span></label>
                <span class="space10"></span>
                <div class="input-group">
                    <asp:FileUpload ID="fuImg" runat="server" />
                </div>

            </div>
        </div>
        <span class="space20"></span>
        <asp:Button ID="btnSubmit" runat="server" CssClass="buttonBlue float_left mrgRgt10" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnDelete" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Delete" 
            OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="btnDelete_Click" />
        <asp:Button ID="btnCancel" runat="server" 
            CssClass="addNew themeClrBlue float_left mrgRgt10" Text="Cancel" OnClick="btnCancel_Click" />
        <div class="float_clear"></div>
    </div>
    
    <div id="viewtestimonials" runat="server">
        <a href="testimonial-master.aspx?action=new" class="addNew themeClrBlue">Add New</a>
        <span class="space15"></span>
        <div class="formPanel" >
            <asp:GridView ID="gvTestimonials" runat="server" AutoGenerateColumns="False" 
                CssClass="gvApp" GridLines="None" OnPageIndexChanging="gvTestimonials_PageIndexChanging" OnRowDataBound="gvTestimonials_RowDataBound" >
                <RowStyle CssClass="row" />
                <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                    <asp:BoundField DataField="tmId">
                        <HeaderStyle CssClass="HideCol" />
                        <ItemStyle CssClass="HideCol" />
                    </asp:BoundField>
                    <asp:BoundField DataField="tmName" HeaderText="Name">
                        <ItemStyle Width="30%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="tmCompany" HeaderText="Company Name">
                        <ItemStyle Width="60%"/>
                    </asp:BoundField>
                    
                    <asp:TemplateField>
                        <ItemStyle Width="5%" />
                        <ItemTemplate>
                            <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                <EmptyDataTemplate>
                    <span class="warning">No Testimonials to Display</span>
                </EmptyDataTemplate>
            </asp:GridView>           
        </div>
    </div>


</asp:Content>

