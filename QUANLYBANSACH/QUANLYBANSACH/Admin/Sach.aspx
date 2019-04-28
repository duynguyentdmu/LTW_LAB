<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Sach.aspx.cs" Inherits="QUANLYBANSACH.Admin.Sach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .img{
            width:80px;
            height:100px;
        }
    </style>
    <a style="margin-left:15px;color:black;font-size:16px;font-weight:bold;font-family:'Times New Roman';" href="ThemSach.aspx">Thêm sách</a>
    <asp:GridView ID="gvSach" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvSach_PageIndexChanging" AllowPaging="True" PageSize="3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="MaSach" HeaderText="Mã sách" />
            <asp:BoundField DataField="TenSach" HeaderText="Tên sách" />
            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn vị tính" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
            <asp:ImageField ControlStyle-CssClass="img" DataImageUrlField="HinhMinhHoa" DataImageUrlFormatString="~/Images/Sach/{0}" HeaderText="Hình ảnh">
            </asp:ImageField>
            <asp:BoundField DataField="TenChuDe" HeaderText="Chủ đề" />
            <asp:BoundField DataField="TenNXB" HeaderText="Nhà xuất bản" />
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:LinkButton ID="btnSua" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnCommand="btnSua_Command">
                       <img src="../Images/Edit.png" /></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:LinkButton ID="btnXoa" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="btnXoa_Click" OnCommand="btnXoa_Command">
                       <img src="../Images/Delete.jpg" /></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:Label ID="lbLoi1" ForeColor="Red" runat="server" Text=""></asp:Label>
</asp:Content>
