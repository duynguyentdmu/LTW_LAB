<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanTriVien.aspx.cs" Inherits="QUANLYBANSACH.Admin.QuanTriVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin] FROM [ADMIN]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaAdmin" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaAdmin" HeaderText="MaAdmin" InsertVisible="False" ReadOnly="True" SortExpression="MaAdmin" />
            <asp:BoundField DataField="HoTenAdmin" HeaderText="HoTenAdmin" SortExpression="HoTenAdmin" />
            <asp:BoundField DataField="DiaChiAdmin" HeaderText="DiaChiAdmin" SortExpression="DiaChiAdmin" />
            <asp:BoundField DataField="DienThoaiAdmin" HeaderText="DienThoaiAdmin" SortExpression="DienThoaiAdmin" />
            <asp:BoundField DataField="NgaySinhAdmin" HeaderText="NgaySinhAdmin" SortExpression="NgaySinhAdmin" />
            <asp:CheckBoxField DataField="GioiTinhAdmin" HeaderText="GioiTinhAdmin" SortExpression="GioiTinhAdmin" />
            <asp:BoundField DataField="EmailAdmin" HeaderText="EmailAdmin" SortExpression="EmailAdmin" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
</asp:Content>
