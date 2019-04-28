using QUANLYBANSACH.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.UC
{
    public partial class ucSachMoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = XLDL.GetData("select top 6 * from SACH sach order by sach.NgayCapNhat desc");
                dataSanPham.DataSource = dt;
                dataSanPham.DataBind();
            }
        }
    }
}