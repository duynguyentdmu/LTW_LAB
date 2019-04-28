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
    public partial class Suasach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString["id"] != null)
                {
                    LayTTSach();
                    dropNhaXuatBan.DataSource = XLDL.GetData("select MaNXB,TenNXB from NHAXUATBAN");
                    dropNhaXuatBan.DataTextField = "TenNXB";
                    dropNhaXuatBan.DataValueField = "MaNXB";
                    dropNhaXuatBan.DataBind();

                    dropChuDeSach.DataSource = XLDL.GetData("select MaCD,TenChuDe from CHUDE");
                    dropChuDeSach.DataTextField = "TenChuDe";
                    dropChuDeSach.DataValueField = "MaCD";
                    dropChuDeSach.DataBind();
                }
                else
                {
                    Response.Redirect("~/Admin/Sach.aspx");
                }
            }
        }
        public void LayTTSach()
        {
            DataTable dt = new DataTable();
            dt = XLDL.GetData("select s.MaSach,s.TenSach,s.DonViTinh,s.DonGia from SACH s where s.MaSach=" + Convert.ToInt32(Request.QueryString["id"]));
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            var tensach = "";
            var donvitinh = "";
            var dongia = "";
            var id = Convert.ToInt32(Request.QueryString["id"]);
            foreach(DataListItem item in DataList1.Items)
            {
                TextBox gettensach = (TextBox)item.FindControl("txtTenSach");
                tensach = gettensach.Text;
                TextBox getdonvitinh = (TextBox)item.FindControl("txtDonViTinh");
                donvitinh = getdonvitinh.Text;
                TextBox getdongia = (TextBox)item.FindControl("txtDonGia");
                dongia = getdongia.Text;
            }
            if (fileUpload.HasFile)
            {
                string filename;
                string str = fileUpload.FileName;
                fileUpload.PostedFile.SaveAs(Server.MapPath("~/Images/Sach/" + str));
                filename = str;
                XLDL.Execute("update SACH set TenSach=N'" + tensach + "',DonViTinh=N'" + donvitinh + "',DonGia='" + dongia + "',HinhMinhHoa='" + filename + "',MaCD=" + Convert.ToInt32(dropChuDeSach.SelectedValue) + ",MaNXB=" + Convert.ToInt32(dropNhaXuatBan.SelectedValue) + " where MaSach=" + id + "");
                Response.Redirect("~/Admin/Sach.aspx");
            }
            else
            {
                XLDL.Execute("update SACH set TenSach=N'" + tensach + "',DonViTinh=N'" + donvitinh + "',DonGia='" + dongia + "',MaCD=" + Convert.ToInt32(dropChuDeSach.SelectedValue) + ",MaNXB=" + Convert.ToInt32(dropNhaXuatBan.SelectedValue) + " where MaSach=" + id + "");
                Response.Redirect("~/Admin/Sach.aspx");
            }
        }
    }
}