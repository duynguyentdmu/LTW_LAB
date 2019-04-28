using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYBANSACH.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Session["TenDNAdmin"] == null)
                    Response.Redirect("~/Admin/DangnhapAdmin.aspx");

                if (Session["TenDNAdmin"] != null)
                    Response.Redirect("~/Admin/Nhaxuatban.aspx");

            

        }
    }
}