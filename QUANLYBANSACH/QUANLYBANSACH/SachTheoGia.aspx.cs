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
    public partial class SachTheoGia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = XLDL.GetData("select * from SACH");
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
                dt = XLDL.GetData("select * from SACH where DonGia BETWEEN " + Convert.ToInt32(txtTu.Text) + " and " + Convert.ToInt32(txtDen.Text));
                if (dt.Rows.Count > 0)
                {
                    dgvSach.DataSource = dt;
                    dgvSach.DataBind();
                }
        }
    }
}