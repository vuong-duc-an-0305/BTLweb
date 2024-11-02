using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinTuc1_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=1");
        }

        protected void btnTinTuc2_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=2");
        }

        protected void btnTinTuc3_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=3");
        }

        protected void btnTinTuc4_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=4");
        }

        protected void btnTinTuc5_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=5");
        }

        protected void btnTinTuc6_Click(object sender, EventArgs e)
        {
            // xử lý sự kiện nút click đọc tiếp
            Response.Redirect("ChiTietTinTuc.aspx?s=6");
        }
    }
}