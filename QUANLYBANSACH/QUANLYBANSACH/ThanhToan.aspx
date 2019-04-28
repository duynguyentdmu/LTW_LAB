<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="QUANLYBANSACH.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 750PX;
            height: 200px;
            text-align: center;
        }

        .auto-style2 {
            width: 123px;
        }

        .ttText {
            font-weight: bold;
            font-family: 'Times New Roman';
            font-size: 16px;
        }

        .ttText1 {
            font-weight: bold;
            font-family: 'Times New Roman';
            font-size: 20px;
            text-align: center;
            color: green;
            font-weight: bold;
        }
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
         .thanhtien{
            font-size:20px;
            padding-top:10px;
            padding-bottom:10px;
            font-family:'Times New Roman';
            font-weight:bold;
            padding-left:550px;
            color:red;
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
            margin-bottom:10px;
            float:right;
        }
          .btn:hover{
            background-color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <p style="text-align: center; font-weight: bold; font-family: 'Times New Roman'; font-size: 24px;">THÔNG TIN ĐƠN ĐẶT HÀNG</p>
        <asp:DataList ID="listThongTinKH" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:Label ID="Label1" CssClass="ttText1" runat="server" Text="THÔNG TIN TÀI KHOẢN"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" CssClass="ttText" runat="server" Text="Họ tên"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbHoTen" CssClass="ttText" runat="server" Text='<%# Eval("HoTenKH") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" CssClass="ttText" Text="Địa chỉ" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbDiaChi" CssClass="ttText" runat="server" Text='<%# Eval("DiaChiKH") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" CssClass="ttText" runat="server" Text="Điện thoại"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbDienThoai" CssClass="ttText" runat="server" Text='<%# Eval("DienThoaiKH") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" CssClass="ttText" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbEmail" CssClass="ttText" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:GridView CssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <span>Thành tiền: </span>
            <asp:Label ID="labThanhTien" runat="server" Text="Label"></asp:Label>
            vnđ
        </div>
        <asp:Button CssClass="btn" ID="btnThanhToan" runat="server" Text="Đặt hàng" OnClick="btnThanhToan_Click" />
    </section>
</asp:Content>
