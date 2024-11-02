
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDocTiep1_Click(object sender, EventArgs e)
        {
            // Gửi số 1 đến trang ChiTietKhuyenMai.aspx
            Response.Redirect("ChiTietKhuyenMai.aspx?s=1");
        }

        protected void btnDocTiep2_Click(object sender, EventArgs e)
        {
            // Gửi số 1 đến trang ChiTietKhuyenMai.aspx
            Response.Redirect("ChiTietKhuyenMai.aspx?s=2");
        }

        protected void btnDocTiep3_Click(object sender, EventArgs e)
        {
            // Gửi số 1 đến trang ChiTietKhuyenMai.aspx
            Response.Redirect("ChiTietKhuyenMai.aspx?s=3");
        }

        protected void btnDocTiep4_Click(object sender, EventArgs e)
        {
            // Gửi số 1 đến trang ChiTietKhuyenMai.aspx
            Response.Redirect("ChiTietKhuyenMai.aspx?s=4");
        }

        protected void btnDocTiep5_Click(object sender, EventArgs e)
        {
            // Gửi số 1 đến trang ChiTietKhuyenMai.aspx
            Response.Redirect("ChiTietKhuyenMai.aspx?s=5");
        }
    }
}