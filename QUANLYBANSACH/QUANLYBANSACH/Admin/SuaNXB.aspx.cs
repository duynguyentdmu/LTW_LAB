using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class SuaNXB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int asd = Convert.ToInt32(Request.QueryString["Ma"]);
            DataTable dt = App_Code.XLDL.GetData("Select * From NHAXUATBAN");
            txtMaNXB.Text = asd.ToString();
            txtTenNXB.Text = App_Code.XLDL.GetValue("Select TenNXB From NHAXUATBAN where MaNXB = '" + asd + "'");
            txtDiaChi.Text = App_Code.XLDL.GetValue("Select DiaChi From NHAXUATBAN where MaNXB = '" + asd + "'");
            txtDienthoai.Text = App_Code.XLDL.GetValue("Select DienThoai From NHAXUATBAN where MaNXB = '" + asd + "'");


        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            int asd = Convert.ToInt32(Request.QueryString["Ma"]);        
            App_Code.XLDL.Execute("update NHAXUATBAN SET TenNXB=N'" + txtTenNXB.Text + "', DiaChi=N'" + txtDiaChi.Text + "', DienThoai='" + txtDienthoai.Text + "' where MaNXB=" + asd);
            Response.Redirect("~/Admin/Nhaxuatban.aspx");
        }
    }
}