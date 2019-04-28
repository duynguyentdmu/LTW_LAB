using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNAdmin"] == null)
                Response.Redirect("~/Admin/DangnhapAdmin.aspx");
            else
            {
                try
                {
                    DataTable dt = App_Code.XLDL.GetData("Select * From NHAXUATBAN");
                    GrNhaxuatban.DataSource = dt;
                    GrNhaxuatban.DataBind();
                }
                catch
                {
                    lbBaoloi.Text = "Thất bại!";
                }
            }

        }
        protected void GrNhaxuatban_RowCommand(object sender, GridViewCommandEventArgs
e)
        {
            if (e.CommandName == "Nutxoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(GrNhaxuatban.Rows[chiso].Cells[0].Text);
                    string str = "Delete from NHAXUATBAN where MaNXB=" + ma;
                    App_Code.XLDL.Execute(str);
                    Response.Redirect("~/Admin/Nhaxuatban.aspx");
                }
                catch
                {
                    lbBaoloi.Text = "Thất bại!";
                }
            }
        }

        protected void GrNhaxuatban_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}