<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FaellesForum.login" %>

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
        <div id="Leftcontent">
            <form id="form1" runat="server">
              <div>
                    <table id="logintable">
                      <tr>
                        <th>                      
                            &nbsp;</th>
                      </tr>
                      <tr>
                         <td class="loginmeta01">
                            Brugernavn:
                         </td>
                      </tr>
                      <tr>
                         <td class="loginmeta02">
                            <asp:TextBox ID="BrugernavnTxt" runat="server"></asp:TextBox>
                         </td>
                      </tr>
                        <tr>
                         <td class="loginmeta01">
                             Password:
                          </td>
                        </tr>
                       <tr>
                         <td class="loginmeta02">
                            <asp:TextBox ID="PasswordTxt" runat="server"></asp:TextBox>
                         </td>
                        </tr>
                       <tr>
                         <td>
                             <asp:Button ID="LoginBtn" runat="server" OnClick="Login_Click" Text="Login" />
                             <asp:Button ID="CreateUserBtn" runat="server" OnClick="CreateUserBtn_Click" Text="Create user"  />
                             <asp:Label ID="loginbesked" runat="server"></asp:Label>
                         </td>
                        </tr>
                    </table>               
                 </div>
            </form>
        </div>
        <div id="Maincontent">
            Giraffen (latin: Giraffa camelopardalis) er verdens højeste landlevende dyr. En voksen han måler fra 4,7 til 5,3 m og vejer mellem 800 og 1.930 kg. Giraffer er drøvtyggere og lever på den nordafrikanske savanne. Giraffer danner løse grupper på op til 50 giraffer. Pga. deres lange hals kan bide løvet af de høje akacietræer, og den 45 cm lange tunge når bladene, uden at giraffen bliver stukket af torne. Giraffens forben er længere end bagbenene. Det giver giraffen en udtalt pasgang. Dyret har mørke felter på en lys brun pels. Romerne troede, at giraffen var en blanding af leoparden og kamelen og kaldte den derfor camelopardalis. Denne betegnelse er senere indgået i dyrets videnskabelige navn. Navnet &#39;giraf&#39; stammer fra arabisk.
        </div>
    </div>
    <div id="Footer">
        Copyright © girafentusiast foreningen
    </div>
</body>
</html>
