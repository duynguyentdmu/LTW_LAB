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
    public partial class LietKeSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = XLDL.GetData("select * from SACH where MaNXB=1");
                if (dt.Rows.Count > 0)
                {
                    dgvSach.DataSource = dt;
                    dgvSach.DataBind();
                }
            }
        }

        protected void btnXem_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = XLDL.GetData("select * from SACH where MaNXB=" + Convert.ToInt32(txtMaNXB.Text));
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