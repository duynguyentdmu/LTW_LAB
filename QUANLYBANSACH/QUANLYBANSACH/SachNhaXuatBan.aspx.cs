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
    public partial class SachNhaXuatBan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["MaNXB"]))
                {
                    int maNXB = Int32.Parse(Request.QueryString["MaNXB"]);
                    DataTable dt = new DataTable();
                    dt = XLDL.GetData("select * from SACH where MaNXB=" + maNXB);
                    if (dt.Rows.Count > 0)
                    {
                        dgvSach.DataSource = dt;
                        dgvSach.DataBind();
                    }
                    else
                    {
                        Response.Write("Không có dữ liệu sách");
                    }
                }
            }
        }
    }
}