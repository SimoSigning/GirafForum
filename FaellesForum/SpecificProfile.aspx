<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecificProfile.aspx.cs" Inherits="FaellesForum.SpecificProfile" %>

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
             <asp:Button ID="LogoutBtn" class="generalbtns" runat="server" Text="Logout" OnClick="Logout_Click" />
             <br />
             <br />
             <asp:Button ID="ViewProfiles" class="generalbtns" runat="server" Text="View profiles" OnClick="BackToPrevious_Click" />
             <br />
             <br />
             <asp:Button ID="ViewForum" class="generalbtns" runat="server" Text="Forum" OnClick="ViewForum_Click" />
         </div>
        <div id="Maincontent">
        <table class="GeneralFormBody">
            <tr>
                <th class="GeneralFormHead">
                    The profile of <asp:Label ID="UserLabel" runat="server" Text=""></asp:Label>
                </th>
            </tr>
            <tr>
                <td style="font-weight:bold">
                    Username
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="font-weight:bold">
                    First name:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="FirstNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight:bold">
                    Last name:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LastNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight:bold">
                    Email:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight:bold">
                    Adresse:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AdressLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight:bold">
                    Mobil:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="MobilLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        </div>
        </form>
    </div>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>