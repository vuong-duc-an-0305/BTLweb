<%@ Page Title="TinTuc" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="BTLweb.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/TinTucStyle.css" rel="stylesheet" />
 <link href="css/styleBeadcrumbs.css" rel="stylesheet" />
 <div class="breadcrumbs">
     <a href="/Trangchu.aspx">Trang chủ </a>/
         <span id="titleSpan"><a href="TinTuc.aspx" style="color: gray">Tin tức</a></span>
 </div>
 <div class="content1">
     <!-- Thêm vào bên trong <div class="content1"> ... </div> -->
     <div class="news">
         <h2>Tin tức</h2>
      
             <div class="product">

                 <img src="img/anh28.png" alt="Sản Phẩm 1">
                 <h3>Cách tạo và sử dụng Copilot miễn phí, trợ lí AI mà bạn cần phải biết</h3>
                 <p class="day">Th 2 25/03/2024</p>
                 <p class="tomTat">Cách tạo và sử dụng Copilot miễn phí, trợ lí AI mà bạn cần phải biết. Copilot là một phần mềm tích hợp thông tin, được thiết...</p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc1" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc1_Click" />
                 </div>
             </div>
     
             <div class="product">
                 <img src="img/anh29.png" alt="Sản Phẩm 1">
                 <h3>MSI chính thức cho ra mắt loạt laptop mới hỗ trợ công nghệ AI tại Việt Nam</h3>
                 <p class="day">Th 4 20/03/2024</p>
                 <p class="tomTat">
                     MSI chính thức cho ra mắt loạt laptop mới hỗ trợ công nghệ AI tại Việt NamVào đầu
                         tháng 1 năm 2024 tại hội chợ CES,...
                 </p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc2" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc2_Click" />
                 </div>
             </div>
       
             <div class="product">
                 <img src="img/anh30.png" alt="Sản Phẩm 1">
                 <h3>Màn hình ROG Nebula OLED - Công Nghệ Mới Của Laptop Gaming</h3>
                 <p class="day">Th 4 20/03/2024</p>
                 <p class="tomTat">Màn hình ROG Nebula OLED - Công Nghệ Mới Của Laptop Gaming Đối với những người đam mê game, trải nghiệm chơi game không chỉ dừng lại...</p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc3" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc3_Click" />
                 </div>
             </div>
       
             <div class="product">
                 <img src="img/anh31.png" alt="Sản Phẩm 1">
                 <h3>PlayStation 5 Pro: Hiệu Năng Vượt Trội và Công Nghệ Ray-Tracing Mới</h3>
                 <p class="day">Th 2 18/03/2024</p>
                 <p class="tomTat">PlayStation 5 Pro: Hiệu Năng Vượt Trội và Công Nghệ Ray-Tracing Mới Sony được cho là đang đang phát triển mẫu PlayStation 5 Pro với hiệu năng...</p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc4" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc4_Click" />
                 </div>
             </div>
       
             <div class="product">
                 <img src="img/anh32.png" alt="Sản Phẩm 1">
                 <h3>LG Gram Style 2023: Laptop thời trang cấu hình mạnh</h3>
                 <p class="day">Th 4 13/03/2024</p>
                 <p class="tomTat">LG Gram Style 2023: Laptop thời trang cấu hình mạnhThiết Kế Đột Phá: LG Gram Style 2023 không chỉ là một chiếc laptop, mà còn là một tuyên...</p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc5" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc5_Click" />
                 </div>
             </div>
         
             <div class="product">
                 <img src="img/anh38.png" alt="Sản Phẩm 1">
                 <h3>Predator Helios 16 & Helios 18 Bộ đôi Laptop Gaming khủng long của Acer</h3>
                 <p class="day">Th 3 12/03/2024</p>
                 <p class="tomTat">Laptop Gaming Predator Helios 16 & Helios 18  Laptop gaming khủng long của Acer Acer vừa tung ra thị trường bộ đôi laptop gaming đỉnh cao Predator...</p>
                 <div class="product-buttons">
                     <asp:Button ID="btnTinTuc6" runat="server" Text="Đọc Tiếp" Width="70px" OnClick="btnTinTuc6_Click" />
                 </div>
             </div>
        

         
     </div>
 </div>
</asp:Content>
