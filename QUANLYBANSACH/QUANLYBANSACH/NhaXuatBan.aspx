<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NhaXuatBan.aspx.cs" Inherits="QUANLYBANSACH.NhaXuatBan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [NHAXUATBAN]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaNXB" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MaNXB" HeaderText="Mã NXB" InsertVisible="False" ReadOnly="True" SortExpression="MaNXB" />
                    <asp:BoundField DataField="TenNXB" HeaderText="Tên NXB" SortExpression="TenNXB" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                    <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" SortExpression="DienThoai" />
                    <asp:HyperLinkField HeaderText="Xem sách" Text="Xem sách" DataNavigateUrlFields="MaNXB" DataNavigateUrlFormatString="~/SachNhaXuatBan?MaNXB={0}" />
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
