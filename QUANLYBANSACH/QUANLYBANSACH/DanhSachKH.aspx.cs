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
    public partial class DanhSachKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = XLDL.GetData("select MaKH,HoTenKH,GioiTinh,NgaySinh,DiaChiKH from KHACHHANG");
                if (dt.Rows.Count > 0)
                {
                    dgvKhachHang.DataSource = dt;
                    dgvKhachHang.DataBind();
                }
            }
        }
    }
}