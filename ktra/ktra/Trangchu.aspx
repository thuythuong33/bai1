<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="ktra.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="TRANG CHỦ"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Taikhoan" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Taikhoan" HeaderText="Taikhoan" ReadOnly="True" SortExpression="Taikhoan" />
                            <asp:BoundField DataField="Matkhau" HeaderText="Matkhau" SortExpression="Matkhau" />
                            <asp:BoundField DataField="Nhaplaimatkhau" HeaderText="Nhaplaimatkhau" SortExpression="Nhaplaimatkhau" />
                            <asp:BoundField DataField="Hoten" HeaderText="Hoten" SortExpression="Hoten" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KIEMTRAConnectionString %>" SelectCommand="SELECT * FROM [kiemtra]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
