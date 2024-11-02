using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class WebForm11 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            int soluot = Convert.ToInt32(Application["sogiohang"]);
            List<Product> cartList = new List<Product>();
            List<Product> productList = (List<Product>)Application["ProductList"];
            string[] productsID = Request.Cookies["cart"].Value.Split(',');
            foreach (string productID in productsID)
            {
                foreach (Product product in productList)
                {
                    if (product.Id == productID)
                    {
                        soluot++;
                        cartList.Add(product);

                    }
                }
                //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
            }
            ListViewCart.DataSource = cartList;
            ListViewCart.DataBind();

            int productsPrice = 0;
            foreach (Product product in cartList) productsPrice += Int32.Parse(product.Price);
            products_price.InnerHtml = $"{soluot} <span class='cart__product-price-unit'></span>";

            //Display delivery price phi ship
            /**const int DELIVERY = 25000;
            delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";**/

            //Display order total price
            int orderTotal = productsPrice;
            order_total_price.InnerHtml = $"{orderTotal} <span class='cart__product-price-unit'>VND</span>";
        }

        protected void HoanTatButton_Click(object sender, EventArgs e)
        {
            // Lấy thông tin đơn hàng
          //  string productName = UserTenLabel.Text;
           // string productPrice = MoneyLabel.Text;
        

            // Tạo URL của trang hóa đơn
            string url = "HoaDon.aspx"; // Đường dẫn đến trang hoá đơn của bạn

            // Thêm thông tin đơn hàng vào URL
         //   url += "?productName=" + Server.UrlEncode(productName) + "&productPrice=" + Server.UrlEncode(productPrice) + "&shippingFee=" + Server.UrlEncode(shippingFee);

            // Chuyển đến trang hoá đơn
            Response.Redirect(url);
        }
    }
}