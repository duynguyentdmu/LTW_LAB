<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="QUANLYBANSACH.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        .gridview {
            width: 100%;
            text-align: center;
            font-family: 'Times New Roman';
            font-size: 18px;
            margin-top:15px;
        }

        .soluong {
            font-size: 18px;
            text-align: center;
        }

        .button {
            padding-left: 20px;
        }
        .btn{
            margin-right:25px;
            height:40px;
            width:150px;
            background-color:green;
            color:white;
            font-family:'Times New Roman';
            font-size:16px;
            font-weight:bold;
            cursor:pointer;
        }
        .thanhtien{
            font-size:20px;
            padding-top:10px;
            padding-bottom:10px;
            font-family:'Times New Roman';
            font-weight:bold;
            padding-left:550px;
            color:red;
        }
        .btn:hover{
            background-color:red;
        }
    </style>
    <section>
        <asp:GridView CssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Masach" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSach" HeaderText="Mã sách" />
                <asp:BoundField DataField="TenSach" HeaderText="Tên sách" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                <asp:TemplateField HeaderText="Số lượng" ControlStyle-CssClass="soluong">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                    </ItemTemplate>

<ControlStyle CssClass="soluong"></ControlStyle>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" />
                
                <asp:ButtonField ButtonType="Image" CommandName="NutXoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Xóa" />
                
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
        <div class="thanhtien">
            <span>Thành tiền: </span><asp:Label ID="labThanhTien" runat="server" Text="Label"></asp:Label> vnđ
        </div>
        <div class="button">
            <asp:Button CssClass="btn" ID="btnTiepTucMuaHang" runat="server" Text="Tiếp tục mua hàng" OnClick="btnTiepTucMuaHang_Click" />
            <asp:Button CssClass="btn" ID="btnXoaGioHang" runat="server" Text="Xóa giỏ hàng" OnClick="btnXoaGioHang_Click" />
            <asp:Button CssClass="btn" ID="btnUpdate" runat="server" Text="Cập nhật giỏ hàng" OnClick="btnUpdate_Click" />
            <asp:Button CssClass="btn" OnClientClick="ThanhToan()" ID="btnThanhToan" runat="server" Text="Thanh toán" OnClick="btnThanhToan_Click" />
        </div>

    </section>
    <%--<script>
        function ThanhToan() {
            alert("Thanh toán thành công");
            window.location.href = '/Index.aspx'
        }
    </script>--%>
</asp:Content>
