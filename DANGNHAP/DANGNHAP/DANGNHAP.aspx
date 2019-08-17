<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="DANGNHAP.DANGNHAP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
        .auto-style2 {
            width: 241px;
        }
        .auto-style3 {
            width: 191px;
            height: 26px;
        }
        .auto-style4 {
            width: 241px;
            height: 26px;
            margin-left: 40px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="ĐĂNG NHẬP" ForeColor="#CC0000"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Tài khoản"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTk" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtMk" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnDn" runat="server" OnClick="btnDn_Click" Text="Đăng nhập" />
                </td>
                <td>
                    <asp:Label ID="lblThongbao" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
