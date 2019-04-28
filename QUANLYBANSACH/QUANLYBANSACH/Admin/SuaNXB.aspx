<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SuaNXB.aspx.cs" Inherits="QUANLYBANSACH.Admin.SuaNXB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table width="400" border="1" cellpadding="5">
  <tbody>
    <tr>
      <td colspan="3" ALIGN="CENTER">CẬP NHẬT NHÀ XUÂT BẢN</td>
     
    </tr>
    <tr>
      <td class="auto-style1">Mã nhà xuất bản</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtMaNXB" ReadOnly></asp:TextBox></td>
    </tr>
       <tr>
      <td class="auto-style1">Tên nhà xuất bản</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtTenNXB"></asp:TextBox></td>
    </tr>
    <tr>
      <td class="auto-style1">Địa chỉ</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtDiaChi"></asp:TextBox></td>
  <tr>
      <td class="auto-style1">Điện thoại</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtDienthoai"></asp:TextBox></td>
    </tr>
    </tr>
    <tr>
      <td ></td>
      <td colspan="2"><asp:Button runat="server" Text="Lưu" OnClick="Unnamed3_Click" /></td>
  
    </tr>

  </tbody>
</table>

</asp:Content>
