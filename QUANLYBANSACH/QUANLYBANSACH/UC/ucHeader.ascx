<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="QUANLYBANSACH.UC.ucHeader" %>
<link href="../Scripts/CSS/Style1.css" rel="stylesheet" />

<header>
    <div id="logo">
        <img src="../Images/LOGO.jpg" title="TRANG CHỦ" />
    </div>
    <div id="dn">
        <img src="../Images/dangnhap.jpg" title="ĐĂNG NHẬP" />
        <a href="../DangNhap.aspx">
            <asp:Label ID="labDangNhap" runat="server" Text="Đăng nhập"></asp:Label></a> | <a href="DANGKY.html">ĐĂNG KÝ</a>
        <a href="#">
            <img src="../Images/Giohang.gif" title="GIỎ HÀNG" />GIỎ HÀNG(<span><asp:Label ID="lbSoLuong" runat="server" Text=""></asp:Label></span>)</a>
    </div>
</header>
<nav>
    <div id="subnav">
        <ul>
            <li><a href="TRANGCHU.html">TRANG CHỦ  </a></li>
            <li><a href="GIOITHIEU.html">GIỚI THIỆU  </a></li>
            <li><a href="#">LIÊN HỆ</a></li>
        </ul>
        <div id="search">
            <input type="text" size="36" name="TSEARCH" placeholder="HÃY NHẬP TÊN SÁCH CẦN TÌM ... ">
            <input type="submit" value="TÌM SÁCH" title="TÌM SÁCH">
        </div>
    </div>
</nav>

