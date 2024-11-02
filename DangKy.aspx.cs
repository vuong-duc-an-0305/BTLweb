using BTLweb;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
namespace BTLweb
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("listMember.xml");

            if (Request.Form["btnSignUp"] == "true")
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
              

                // Kiểm tra xem email đã tồn tại trong danh sách thành viên hay chưa
                string newEmail = Request.Form["email"];
                bool emailExists = memBers.Any(m => m.EmailTK1 == newEmail);

                if (emailExists)
                {
                    // Email đã tồn tại, thông báo lỗi và ngăn người dùng đăng ký mới
                    string alert = "<script>alert('Email đã tồn tại!');</script>";
                    Response.Write(alert);
                }
                else
                {
                    MemBer mb = new MemBer();
                  
                    // Lấy giá trị từ trường userTK
                    string userTK = Request.Form["userTK"];

                    // Mã hóa userTK thành GUID
                    Guid guidUserTK = Guid.NewGuid();
                    string encodedUserTK = guidUserTK.ToString();

                    mb.UserTK1 = encodedUserTK;

                    mb.EmailTK1 = Request.Form["email"]; // Lấy dữ liệu từ form
                    mb.PasswordTK1 = Request.Form["password"]; // Lấy dữ liệu từ form
                    mb.PhoneTK1 = Request.Form["phone"]; // Lấy dữ liệu từ form

                    // Thêm thành viên mới vào danh sách
                    memBers.Add(mb);

                    // Ghi danh sách thành viên vào tệp XML
                    XmlSerializer writer = new XmlSerializer(typeof(List<MemBer>));
                    FileStream file1 = File.Create(path);
                    //StreamWriter outputFile = new StreamWriter(path);
                    writer.Serialize(file1, memBers);
                    file1.Close();
                    // Tạo session
                    Session["login"] = true;
                 
                    Session["userTK"] = mb.UserTK1;
                    Session["email"] = mb.EmailTK1;
                    Session["password"] = mb.PasswordTK1;
                    Session["phone"] = mb.PhoneTK1;


                    if ((bool)Session["login"] == true)
                    {
                        // Redirect đến trang chính sau khi đăng ký
                        Response.Redirect("TrangChu.aspx");
                    }
                    else
                    {
                        string alert = "";
                        alert += "<script>alert('Tài khoản đã tồn tại!');</script>";
                        Response.Write(alert);
                    }
                } 
            }
        }

    }
}
