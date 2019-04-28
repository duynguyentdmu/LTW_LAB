<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DangnhapAdmin.aspx.cs" Inherits="QUANLYBANSACH.Admin.DangnhapAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head >
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74px;
        }
        </style>
</head>
<body>
    <form id="form1">
      
        <table width="400" border="1" cellpadding="5">
  <tbody>
    <tr>
      <td colspan="3" aligin="center">ĐĂNG NHẬP&nbsp;</td>
     
    </tr>
    <tr>
      <td class="auto-style1">Tài khoản</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtTenDN"></asp:TextBox></td>
     
    </tr>
    <tr>
      <td class="auto-style1">Mật khẩu</td>
      <td colspan="2"><asp:TextBox runat="server" ID="txtMatkhau"></asp:TextBox></td>
 
    </tr>
    <tr>
      <td ></td>
      <td colspan="2"><asp:Button runat="server" Text="Login" OnClick="Unnamed3_Click" /></td>
  
    </tr>

  </tbody>
</table>
        <asp:Label ID="lbBaoloi" runat="server"></asp:Label>
    </form>
</body>




</asp:Content>
