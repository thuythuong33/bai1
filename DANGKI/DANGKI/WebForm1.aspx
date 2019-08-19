<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DANGKI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 292px;
        }
        .auto-style3 {
            width: 299px;
        }
        .auto-style4 {
            width: 299px;
            height: 26px;
        }
        .auto-style5 {
            width: 292px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 299px;
            height: 38px;
        }
        .auto-style8 {
            width: 292px;
            height: 38px;
        }
        .auto-style9 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label6" runat="server" BackColor="White" ForeColor="Maroon" Text="ĐĂNG KÍ PHÒNG"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label7" runat="server" Text="Họ Tên"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rvfHt" runat="server" ControlToValidate="txtHt" ErrorMessage="Nhập họ tên" Text="Nhập đầy đủ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Cơ Quan"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCq" runat="server" Width="159px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rvfCq" runat="server" ControlToValidate="txtCq" ErrorMessage="Nhập cơ quan" Text="Nhập đầy đủ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Nhập đầy đủ</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtMk" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="cmvMk" runat="server" ControlToValidate="txtMk" ErrorMessage="Nhập mật khẩu">Nhập đầy đủ</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNlmk" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rvfNlmk" runat="server" ControlToValidate="txtNlmk" ErrorMessage="Nhập lại mật khẩu" Text="Nhập đầy đủ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Ngày check in"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCheckin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="cmvCheckin" runat="server" ControlToValidate="txtCheckin" ErrorMessage="Nhập ngày checkin" Operator="DataTypeCheck" Type="Date">Nhập đầy đủ</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label13" runat="server" Text="Số ngày ở"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNgayo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="cmvNgayo" runat="server" ControlToValidate="txtNgayo" ErrorMessage="Nhập số ngày ở" Operator="DataTypeCheck" Type="Integer">Nhập đầy đủ</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label14" runat="server" Text="Loại phòng"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="cbxlLoaiPhong" runat="server" Width="164px">
                        <asp:ListItem>Phòng đơn</asp:ListItem>
                        <asp:ListItem>Phòng đôi</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDk" runat="server" Text="ĐĂNG KÍ" Width="93px" OnClick="btnDk_Click" />
                    &nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblThongbao" runat="server" Text="lblThongbao"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
