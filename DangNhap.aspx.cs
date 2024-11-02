using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace BTLweb
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string path = Server.MapPath("listMember.xml");

            if (Request.Form["btnlogin"] == "true")
            {
                List<MemBer> memBers = new List<MemBer>();

                if (File.Exists(path))
                {
                    // Đọc file XML
                    XmlSerializer reader = new XmlSerializer(typeof(List<MemBer>));
                    StreamReader file = new StreamReader(path);

                    memBers = (List<MemBer>)reader.Deserialize(file);
                    file.Close();
                }

                string inputEmail = Request.Form["email"];
                string inputPassword = Request.Form["password"];

                // Kiểm tra xem email và mật khẩu có tồn tại trong danh sách thành viên hay không
                bool userExists = memBers.Any(m => m.EmailTK1 == inputEmail && m.PasswordTK1 == inputPassword);

                if (userExists)
                {
                    // Đăng nhập thành công, tạo session và chuyển hướng đến trang chính
                    MemBer loggedInUser = memBers.First(m => m.EmailTK1 == inputEmail && m.PasswordTK1 == inputPassword);
                    Session["login"] = true;
                    Session["userTK"] = loggedInUser.UserTK1;
                    Session["email"] = loggedInUser.EmailTK1;
                    Session["password"] = loggedInUser.PasswordTK1;
                    Session["phone"] = loggedInUser.PhoneTK1;
                    Response.Redirect("TrangChu.aspx");
                }
                else
                {
                    // Đăng nhập không thành công  Hiển thị thông báo lỗi trong Label
                    lblNoResult.Text = "Email hoặc mật khẩu không đúng!, Quá 5 lần sẽ đăng ký lại";
                    lblNoResult.Visible = true;

                    // Kiểm tra số lần đăng nhập sai
                    int wrongLoginCount = 0;
                    if (Session["WrongLoginCount"] != null)
                    {
                        wrongLoginCount = Convert.ToInt32(Session["WrongLoginCount"]);
                    }

                    wrongLoginCount++;

                    if (wrongLoginCount >= 5)
                    { // Xóa thành viên có email tương ứng
                        memBers.RemoveAll(m => m.EmailTK1 == inputEmail);

                        // Lưu lại danh sách đã chỉnh sửa vào tệp XML
                        XmlSerializer writer = new XmlSerializer(typeof(List<MemBer>));

                        StreamWriter fileWriter = new StreamWriter(path);
                        writer.Serialize(fileWriter, memBers);
                        //dóng file 
                        fileWriter.Close();

                        // Hiển thị thông báo đăng nhập sai quá nhiều lần và chuyển hướng đến trang đăng ký
                        string alert = "<script>alert('Đăng Nhập sai quá nhiều lần mời đăng ký lại tài khoản khác !');</script>";
                        Response.Write(alert);

                        Response.Redirect("DangKy.aspx");
                        
                    }
                    else
                    {
                        // Hiển thị thông báo lỗi trong Label
                        lblNoResult.Text = "Email hoặc mật khẩu không đúng!, Nhập sai " + (5 - wrongLoginCount) + " lần nữa sẽ đăng ký lại";
                        lblNoResult.Visible = true;

                        // Lưu số lần đăng nhập sai vào session
                        Session["WrongLoginCount"] = wrongLoginCount;
                    }
                }
            }
        
        }
    }
}