<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Suasach.aspx.cs" Inherits="QUANLYBANSACH.Admin.Suasach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="757px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label1" runat="server" Text="Tên sách"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenSach" runat="server" Width="278px" Text='<%# Eval("TenSach") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label2" runat="server" Text="Đon vị tính"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDonViTinh" runat="server" Width="463px" Text='<%# Eval("DonViTinh") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label3" runat="server" Text="Đơn giá"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDonGia" runat="server" Width="458px" Text='<%# Eval("DonGia") %>' Height="25px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <table>
            <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label4" runat="server" Text="Hình minh họa"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="fileUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label5" runat="server" Text="Chủ đề sách"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dropChuDeSach" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px">
                        <asp:Label ID="Label6" runat="server" Text="Nhà xuất bản"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dropNhaXuatBan" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px"></td>
                    <td>
                        <asp:Button ID="btnSua" runat="server" Text="Update" OnClick="btnSua_Click" />
                    </td>
                </tr>
    </table>
</asp:Content>
