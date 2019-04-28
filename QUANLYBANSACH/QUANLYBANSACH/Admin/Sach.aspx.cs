using QUANLYBANSACH.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class Sach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LayDataSach();
            }
        }
        public void LayDataSach()
        {
            DataTable dt = new DataTable();
            dt = XLDL.GetData("select s.MaSach,s.TenSach,s.DonViTinh,s.DonGia,s.HinhMinhHoa,cd.TenChuDe,nxb.TenNXB from SACH s,CHUDE cd, NHAXUATBAN nxb where s.MaCD=cd.MaCD and s.MaNXB=nxb.MaNXB");
            gvSach.DataSource = dt;
            gvSach.DataBind();
        }

        protected void gvSach_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSach.PageIndex = e.NewPageIndex;
            LayDataSach();
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
            var id = e.CommandArgument;
            Response.Redirect("~/Admin/Suasach.aspx?id=" + id);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            var id = e.CommandArgument;
            DataTable dt = new DataTable();
            dt = XLDL.GetData("Select * from CTDATHANG where MaSach=" + id);
            if (dt.Rows.Count > 0)
            {
                lbLoi1.Text = "Sản phẩm tồn tại trong hóa đơn không thể xóa";
            }
            else
            {
                XLDL.Execute("DELETE FROM SACH WHERE MaSach=" + id);
                Response.Redirect("~/Admin/Sach.aspx");
            }
        }
    }
}