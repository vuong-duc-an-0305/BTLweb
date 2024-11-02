<%@ Page Title="" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="KhuyenMai.aspx.cs" Inherits="BTLweb.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link href="css/KhuyenMaiStyle.css" rel="stylesheet" />
   <link href="css/styleBeadcrumbs.css" rel="stylesheet" />
    <div class="breadcrumbs">
    <a href="/Trangchu.html">Trang chủ</a> / 
            Khuyến mại<span id="titleSpan"></span>
</div>

<!-- end toolbar -->

<div class="content1">

    <!-- Thêm vào bên trong <div class="content1"> ... </div> -->
    <div class="sales">
        <h2>Tin khuyến mãi tại LaptopHay</h2>
   
            <div class="product">
                <img src="img/anh25.png" alt="Sản Phẩm 1">
                <h3>MỪNG SINH NHẬT GEFORCE OFFICIAL STORE 3 TUỔI - MUA LAPTOP GAMING TRÚNG LAPTOP GAMING!</h3>
                <p class="day">Th 2 18/03/2024</p>
                <p class="tomTat">MỪNG SINH NHẬT GEFORCE OFFICIAL STORE 3 TUỔI.Nhằm kỷ niệm và chúc mừng sinh nhật Geforce Official Store trên nền tảng thương mại điện tử Shopee...</p>
                <div class="product-buttons">
                    <asp:Button ID="btnDocTiep" runat="server" Text="Đọc tiếp" OnClick="btnDocTiep1_Click" style="background-color: #3E6AAB; color: #fff; border: 1px solid #3E6AAB; padding: 5px; border-radius: 4px" Width="70px" />
                </div>
            </div>
   
            <div class="product">

                <img src="img/anh23.png" alt="Sản Phẩm 1">
                <h3>LG Việt Nam tăng thời gian bảo hành thêm 01 năm đối với các đơn hàng dự án</h3>
                <p class="day">Th 5 14/03/2024</p>
                <p class="tomTat">LG Việt Nam tặng thêm 01 năm bảo hành đối với các sản phẩm thuộc đơn hàng dự ánLG Electronics, một trong những công ty công...</p>
                <div class="product-buttons">
                    <asp:Button ID="btnDocTiep2" runat="server" Text="Đọc tiếp" OnClick="btnDocTiep2_Click" style="background-color: #3E6AAB; color: #fff; border: 1px solid #3E6AAB; padding: 5px; border-radius: 4px" Width="70px" />
                </div>

            </div>
       
            <div class="product">
                <img src="img/anh22.png" alt="Sản Phẩm 1">
                <h3>ĐẶT HÀNG ROG ZEPHYRUS G16 GU605 & ZEPHYRUS G14 G403 NHẬN QUÀ ĐỘC QUYỀN</h3>
                <p class="day">Th 3 05/03/2024</p>
                <p class="tomTat">ĐẶT HÀNG ROG ZEPHYRUS G14 & ZEPHYRUS G16 2024 NHẬN QUÀ ĐỘC QUYỀNChào đón ASUS ROG Zephyrus G14 & Zephyrus G16 2024, ROG gửi đến quý khách...</p>
                <div class="product-buttons">

                    <asp:Button ID="btnDocTiep3" runat="server" Text="Đọc tiếp" OnClick="btnDocTiep3_Click" style="background-color: #3E6AAB; color: #fff; border: 1px solid #3E6AAB; padding: 5px; border-radius: 4px"  Width="70px" />
                </div>
            </div>
       
            <div class="product">
                <img src="img/anh26.png" alt="Sản Phẩm 1">
                <h3>[CHƯƠNG TRÌNH] VỆ SINH LAPTOP ASUS MIỄN PHÍ TẠI HÀNG CHÍNH HIỆU</h3>
                <p class="day">Th 6 01/03/2024</p>
                <p class="tomTat">Từ ngày 01/03 – 15/03/2024, Trung tâm bảo hành ASUS Ủy quyền Hàng Chính Hiệu sẽ tiếp tục triển khai chương trình vệ sinh laptop ASUS miễn phí cho...</p>
                <div class="product-buttons">
                    <asp:Button ID="BtbDocTiep4" runat="server" Text="Đọc tiếp" OnClick="btnDocTiep4_Click"  style="background-color: #3E6AAB; color: #fff; border: 1px solid #3E6AAB; padding: 5px; border-radius: 4px" Width="70px" />
                </div>
            </div>
        

        
            <div class="product">
                <img src="img/anh41.png" alt="Sản Phẩm 1">
                <h3>GỬI ĐÁNH GIÁ SẢN PHẨM ASUS NHẬN E-VOUCHER 200K</h3>
                <p class="day">Th 3 27/02/2024</p>
                <p class="tomTat">HÌNH THỨC KHUYẾN MÃI: Tặng e-voucher UrBox trị giá 200.000đ cho những đánh giá hợp lệ.SẢN PHẨM ÁP DỤNG: Tất cả sản phẩm Laptop...</p>
                <div class="product-buttons">
                    <asp:Button ID="btnDocTiep5" runat="server" Text="Đọc tiếp" OnClick="btnDocTiep5_Click" style="background-color: #3E6AAB; color: #fff; border: 1px solid #3E6AAB; padding: 5px; border-radius: 4px" Width="70px" />
                </div>
            </div>
        

       

       
    </div>
</div>
</asp:Content>
