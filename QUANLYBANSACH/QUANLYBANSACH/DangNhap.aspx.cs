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
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            DataTable dt = XLDL.GetData("select * from KHACHHANG where TenDN='" + txtTaiKhoan.Text + "' and MatKhau='" + txtPassword.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["DangNhap"] = txtTaiKhoan.Text;
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                labLoi.Text = "Sai tên tài khoản hoặc mất khẩu";
            }
        }
    }
}