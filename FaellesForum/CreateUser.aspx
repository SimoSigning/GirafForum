<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="FaellesForum.CreateUser" %>

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
             <asp:Button ID="BackToLogin" class="generalbtns" runat="server" Text="Go back" OnClick="BackToLogin_Click" />
         </div>
        <div id="Maincontent">    
                <div>
                    <table class="GeneralFormBody">
                        <tr>
                            <th class="GeneralFormHead">
                                Create User
                            </th>
                        </tr>
                        <tr>
                            <td>
                                Brugernavn
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:TextBox ID="BrugernavnTxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:TextBox ID="PasswordTxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:Button ID="CreateUserBtn02" class="generalbtns" runat="server" OnClick="Create_Click" Text="Submit" />
                            </td>
                        </tr>
                    </table>
                   
                </div>
        </div>
        </form>
    </div>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>
