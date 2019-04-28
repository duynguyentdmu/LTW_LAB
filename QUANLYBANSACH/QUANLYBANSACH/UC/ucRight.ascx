<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucRight.ascx.cs" Inherits="QUANLYBANSACH.UC.ucRight" %>
<link href="../Scripts/CSS/Style1.css" rel="stylesheet" />

<aside id="right">
    <div id="sachbannhieu">
        <p>SÁCH BÁN CHẠY</p>
        <marquee direction="up" scrollamount="3" scrolldelay="100" onmousemove="STOP()" onmouseout="START()">
                    <p><a href="#"><img src="../Images/Sach/TH001.jpg" /> THỦ THUẬT LẬP trÌNH VISUAL BASIC 6</a></p>
                    
                    <p><a href="#"><img src="../Images/Sach/TH002.jpg" /> HƯỚNG DẪN TỰ HỌC PHOTOSHOP (PHOTOSHGOP 6.0)</a></p> 
                    
                    <p><a href="#"><img src="../Images/Sach/TH003.jpg" />CAN BAN VE PHOTOSHOP CS CAN CHINH VA XU LY MAU</a></p>
                    
                    <p><a href="#"><img src="../Images/Sach/TH004.jpg" />TIN HỌC CƠ BẢN</a></p>
        </marquee>
    </div>
    <div id="lienketwebsite">
        <p>LIÊN KẾT WEBSITE</p>
        <select onchange="WINDOW.OPEN(THIS.optionS[THIS.selectEDINDEX].VALUE,'_BLANK')">
            <option selected>-------- TIN TỨC --------</option>
            <option value="http://www.tdmu.edu.vn">ĐẠI HỌC THŨ DẦU MỘT</option>
            <option value="http://www.iteee.tdmu.edu.vn">KHOA CNTT</option>
        </select>
    </div>
    <div id="soluottruycap">
        <p>THỐNG KÊ TRUY CẬP</p>
        <h4>TỔNG TRUY CẬP : 1,156,045 </h4>
        <h4>ĐANG ONLINE : 5,562 </h4>
    </div>
</aside>
