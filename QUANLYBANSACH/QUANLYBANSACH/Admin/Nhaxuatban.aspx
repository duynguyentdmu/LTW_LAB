<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Nhaxuatban.aspx.cs" Inherits="QUANLYBANSACH.Admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form id="form1">
        <asp:Label runat="server" align="center" BackColor="Orange">DANH SÁCH NHÀ XUẤT BẢN</asp:Label>
        <br />
        <%-- <asp:HyperLink ID="HyperLink1" r>Thêm nhà xuất bản</asp:HyperLink>--%>
        <br />
        <asp:GridView runat="server" ID="GrNhaxuatban" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaNXB" Width="564px" OnRowCommand="GrNhaxuatban_RowCommand" OnSelectedIndexChanged="GrNhaxuatban_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MaNXB" HeaderText="MaNXB" InsertVisible="False" ReadOnly="True" SortExpression="MaNXB" />
                <asp:BoundField DataField="TenNXB" HeaderText="TenNXB" SortExpression="TenNXB" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                <asp:ButtonField ButtonType="Image" CommandName="Nutxoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Admin/SuaNXB.aspx?Ma="+Eval("MaNXB") %>'>Sửa</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="lbBaoloi" runat="server" Text="Label"></asp:Label>
        <br />

    </form>
</asp:Content>
