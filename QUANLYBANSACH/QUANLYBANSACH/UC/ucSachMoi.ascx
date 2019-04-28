<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSachMoi.ascx.cs" Inherits="QUANLYBANSACH.UC.ucSachMoi" %>
<link href="../Scripts/CSS/Style1.css" rel="stylesheet" />
<script src="../Scripts/bootstrap.js"></script>
<script src="../Scripts/bootstrap.min.js"></script>
<script src="../Scripts/jquery-3.3.1.js"></script>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<section>
    <p>SÁCH MỚI</p>

    <asp:DataList ID="dataSanPham" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="sach">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label CssClass="tensach" ID="labTenSach" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image CssClass="hinhsach" ImageUrl='<%# "~/Images/Sach/"+Eval("HinhMinhHoa") %>' ID="imgHinhSach" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="dongia">ĐƠN GIÁ:<asp:Label CssClass="gia" ID="labDonGia" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/GioHang.aspx?Ms="+Eval("MaSach") %>' ID="linkDatMua" runat="server"><img class="NUTCHONMUA" src="../Images/Chonmua.png"></asp:HyperLink>
                        </td>
                    </tr>

                </table>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <script>
        $(document).ready(function () {
            $("#linkDatMua").find("a").click(function (e) {
                alert("Thêm vào giỏ hàng thành công");
            });
        });
    </script>

    <%--<div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">THỦ THUẬT LẬP TRÌNH VISUAL BASIC 6</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">50,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>




    <div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">QUẢN LÍ CHIẾN LƯỢC</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">100,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>



    <div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">CĂN BẢN VỀ PHOTOSHOP CS TINH CHỈNH VÀ XỬ LÝ MÀU</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">50,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>





    <div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">VISUAL BASIC 2005 TẬP 3 , QUYỂN 2: LẬP trÌNH WEB</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">50,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>




    <div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">GIÁO trÌNH TIN HỌC CƠ BẢN</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">26,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>



    <div class="sach">
        <p class="tensach"><a href="CHITIETSANPHAM.html">LẬP TRÌNH MẠNG TRÊN WINDOWN</a></p>
        <img class="hinhsach" src="../Images/Sach/TH005.jpg">
        <p class="dongia">ĐƠN GIÁ:<span class="gia">86,000 VNĐ</span></p>
        <a href="#">
            <img class="NUTCHONMUA" src="../Images/Chonmua.png"></a>
    </div>--%>


    <!--
                <div align="center">
                <p><font size="6" color="blue"><b>GIÁO trÌNH TIN HỌC CƠ BẢN</b></font></p>
                <img src="../Images/Sach/TH005.jpgh/THCB.jpg" width="200" height="250">
                <p>DON GIA : <font size="5" color="red">26,000 VNĐ </font></p>
                <img src="../Images/Chonmua.pngmua.png" width="137" height="45">
                </div>
                -->
</section>
