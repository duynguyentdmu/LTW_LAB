using QUANLYBANSACH.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["DangNhap"] != null)
                {
                    LayThongTinKhachHang();
                    if (Session["Giohang"] != null)
                    {
                        DataTable dt = new DataTable();
                        dt = (DataTable)Session["GioHang"];
                        System.Int32 tongThanhTien = 0;
                        foreach (DataRow r in dt.Rows)
                        {
                            r["Thanhtien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToInt32(r["Dongia"]);
                            tongThanhTien += Convert.ToInt32(r["Thanhtien"]);
                            labThanhTien.Text = tongThanhTien.ToString();
                        }
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<h1>Đơn hàng của bạn đã được đặt! Hãy chờ cuộc gọi của chúng tôi</h1>");
                    }
                }
                else
                {
                    Response.Redirect("~/DangNhap.aspx");
                }
            }
        }
        public void LayThongTinKhachHang()
        {
            DataTable dt = new DataTable();
            dt = XLDL.GetData("select kh.MaKH,kh.HoTenKH,kh.DiaChiKH,DienThoaiKH,kh.Email from KHACHHANG kh where kh.TenDN='" + Session["DangNhap"].ToString() + "'");
            listThongTinKH.DataSource = dt;
            listThongTinKH.DataBind();
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = XLDL.GetData("select kh.MaKH,kh.HoTenKH,kh.DiaChiKH,DienThoaiKH,kh.Email from KHACHHANG kh where kh.TenDN='" + Session["DangNhap"].ToString() + "'");
            foreach(DataRow r in dt.Rows)
            {
                XLDL.Execute("insert into DONDATHANG (MaKH,NgayDH,TriGia,DaGiao,NgayGiaoHang,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,HTThanhToan,HTGiaoHang) values (" + r[0] + ",GETDATE()," + labThanhTien.Text + ",0,GETDATE()+7,'" + r[1] + "','" + r[2] + "','" + r[3] + "',1,1)");
                DataTable dt1 = new DataTable();
                dt1 = (DataTable)Session["GioHang"];
                foreach (DataRow r1 in dt1.Rows)
                {
                    int sodonhang = Convert.ToInt32(XLDL.GetValue("select MAX(dh.SoDH) from DONDATHANG dh"));
                    XLDL.Execute("insert into CTDATHANG (SoDH,MaSach,DonGia,SoLuong) values (" + sodonhang + "," + Convert.ToInt32(r1[0]) + "," + Convert.ToInt32(r1[2]) + "," + Convert.ToInt32(r1[3]) + ")");
                }
            }
            Session["Giohang"] = null;
            Response.Redirect("~/ThanhToan.aspx");
        }
    }
}