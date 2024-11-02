using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class codeALL : System.Web.UI.MasterPage
    {
        public object ListView1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string html = "";
            html += "<a data-toggle=\"dropdown\" class=\"dropdown-toggle\">" +
                        "<i class=\"ti-angle-double-down\"></i> Tài Khoản<b class=\"caret\"></b>" +
                    "</a>";

            if ((bool)Session["login"] == true)
            {
                html += "<ul class=\"dropdown-menu\">";
                html += "<li>Email : " + Session["email"] + "</li>";
                html += "<li>SDT : " + Session["phone"] + "</li>";
                html += "<li><button type=\"submit\" class=\"btn btn-success\" value=\"true\" name=\"btnLogout\" runat=\"server\"><i class=\"fa fa-power-off\" aria-hidden=\"true\"></i> Thoát</button></li>";
                html += "</ul>";

                account.InnerHtml = html;
            }
            else
            {
                html += "<ul class=\"dropdown-menu\">";
                html += "<li><a href=\"DangNhap.aspx\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Đăng Nhập</a></li> <br>";
                html += "<li><a href=\"DangKy.aspx\"><i class=\"fa fa-user-plus\" aria-hidden=\"true\"></i> Đăng Ký</a></li>";
                html += "</ul>";

                account.InnerHtml = html;
            }

            if (Request.Form["btnLogout"] == "true")
            {
                Session["login"] = false;
                Session["userTK"] = "";
                Session["email"] = "";
                Session["phone"] = "";
                Response.Redirect("DangNhap.aspx");
            }
         

        }
       

    }
}