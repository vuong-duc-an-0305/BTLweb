using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Serialization;

namespace BTLweb
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["listMenber"] = DsMember();
            //sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../img/anh17.png", Name = "Laptop Asus Vivobook 14", Price = "12000000", A= " i7-10120H",
                B = " 16GB DDR4", C = " 15.6 inch", D= " 512GB SSD", E= " NVIDIA RTX 2060", Detail = "Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14\" FHD/Win11" });
            ProductList.Add(new Product() { Id = "2", Images = "../img/anh18.png", Name = "Laptop Dell Inspiron 15", Price = "15000000", A = " i5-13500H",
                B = " 16GB DDR4", C = " 14 inch", D = " 512B SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop Dell Inspiron 15 I5 7520U/16GB/512GB/14\" FHD/Win11" });
            ProductList.Add(new Product() { Id = "3", Images = "../img/anh19.png", Name = "Laptop Lenovo Ideapad 3", Price = "16000000", A = " i7-1255U", 
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = "aptop Lenovo Ideapad 3 15IAU7 i7 1255U/16GB/512GB/15.6\"FHD/Win 11" });
            ProductList.Add(new Product() { Id = "4", Images = "../img/anh20.png", Name = "Laptop Acer Aspire 7 Gaming", Price = "19000000", A = " i7-1255U",
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop Acer Aspire 7 Gaming A715-76-57CY i5 12450H/8GB/512GB/15.6\"\"FHD/Win11" });
            
            ProductList.Add(new Product() { Id = "5", Images = "../img/anh21.png", Name = "Laptop MSI Gaming GF63", Price = "21000000", A = " i7-1255U",
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = ">Laptop MSI Gaming GF63 Thin 11UC-1228VN i7-11800H/8GB/512GB/15.6\"FHD/GeForce RTX3050_4GB/Win11" });


            //laptop văn phòng hot
            ProductList.Add(new Product() { Id = "10", Images = "../img/anh21.png", Name = "Laptop Acer Aspire 7 Gaming", Price = "17000000", A = " i7-10120H", 
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " NVIDIA RTX 2060", Detail = "Laptop Acer Aspire 7 Gaming A715-76-57CY i5 12450H/8GB/512GB/15.6\"\"FHD/Win11" });
            ProductList.Add(new Product() { Id = "11", Images = "../img/anh51.png", Name = "Laptop ASUS VivoBook 14 OLED", Price = "20000000", A = " i5-13500H", 
                B = " 16GB DDR4", C = " 14 inch", D = " 512B SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop ASUS VivoBook 14 OLED A1405VA-KM257W (i5-13500H | 16GB | 512GB | Intel Iris Xe Graphics | 14' 2.8K OLED 100% DCI-P3 | Win 11)" });
            ProductList.Add(new Product() { Id = "12", Images = "../img/anh6.png", Name = "Laptop Văn Phòng ASUS VIVOBOOK", Price = "16000000", A = " i7-1255U",
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop ASUS VivoBook 14 OLED A1405VA - KM257W(i5 - 13500H | 16GB | 512GB | Intel Iris Xe Graphics | 14' 2.8K OLED 100% DCI-P3 | Win 11)" });
            ProductList.Add(new Product() { Id = "13", Images = "../img/anh18.png", Name = "Laptop Văn Phòng DELL Vostro 3510", Price = "15490000", A = " i7-1255U", 
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop Văn Phòng DELL Vostro 3510" });

            ProductList.Add(new Product() { Id = "14", Images = "../img/anh17.png", Name = "Laptop Asus vivobook 15", Price = "21000000", A = " i7-1255U",
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " Intel Iris Xe Graphics", Detail = "Laptop ASUS VivoBook 15 OLED A1505VA-L1114W (i5-13500H | 16GB | 512GB | Intel Iris Xe Graphics | 15.6' FHD OLED | Win 11" });


            //laptop gaming  hot
            ProductList.Add(new Product() { Id = "20", Images = "../img/anh45.png", Name = "Laptop Gaming MSI Cyborg 15", Price = "20000000", A = " i7-12650H",
                B = " 8GB DDR4", C = "15.6' FHD 144Hz ", D = " 256GB SSD", E = " GeForce RTX™ 4060 8GB", Detail = "Laptop Gaming MSI Cyborg 15 A12VF-267VN " });
            ProductList.Add(new Product() { Id = "21", Images = "../img/anh46.png", Name = "Laptop LG Gram 2022 17ZD90Q-G.AX52A5", Price = "20999000", A = " i5-1240P",
                B = " 16GB DDR4", C = " 17\" WQXGA", D = " 256GB SSD", E = " Intel Iris Xe Graphics", Detail = " Laptop LG Gram 2022 17ZD90Q-G.AX52A5 (i5-1240P | 16GB | 256GB | Intel Iris Xe Graphics | 17' WQXGA 99% DCI-P3 | DOS)" });
            ProductList.Add(new Product() { Id = "22", Images = "../img/anh47.png", Name = "Laptop Acer Aspire 7 A715-76-57CY", Price = "11990000", A = " i5-12450H",
                B = " 8GB DDR4", C = " 15.6' FHD", D = " 512GB SSD", E = " Intel® UHD Graphics", Detail = "Laptop Acer Aspire 7 A715-76-57CY (i5-12450H | 8GB | 512GB | Intel UHD Graphics | 15.6' FHD | Win 11)" });
            ProductList.Add(new Product() { Id = "23", Images = "../img/anh48.png", Name = "Laptop HP Victus 16-d0293TX 5Z9R4PA", Price = "18990000", A = " i5-11400H",
                B = " 8GB DDR4", C = " 16.1' FHD", D = " 512GB SSD", E = " GeForce RTX™ 3050Ti", Detail = "Laptop HP Victus 16-d0293TX 5Z9R4PA (i5-11400H | 8GB | 512GB | GeForce RTX™ 3050Ti 4GB | 16.1' FHD 144Hz | Win 11)" });

            ProductList.Add(new Product() { Id = "24", Images = "../img/anh49.png", Name = "Laptop Gaming HP Victus 15-fa1139TX 8Y6W3PA", Price = "18900000", A = " i5-12450H",
                B = " 16GB DDR4", C = " 15.6 inch", D = " 512GB SSD", E = " GeForce RTX™ 2050s", Detail = "Laptop Gaming HP Victus 15-fa1139TX 8Y6W3PA (i5-12450H | 16GB | 512GB | GeForce RTX™ 2050 4GB | 15.6' FHD 144Hz | Win 11)" });

            Application["ProductList"] = ProductList;

        }

        protected List<MemBer> DsMember()
        {
            string path = "listMember.xml";
            List<MemBer> list = new List<MemBer>();
            if (File.Exists(path))
            {
                XmlSerializer reader = new XmlSerializer(typeof(MemBer));

                StreamReader file = new StreamReader(Server.MapPath(path));
                list = (List<MemBer>)reader.Deserialize(file);
                
                file.Close();

            }
            return list;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["userTK"] ="";
            Session["email"] = "";
            Session["password"] = "";
            Session["phone"] = "";

        }
    }
}