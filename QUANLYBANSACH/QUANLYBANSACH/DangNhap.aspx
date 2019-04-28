<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="QUANLYBANSACH.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .table {
               width:100%;
               font-size:18px;
               padding-left:35px;
               margin-top:25px;
               padding-top:25px;
               border:solid;
               background-color:#79b22f;
        }
        .btn{
            height:30px;
            width:90px;
            margin-top:25px;
            color:white;
            font-size:16px;
            font-family:'Times New Roman';
            font-weight:bold;
            background-color:green;
        }
        .loi{
            color:red;
        }
        .text{
            border:1px solid #000;
        }
    </style>
    <section>
    <table class="table">
        <tr>
            <td>Tài khoản</td>
            <td>
                <asp:TextBox CssClass="text"  ID="txtTaiKhoan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td>
                <asp:TextBox CssClass="text"  ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td></td>
            <td>
                <asp:Button CssClass="btn" ID="btnDangNhap"  runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="loi" ID="labLoi" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        </section>
</asp:Content>
