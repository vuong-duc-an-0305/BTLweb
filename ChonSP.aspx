<%@ Page Title="Danh mục sản phẩm" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="ChonSP.aspx.cs" Inherits="BTLweb.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ChonSPStyle.css" rel="stylesheet" />
    <link href="css/styleBeadcrumbs.css" rel="stylesheet" />
    <style>
        .product {
    display: inline-block;
    width: calc(33.33% - 20px); /* Điều chỉnh chiều rộng dựa trên bố cục của bạn */
    margin-right: 20px;
    vertical-align: top;
    width: 250px;
    height: auto;
    box-shadow: 0px 0px 10px 2px rgba(84, 83, 83, 0.1);
    border: 1px solid grey;
    border-radius: 5px;
    padding: 4px;
    background-color: #fff;
}
         /*CSS cho màn hình nhỏ hơn (smartphone) */
        @media only screen and (max-width: 767px) {
        .product {
        width: 100%; 
        height: auto;

}
        
        }
    </style>
    <div class="breadcrumbs">
            <a href="TrangChu.aspx">Trang chủ</a> /
            <a href="ChonSP.aspx">Danh Mục</a> /
            <span id="titleSpan"></span>
        </div>
    <div class="content1">
            <h4>Danh Mục Sản Phẩm</h4>
            <div class="SanPham">
                <div class="DanhMucChonSP">
                   <div class="selectHang">
                    <label for="Hang">Hãng:</label>
                    <select id="Hang" name="Hang">
                        <option value="Asus">Asus</option>
                        <option value="Dell">Dell</option>
                        <option value="HP">HP</option>
                        <option value="MSI">MSI</option>
                        <option value="Gigabyte">Gigabyte</option>
                        <option value="Acer">Acer</option>
                        <option value="Lenovo">Lenovo</option>
                    </select>
                   </div>
                   <div class="selectTen">
                    <label for="Ten">Tên:</label>
                    <select name="Ten" id="Ten">
                        <option value="A-Z">Tên A->Z</option>
                        <option value="Z-A">Tên Z->A</option>
                    </select>
                   </div>
                    <div class="selectgia">
                        <label for="Gia">Giá:</label>
                        <select name="Gia" id="Gia">
                           <option value="Giatang">Giá tăng dần</option>
                        <option value="GiaGiam">Giá giảm dần</option> 
                        </select>
                        
                    </div>
                    <asp:Button ID="Button39" runat="server" Text="Xem" CssClass="Xem1" />
                </div>
                <div class="featured-products">
                  <div class="product">
                <a href="ChiTietSanPham.aspx">
                    <img src="img/anh4.png" alt="Sản Phẩm 1">
                <h3>Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14" FHD/Win11</h3>
                <p><i class="ti-microsoft"></i> i7-10120H</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> NVIDIA RTX 2060</p>
                <span>Giá: 16.000.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="AddToCartButton2" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="ViewDetailsButton2" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div>   
            <div class="product">
                <a href="">
                    <img src="img/anh3.png" alt="Sản Phẩm 1">
                <h3>Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14" FHD/Win11</h3>
                <p><i class="ti-microsoft"></i> i7-10120H</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> NVIDIA RTX 2060</p>
                <span>Giá: 11.500.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button2" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="#">
                    <img src="img/anh55.png" alt="Sản Phẩm 1">
                <h3>Laptop HP EliteBook 630 G10 873D5PA (i3-1315U | 8GB | 256GB | Intel UHD Graphics | 13.3' FHD | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i3-1315U</p>
                <p><i class="ti-panel"></i> 8GB DDR4</p>
                <p><i class="ti-layers"></i> 13.3 inch</p>
                <p><i class="ti-harddrives"></i> 256GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel UHD Graphics</p>
                <span>Giá: 14.900.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button3" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button4" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh56.png" alt="Sản Phẩm 1">
                <h3>Laptop Lenovo IdeaPad Slim 3 14IRH8 83EL0023VN (i7-13620H | 16GB | 512GB | Intel UHD Graphics | 14' FHD | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i7-13620H</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 14 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel UHD Graphics</p>
                <span>Giá: 16.790.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button5" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button6" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh57.png" alt="Sản Phẩm 1">
                <h3>Laptop Gaming Lenovo Legion Slim 5 16AHP9 83DH003AVN (R7-8845HS | 16GB | 512GB | GeForce RTX™ 4060 8GB | 16' WQXGA 165Hz | Win 11)</h3>
                <p><i class="ti-microsoft"></i> R7-8845HS</p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 16 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4060</p>
                <span>Giá: 38.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button7" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button8" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh58.png" alt="Sản Phẩm 1">
                <h3>Laptop Gaming Lenovo Legion Slim 5 16AHP9 83DH003AVN (R7-8845HS | 16GB | 512GB | GeForce RTX™ 4060 8GB | 16' WQXGA 165Hz | Win 11)</h3>
                <p><i class="ti-microsoft"></i> R7-8845HS</p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 16 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4060</p>
                <span>Giá: 38.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button9" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button10" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh59.png" alt="Sản Phẩm 1">
                <h3>Laptop ASUS TUF Gaming A15 FA507NV-LP110W (R5-7535HS | 16GB | 512GB | GeForce RTX™ 4060 8GB | 15.6' FHD 144Hz 100% sRGB | Win 11)</h3>
                <p><i class="ti-microsoft"></i> R5-7535HS </p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4060</p>
                <span>Giá: 25.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button11" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button12" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh60.png" alt="Sản Phẩm 1">
                <h3>Laptop Gaming Lenovo Legion 5 16IRX9 83DG0051VN (i7-14650HX | 16GB | 1TB | GeForce RTX™ 4060 8GB | 16' WQXGA 165Hz | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i7-14650HX</p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 16 inch</p>
                <p><i class="ti-harddrives"></i> 1T SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4060</p>
                <span>Giá: 40.900.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button13" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button14" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh17.png" alt="Sản Phẩm 1">
                <h3>Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14" FHD/Win11</h3>
                <p><i class="ti-microsoft"></i> R5 7520U</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> NVIDIA RTX 2060</p>
                <span>Giá: 13.880.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button15" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button16" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh18.png" alt="Sản Phẩm 1">
                <h3>Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14" FHD/Win11</h3>
                <p><i class="ti-microsoft"></i> i7-10120H</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> NVIDIA RTX 2060</p>
                <span>Giá: 16.200.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button17" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button18" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh61.png" alt="Sản Phẩm 1">
                <h3>Laptop Lenovo IdeaPad Slim 5 14IMH9 83DA0020VN (Intel Core Ultra 7 155H | 32GB | 1TB | Intel Arc Graphics | 14' WUXGA OLED 100% DCI-P3 | Win 11)</h3>
                <p><i class="ti-microsoft"></i> Intel Core Ultra 7 155H</p>
                <p><i class="ti-panel"></i> 32GB </p>
                <p><i class="ti-layers"></i> 14 inch</p>
                <p><i class="ti-harddrives"></i> 1T SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Arc Graphics</p>
                <span>Giá: 25.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button19" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button20" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh62.png" alt="Sản Phẩm 1">
                <h3>Laptop Gaming Lenovo LOQ 15IRX9 83DV00ERVN (i7-13650HX | 16GB | 512GB | GeForce RTX™ 4060 8GB | 15.6' FHD 144Hz 100% sRGB | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i7-13650HX</p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4060</p>
                <span>Giá: 32.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button21" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button22" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh63.png" alt="Sản Phẩm 1">
                <h3>Laptop Acer Aspire Lite AL15-51M-55NB (i5-1135G7 | 8GB | 512GB | Intel Iris Xe Graphics | 15.6' FHD | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i5-1135G7</p>
                <p><i class="ti-panel"></i> 8GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Iris Xe Graphics</p>
                <span>Giá: 11.490.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button23" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button24" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh64.png" alt="Sản Phẩm 1">
                <h3>Laptop Lenovo Yoga 9 2-in-1 14IMH9 83AC000SVN (Intel Core Ultra 7 155H | 16GB | 1TB | Intel Arc Graphics | 14' 2.8K OLED Touch | Win 11 | Office)</h3>
                <p><i class="ti-microsoft"></i> Intel Core Ultra 7 155H</p>
                <p><i class="ti-panel"></i> 16GB DDR5</p>
                <p><i class="ti-layers"></i> 14 inch</p>
                <p><i class="ti-harddrives"></i> 1T SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Arc Graphics</p>
                <span>Giá: 44.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button25" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button26" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh65.png" alt="Sản Phẩm 1">
                <h3>Laptop Lenovo IdeaPad Slim 5 15IRU9 83D00003VN (Intel Core 5 120U | 32GB | 512GB | Intel Graphics | 15.3' WUXGA 100% sRGB | Win 11)</h3>
                <p><i class="ti-microsoft"></i> Intel Core 5 120U</p>
                <p><i class="ti-panel"></i> 32GB Onboard</p>
                <p><i class="ti-layers"></i> 15.3 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Graphics</p>
                <span>Giá: 20.450.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button27" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button28" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh4.png" alt="Sản Phẩm 1">
                <h3>Laptop ASUS VivoBook 14 OLED A1405VA-KM257W (i5-13500H | 16GB | 512GB | Intel Iris Xe Graphics | 14' 2.8K OLED 100% DCI-P3 | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i5-13500H</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 14 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Iris Xe Graphics</p>
                <span>Giá: 16,490.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button29" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button30" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh66.png" alt="Sản Phẩm 1">
                <h3>Laptop HP ProBook 450 G10 9H8W0PT (i7-1360P | 16GB | 512GB | Intel Iris Xe Graphics | 15.6' FHD Touch | Win 11)</h3>
                <p><i class="ti-microsoft"></i> i7-1360P</p>
                <p><i class="ti-panel"></i> 16GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Iris Xe Graphics</p>
                <span>Giá: 24.460.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button31" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button32" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh67.png" alt="Sản Phẩm 1">
                <h3>Laptop ASUS VivoBook 15X OLED M1503QA-L1026W (R5-5600H | 8GB | 512GB | AMD Radeon™ Graphics | 15.6' FHD OLED 100% DCI-P3 | Win 11)</h3>
                <p><i class="ti-microsoft"></i> R5-5600H</p>
                <p><i class="ti-panel"></i> 8GB DDR4</p>
                <p><i class="ti-layers"></i> 15.6 inch</p>
                <p><i class="ti-harddrives"></i> 512GB SSD</p>
                <p><i class="ti-video-clapper"></i> AMD Radeon™ Graphics</p>
                <span>Giá: 15.000.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button33" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button34" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh68.png" alt="Sản Phẩm 1">
                <h3>Laptop Lenovo Yoga Book 9 13IMU9 83FF001SVN (Intel Core Ultra 7 155U | 32GB | 1TB | Intel Graphics | 2x 13.3' 2.8K OLED 100% DCI-P3 | Win 11 | Office)</h3>
                <p><i class="ti-microsoft"></i> Intel Core Ultra 7 155U</p>
                <p><i class="ti-panel"></i> 32GB DDR5</p>
                <p><i class="ti-layers"></i> 2x 13.3 inch</p>
                <p><i class="ti-harddrives"></i> 1T SSD</p>
                <p><i class="ti-video-clapper"></i> Intel Graphics</p>
                <span>Giá: 63.490.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button35" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button36" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            <div class="product">
                <a href="">
                    <img src="img/anh69.png" alt="Sản Phẩm 1">
                <h3>Laptop ASUS ROG Zephyrus G16 GU605MY-QR041X (Intel Core Ultra 9 185H | 32GB | 2TB | GeForce RTX™ 4090 16GB | 16' WQXGA 240Hz | Win 11)</h3>
                <p><i class="ti-microsoft"></i> Intel Core Ultra 9 185H</p>
                <p><i class="ti-panel"></i> 32GB OnBoard</p>
                <p><i class="ti-layers"></i> 16 inch</p>
                <p><i class="ti-harddrives"></i> 2T SSD</p>
                <p><i class="ti-video-clapper"></i> GeForce RTX™ 4090</p>
                <span>Giá: 129.990.000 đ</span>
                <div class="product-buttons">
    <asp:Button ID="Button37" runat="server" Text="Thêm vào giỏ Hàng" CssClass="add-to-cart asp-button" />
    <asp:Button ID="Button38" runat="server" Text="Xem chi tiết" CssClass="view-details asp-button" />
</div>
                </a>  
            </div> 
            
                </div>
               
            </div>
        </div>

</asp:Content>
