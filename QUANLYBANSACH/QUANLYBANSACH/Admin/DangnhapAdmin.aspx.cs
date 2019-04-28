using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class DangnhapAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = App_Code.XLDL.GetData("Select * From ADMIN where TenDNAdmin='" +
                txtTenDN.Text + "' and MatKhauAdmin='" + txtMatkhau.Text + "'");
                if (dt.Rows.Count != 0)
                {
                    Session["TenDNAdmin"] = txtTenDN.Text;
                    lbBaoloi.Text = "Thành công!";
                    Response.Redirect("~/Admin/Quanly.aspx");
                }
                else
                    lbBaoloi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
            }
            catch
            {
                lbBaoloi.Text = "Thất bại!";
            }
        }
    }
}