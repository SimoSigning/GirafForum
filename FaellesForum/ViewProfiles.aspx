<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfiles.aspx.cs" Inherits="FaellesForum.ViewProfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Clientfiles/girafstyles.css" />
</head>
<body>
    <div id="Header">
        Giraf Forum
    </div>
    <div id="Content">
        <form id="form1" runat="server">
        <div id="Leftcontent">          
                <asp:Button ID="LogoutBtn" runat="server" OnClick="Logout_Click" Text="Logout"  />
                <br />
                <br />
                <br />
                <asp:Button ID="ToForum" class="generalbtns" runat="server" Text="Forum" OnClick="ToForum_Click" />
        </div>
        <div id="Maincontent">
            Click a username to view profile.
            <br />
            <asp:ListBox ID="UserList" CssClass="ListBoxStyle" runat="server" Height="180px" Width="440px" AutoPostBack="true" OnSelectedIndexChanged="UserList_SelectedIndexChanged">

            </asp:ListBox>
            <br />
            zvcb<br />
            <br />
            <br />
        </div>
        </form>
    </div>

    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>