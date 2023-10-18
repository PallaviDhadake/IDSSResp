<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="idssadmin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IDSS Admin Login</title>

    <link href="css/jquery_notification.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="js/jquery_notification_v.1.js" type="text/javascript"></script>
    <style type="text/css">
        *{margin:0;padding:0}
        body{background:#23282d;font-family:Tahoma, Arial}
        #logWrap{margin:0 auto;width:330px;}
        .titleTxt{font-size:28px;font-weight:normal;color:#19bc9b;margin-top:150px;margin-bottom:20px}
        .posRlt{position:relative}
        .logBox{border:solid 1px #19bc9b}
        .pad15{padding:15px}
        .pad5{padding:5px}
        .spacer15{height:15px;display:block}
        .whiteBase{background:#fff}
        .mrgB5{margin-bottom:5px}
        .mrgB10{margin-bottom:10px}
        .mrgB15{margin-bottom:15px}
        .caption{display:block;color:#585858;font-family:Tahoma, Arial;font-size:14px;}
        .txtFrame{background:#f7f9f8}
        .txt{border:solid 1px #d9d9d9;color:#b0b0b0;padding:10px;width:265px;font-size:14px}
        .btnBox{background:#2d3e50;border:solid 1px #34b6e4;padding:20px 14px}
        .signBtn{float:right;background:#19bc9b;border:solid 1px #91abb8;color:#2d3e50;font-size:16px;font-weight:bold;padding:10px;cursor:pointer}
        .fPass{float:left;display:inline-block;color:#19bc9b;text-decoration:none}
        .clear{clear:both;font-size:0;height:0;line-height:0}
        .ponter{position:absolute;width:24px;height:13px;background:url(pointer.png) no-repeat center center;left:25px;top:-13px}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="logWrap">
                <h1 class="titleTxt">IDSS Admin Login</h1>
                <div class="logBox posRlt" style="border-bottom:none">
                    <div class="ponter"></div>
                    <div class="pad15 whiteBase">
                        <span class="caption mrgB5">User Name</span>
                        <div class="txtFrame pad5">
                            <asp:TextBox ID="txtUserName" runat="server" class="txt"></asp:TextBox>
                        </div>
                        <div class="spacer15"></div>
                        <span class="caption mrgB5">Password</span>
                        <div class="txtFrame pad5">
                            <asp:TextBox ID="txtPwd" runat="server" class="txt" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>
        
                <div class="btnBox" style="border-top:solid 1px #e2e2e2">
                    <a href="forgetPwd.aspx" class="fPass" title="Forgot password recovery">Forgot password?</a>
                    <asp:Button ID="cmdSign" runat="server" Text="Login" class="signBtn" 
                        onclick="cmdSign_Click"  />
                    <div class="clear"></div>
                </div>
                <%=errMsg %>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
