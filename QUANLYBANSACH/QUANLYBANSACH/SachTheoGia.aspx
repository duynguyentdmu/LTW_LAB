<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SachTheoGia.aspx.cs" Inherits="QUANLYBANSACH.SachTheoGia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="text-align:center;font-size:45px;color:blue">SÁCH THEO GIÁ</label>
            <br />
            Từ:<asp:TextBox ID="txtTu" runat="server"></asp:TextBox>Từ:<asp:TextBox ID="txtDen" runat="server"></asp:TextBox>
           <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtDen" runat="server" ValidationExpression="\d+" ErrorMessage="giá đến phải là số"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtTu" runat="server" ValidationExpression="\d+" ErrorMessage="giá từ phải là số"></asp:RegularExpressionValidator>--%>
            <asp:Button ID="btnXem" runat="server" Text="Xem"  OnClick="btnXem_Click" />
            <asp:GridView ID="dgvSach" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
