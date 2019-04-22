<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="FaellesForum.EditProfile" %>

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
        <table id="EditProfileTable">
            <tr>
                <th id="EditProfileHead">
                    Edit your profile here
                </th>
            </tr>
            <tr>
                <td class="editheaders">
                    Password:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditPassWord" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="editheaders">
                    First name:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="editheaders">
                    Last name:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="editheaders">
                    Email:

                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="editheaders">
                    Adresse:

                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditAdresse" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="editheaders">
                    Mobil:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="EditMobil" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="FillPassWord" runat="server" Text=""></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td>                    
                    <asp:Button class="generalbtns" runat="server" OnClick="UpdateProfile" Text="Update profile" />                    
                </td>
            </tr>
            <tr>
                <td>                    
                    <asp:Button class="generalbtns" runat="server" OnClick="BackToForum" Text="Back" />                    
                </td>
            </tr>
            <tr>
                <td>
                    
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

