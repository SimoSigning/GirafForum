<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="FaellesForum.Forum" %>

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
    <div id="Content">
    <div id="Leftcontent">
        Velkommen
        <asp:Label ID="brugernavnlabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="LogoutBtn" runat="server" OnClick="Logout_Click" Text="Logout"  />
        <br />
        <br />
        <table id="profiletable">
            <tr>
                <th id="profilehead">Profile</th>
            </tr>
            <tr>
                <td class="profileheaders">
                Username:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="UserLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="profileheaders">First name:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="FirstNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="profileheaders">Last name:</td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="LastNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="profileheaders">Email:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="profileheaders">Adresse:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AdressLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="profileheaders">Mobil:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="MobilLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    <asp:Button ID="EditProfileBtn" runat="server" OnClick="EditProfileBtn_Click" Text="Edit profile"  />
        <br />
        <br />
        <asp:Button ID="ViewProfiles" class="generalbtns" runat="server" Text="View profiles" OnClick="ViewProfiles_Click" />
        <br />
        <br />
        <asp:Button ID="GoToAdminBtn" Class="generalbtns" runat="server" Text="Admin" OnClick="GoToAdminBtn_Click" />
    </div>
    <div id="Maincontent">
            <div>
<table id="forumtable">
                    <tr>
                      <th>
                          Post a message
                      </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="BeskedBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button class="ForumBtns" ID="SaveBtn" runat="server" OnClick="Save_Click" Text="Save" />
                            <asp:Button class="ForumBtns" ID="ReadBtn" runat="server" Onclick="Read_Click" Text="Read all messages" />
                            <asp:Button class="ForumBtns" ID="ResetBtn" runat="server" OnClick="Reset_Click" Text="Reset" />
                            <asp:Button class="ForumBtns" ID="DeleteBtn" runat="server" OnClick="Delete_Click" Text="Delete all messages" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ListBox ID="MessageList" runat="server" EnableTheming="False" OnSelectedIndexChanged="MessageList_SelectedIndexChanged"></asp:ListBox>
                        </td>
                    </tr>
                </table>  
                <br />            
            </div>
    </div>
    </div>
    </form>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>
