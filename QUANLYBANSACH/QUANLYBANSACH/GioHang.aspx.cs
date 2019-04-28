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
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["DangNhap"] == null)
                    Response.Redirect("~/DangNhap.aspx");
                if (Request.QueryString["Ms"] != null)
                {
                    int Masach = int.Parse(Request.QueryString["Ms"]);
                    DataTable dt = XLDL.GetData("select s.MaSach,s.TenSach,s.DonGia from SACH s where s.MaSach=" + Masach + "");
                   
                    String Tensach = dt.Rows[0][1].ToString();
                    float Dongia = float.Parse(dt.Rows[0][2].ToString());
                    int Soluong = 1;
                    ThemVaoGio(Masach, Tensach, Dongia, Soluong);
                }
                if (Session["Giohang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["GioHang"];
                    System.Decimal tongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["Thanhtien"] = Convert.ToInt32(r["SoLuong"])
                       * Convert.ToDecimal(r["Dongia"]);
                        tongThanhTien +=
                       Convert.ToDecimal(r["Thanhtien"]);
                        labThanhTien.Text = tongThanhTien.ToString();
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        public void ThemVaoGio(int MaSach, string TenSach, float DonGia, int SoLuong)
        {
            DataTable dt;
            if (Session["GioHang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("Masach");
                dt.Columns.Add("Tensach");
                dt.Columns.Add("Dongia");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("Thanhtien");
            }
            else
                dt = (DataTable)Session["GioHang"];
            int dong = SPdacotronggiohang(MaSach, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SoLuong"] =
               Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["Masach"] = MaSach;
                dr["Tensach"] = TenSach;
                dr["Dongia"] = DonGia;
                dr["SoLuong"] = SoLuong;
                dr["Thanhtien"] = DonGia * SoLuong;
                dt.Rows.Add(dr);
            }
            Session["GioHang"] = dt;
        }
        public static int SPdacotronggiohang(int Masach, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["Masach"].ToString()) == Masach)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }

        protected void btnTiepTucMuaHang_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index.aspx");
        }

        protected void btnXoaGioHang_Click(object sender, EventArgs e)
        {
            Session["Giohang"] = null;
            Response.Redirect("~/Index.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in GridView1.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    int index = r.RowIndex;
                    var a = GridView1.DataKeys[index].Value.ToString();
                    var b = dr["Masach"].ToString();
                    if (a == b)
                    {
                        TextBox t = (TextBox)r.Cells[3].FindControl("txtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                            dt.Rows.Remove(dr);
                        else
                            dr["SoLuong"] = t.Text;
                        break;
                    }
                }
            }
            Session["Giohang"] = dt;
            Response.Redirect("~/GioHang.aspx");
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ThanhToan.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "NutXoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["Giohang"] = dt;
                    Response.Redirect("~/Giohang.aspx");
                }
                catch
                {
                    Response.Redirect("~/GioHang.aspx");
                }
            }
        }
    }
}