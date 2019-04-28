<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachKH.aspx.cs" Inherits="QUANLYBANSACH.DanhSachKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="dgvKhachHang" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="MaKH" HeaderText="Mã KH" />
                    <asp:BoundField DataField="HoTenKH" HeaderText="Họ Tên" />
                    <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới tính" />
                    <asp:BoundField DataFormatString="{0:dd/MM/yyyy}" DataField="NgaySinh" HeaderText="Ngày sinh" />
                    <asp:BoundField DataField="DiaChiKH" HeaderText="Địa chỉ" />
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
