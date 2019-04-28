using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.UC
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["DangNhap"] != null)
                {
                    labDangNhap.Text = Session["DangNhap"].ToString();
                }
                else
                {
                    labDangNhap.Text = "Đăng nhập";
                }
                if (Session["Giohang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["Giohang"];
                    System.Int32 tongSL = 0;
                   foreach(DataRow r in dt.Rows)
                    {
                        tongSL += Convert.ToInt32(r["SoLuong"]);
                        lbSoLuong.Text = tongSL.ToString();
                    }
                }
                else
                {
                    lbSoLuong.Text = "Trốnng";
                }
            }
        }
    }
}