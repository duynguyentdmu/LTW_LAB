using QUANLYBANSACH.App_Code;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class ThemSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dropNhaXuatBan.DataSource = XLDL.GetData("select MaNXB,TenNXB from NHAXUATBAN");
                dropNhaXuatBan.DataTextField = "TenNXB";
                dropNhaXuatBan.DataValueField = "MaNXB";
                dropNhaXuatBan.DataBind();

                dropChuDe.DataSource = XLDL.GetData("select MaCD,TenChuDe from CHUDE");
                dropChuDe.DataTextField = "TenChuDe";
                dropChuDe.DataValueField = "MaCD";
                dropChuDe.DataBind();
            }
        }

        protected void btnHuyBo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Sach.aspx");
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            var mota = editor1.Value;
            if (fileUpload.HasFile)
            {
                string filename;
                string str = fileUpload.FileName;
                fileUpload.PostedFile.SaveAs(Server.MapPath("~/Images/Sach/" + str));
                filename = str;
                XLDL.Execute("insert into SACH (TenSach,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaCD,MaNXB,NgayCapNhat) values (N'" + txtTenSach.Text + "',N'" + txtDonViTinh.Text + "'," + Convert.ToInt32(txtDonGia.Text) + ",N'" + mota + "','" + filename + "'," + Convert.ToInt32(dropChuDe.SelectedValue) + "," + Convert.ToInt32(dropNhaXuatBan.SelectedValue) + ",'" + txtNgay.Text + "')");
                Response.Write("<h2>Thêm thành công<h2>");
            }
            else
            {
                Response.Write("Chưa có ảnh");
            }
        }
    }
}