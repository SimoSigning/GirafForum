<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FaellesForum.Admin" %>

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
    <form id="form1" runat="server">
    <div id="Content" aria-atomic="False">
    <div id="Leftcontent">
        Velkommen
        <asp:Label ID="brugernavnlabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="LogoutBtn" runat="server" OnClick="Logout_Click" Text="Logout"  />
    </div>
    <div id="Maincontent">
        <asp:Label ID="AdminPageLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Modules:
        <br />
        <asp:Button ID="EditProfilesBtn" Class="generalbtns" runat="server" Text="Edit Profiles" OnClick="EditProfilesBtn_Click" />
        <br />
        <br />
        <br />
        Forum:
        <br />
        <asp:Button ID="GoToForumBtn" Class="generalbtns" runat="server" Text="Go to forum" OnClick="GoToForumBtn_Click" />
        <br />
    </div>
    </div>
    </form>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>

