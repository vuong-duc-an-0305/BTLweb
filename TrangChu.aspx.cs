using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

           
            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> banchay = new List<Product>();
            List<Product> vphot = new List<Product>();
                 List<Product> ghot = new List<Product>();

            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4" || id == "5")
                {
                    banchay.Add(product);
                }
                if (id == "10" || id == "11" || id == "12" || id == "13" || id == "14")
                {
                    vphot.Add(product);
                }
                if (id == "20" || id == "21" || id == "22" || id == "23" || id == "24")
                {
                    ghot.Add(product);
                }

            }
            sanphamnoibat.DataSource = banchay;
            sanphamnoibat.DataBind();
            ListView1.DataSource = vphot;
            ListView1.DataBind();
            ListView2.DataSource = ghot;
            ListView2.DataBind();

            if (!IsPostBack)
            {
                // Kiểm tra xem có tham số truy vấn keyword không
                if (Request.QueryString["keyword"] != null)
                {
                    // Lấy từ khóa tìm kiếm từ tham số truy vấn
                    string keyword = Request.QueryString["keyword"];

                    // Tìm kiếm sản phẩm theo từ khóa
                    List<Product> searchResult = SearchProductByName(keyword);

                    // Hiển thị kết quả tìm kiếm trong ListView3
                    if(searchResult.Count > 0)
                    { 
                        ListView3.DataSource = searchResult;
                        ListView3.DataBind();
                         // Ẩn các ListView cũ và hiển thị ListView3

                    //ListView1.Visible = false;
                    //ListView2.Visible = false;
                    //sanphamnoibat.Visible = false;
                    ListView3.Visible = true;
                    }
                    else
                    {
                        // Không tìm thấy sản phẩm, hiển thị thông báo "Không có sản phẩm"
                        ListView3.Visible = false;
                        lblNoResult.Text = "Không có sản phẩm.";
                        lblNoResult.Visible = true;
                    }

                    }
                else
                {
                    // Hiển thị danh sách sản phẩm ban đầu nếu không có từ khóa tìm kiếm
                    ShowAllProducts();
                }
            }

        }
        protected List<Product> SearchProductByName(string keyword)
        {
            // Lấy danh sách sản phẩm từ Application
            List<Product> productList = Application["ProductList"] as List<Product>;

            // Tìm kiếm sản phẩm theo tên chứa từ khóa
            List<Product> searchResult = productList.Where(p => p.Name.ToLower().Contains(keyword.ToLower())).ToList();

            return searchResult;
        }

        protected void ShowAllProducts()
        {
            // Lấy danh sách sản phẩm từ Application
            List<Product> productList = Application["ProductList"] as List<Product>;

            // Hiển thị danh sách sản phẩm ban đầu trong ListView1, ListView2, sanphamnoibat
            ListView1.DataSource = productList;
            ListView1.DataBind();

            ListView2.DataSource = productList;
            ListView2.DataBind();

            sanphamnoibat.DataSource = productList;
            sanphamnoibat.DataBind();

            // Ẩn ListView3
            ListView3.Visible = false;
        }
    }
}