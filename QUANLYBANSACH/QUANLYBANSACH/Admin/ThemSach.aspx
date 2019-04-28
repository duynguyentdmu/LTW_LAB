<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemSach.aspx.cs" Inherits="QUANLYBANSACH.Admin.ThemSach" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../ckeditor/ckeditor.js"></script>
    <script src="../ckeditor/config.js"></script>
    <script src="../ckeditor/styles.js"></script>
    <style>
        td {
            font-size: 16px;
        }

        .table {
            margin-top: -7px;
            margin-left: 15px;
            width: 100%;
            background-color: antiquewhite;
        }
    </style>
    <table class="table">
        <tr>
            <td>Tên sách</td>
            <td>
                <asp:TextBox ID="txtTenSach" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTenSach" runat="server" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Đơn vị tính</td>
            <td>
                <asp:TextBox ID="txtDonViTinh" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtDonViTinh" runat="server" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Đơn giá</td>
            <td>
                <asp:TextBox TextMode="Number" ID="txtDonGia" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDonGia" runat="server" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mô tả</td>
            <td>
                <textarea cols="80" class="ckeditor" id="editor1" runat="server" name="editor1" rows="10"></textarea>
            </td>
            <td>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMoTa" runat="server" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td>Hình minh họa</td>
            <td>
                <asp:FileUpload ID="fileUpload" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Chủ đề</td>
            <td>
                <asp:DropDownList ID="dropChuDe" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Nhà xuất bản</td>
            <td>
                <asp:DropDownList ID="dropNhaXuatBan" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Ngày cập nhật</td>
            <td>
                <asp:TextBox TextMode="Date" ID="txtNgay" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
            </td>
        </tr>
    </table>
    <script>
        function HuyBo() {
            location.href = 'Sach.aspx';
        }
    </script>
</asp:Content>
