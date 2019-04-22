<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfiles.aspx.cs" Inherits="FaellesForum.EditProfiles" %>

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
        <br />
        <asp:Button ID="BackToForum" Class="generalbtns" runat="server" Text="Forum" OnClick="BackToForum_Click" />
    </div>
    <div id="Maincontent">
        <table id="EditProfiles">
            <tr>
                <th id="EditProfilesHeader" colspan="2">
                    Edit user profiles
                </th>
            </tr>
            <tr>
                <td>
                    Username<br />
                    <asp:TextBox ID="EditProfilesUserName" runat="server"></asp:TextBox>
                    <br />
                    Password<br />
                    <asp:TextBox ID="EditProfilesPassWord" runat="server"></asp:TextBox>
                    <br />
                    Firstname<br />
                    <asp:TextBox ID="EditProfilesFirstName" runat="server"></asp:TextBox>
                    <br />
                    Lastname<br />
                    <asp:TextBox ID="EditProfilesLastName" runat="server"></asp:TextBox>
                    <br />
                    Email<br />
                    <asp:TextBox ID="EditProfilesEmail" runat="server"></asp:TextBox>
                    <br />
                    Adresse<br />
                    <asp:TextBox ID="EditProfilesAdresse" runat="server"></asp:TextBox>
                    <br />
                    Mobil<br />
                    <asp:TextBox ID="EditProfilesMobil" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="UpdateUser" runat="server" Text="Update" OnClick="UpdateUser_Click" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:ListBox ID="UserList" runat="server" OnSelectedIndexChanged="UserList_SelectedIndexChanged" Height="160px" Width="370px">
                    </asp:ListBox>
                    <br />
                    <asp:Button ID="ChooseUser" runat="server" OnClick="ChooseUser_Click" Text="Choose User" />
                    <asp:Button ID="GenerateList" runat="server" Text="Generate list" OnClick="GenerateList_Click" />
                </td>
            </tr>
        </table>
        </div>
    </div>
    </form>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>