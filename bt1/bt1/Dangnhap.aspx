<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="bt1.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 220px;
        }
        .auto-style2 {
            width: 59px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <input id="txtEmail" runat="server" type="text" /> </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <input id="txtPass" runat="server" type="password" /> </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        
                      <div id="divInfo" runat="server"/>
                           
                     <input id="btnSigNow" type="submit" value="Sign In Now" runat="server" onserverclick="btnSigNow_Click" />
                           
                        
                    </td>
                </tr>
            </table>
        </div>
    </form>
   
</body>
</html>
