<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachTacGia.aspx.cs" Inherits="QUANLYBANSACH.DanhSachTacGia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="dgvTacGia" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="MaTG" HeaderText="Mã tác giả" />
                    <asp:BoundField DataField="TenTG" HeaderText="Tên tác giả" />
                    <asp:BoundField DataField="DiaChiTG" HeaderText="Địa chỉ tác giả" />
                    <asp:BoundField DataField="DienThoaiTG" HeaderText="Điện thoại tác giả" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />

            </asp:GridView>
        </div>
    </form>
</body>
</html>
