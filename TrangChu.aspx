<%@ Page Title="" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTLweb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/TrangChuStyle.css" rel="stylesheet" />
    <style>
        @media only screen and (max-width: 1199px) {
            body{
overflow-x:hidden;
            }
           
     .user {
        display: block;
    }
    .mininav {
        display: none;
    }
    .header {
        height: 80px; 
    }

    .logo {
        font-size: 36px;  
    }
    .bander{
        max-width: 100%;
        margin-left: 10px;
    }
  
}

 /*CSS cho màn hình nhỏ hơn (smartphone) */
@media only screen and (max-width: 767px) {
    .phone {
        display: none; 
    }
    .mininav {
        display: none;
    }

        .user {
            display: block;
        }
    .header {
        height: 60px; 
    }
    

    .logo {
        font-size: 24px;  
    }
     .bander{
     max-width: 100%;
       margin-left: 10px;
 }
.product {
        width: 100%; 
        height: auto;

}
}
    </style>
    <div class="trangchu">
        <div class="bander">
            <div class="img1"><a href="#"><img src="img/anh16.png" alt="khoong hiển thị được ảnh"></a></div>
        </div>
        <div class="content1">
            <asp:Label ID="lblNoResult" runat="server" Visible="false" Text="Không có sản phẩm." CssClass="no-result-label"></asp:Label>

                 <asp:ListView ID="ListView3" runat="server">
                    <ItemTemplate>
    <div class="product">
        <a href="ChiTietSanPham.aspx?id=<%# Eval("Id") %>">
            <img src="<%# Eval("Images") %>" alt="Sản Phẩm 1">
        <h3><%# Eval("Name") %></h3>
       <p><i class="ti-microsoft"></i><%# Eval("A") %></p>
<p><i class="ti-panel"></i> <%# Eval("B") %></p>
<p><i class="ti-layers"></i><%# Eval("C") %></p>
<p><i class="ti-harddrives"></i> <%# Eval("D") %></p>
<p><i class="ti-video-clapper"></i><%# Eval("E") %></p>
        <span>Giá: <%# Eval("Price") %> VNĐ</span>
        </a>
        </div>
        	</ItemTemplate>
</asp:ListView>
            <div class="featured-products">
    <h2>Sản Phẩm Nổi Bật</h2>
                <asp:ListView ID="sanphamnoibat" runat="server">
                    <ItemTemplate>
    <div class="product">
        <a href="ChiTietSanPham.aspx?id=<%# Eval("Id") %>">
            <img src="<%# Eval("Images") %>" alt="Sản Phẩm 1">
        <h3><%# Eval("Name") %></h3>
       <p><i class="ti-microsoft"></i><%# Eval("A") %></p>
<p><i class="ti-panel"></i> <%# Eval("B") %></p>
<p><i class="ti-layers"></i><%# Eval("C") %></p>
<p><i class="ti-harddrives"></i> <%# Eval("D") %></p>
<p><i class="ti-video-clapper"></i><%# Eval("E") %></p>
        <span>Giá: <%# Eval("Price") %> VNĐ</span>
        </a>
        </div>
        	</ItemTemplate>
</asp:ListView>
    </div>
   
            <div class="best-office-laptops">
        <h2>Laptop Văn Phòng Hot Nhất</h2>
                                       <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
    <div class="product">
        <a href="ChiTietSanPham.aspx?id=<%# Eval("Id") %>">
            <img src="<%# Eval("Images") %>" alt="Sản Phẩm 1">
        <h3><%# Eval("Name") %></h3>
       <p><i class="ti-microsoft"></i><%# Eval("A") %></p>
<p><i class="ti-panel"></i> <%# Eval("B") %></p>
<p><i class="ti-layers"></i><%# Eval("C") %></p>
<p><i class="ti-harddrives"></i> <%# Eval("D") %></p>
<p><i class="ti-video-clapper"></i><%# Eval("E") %></p>
        <span>Giá: <%# Eval("Price") %> VNĐ</span>
        </a>
        </div>
        	</ItemTemplate>
</asp:ListView>
        
    </div>
    
    <!-- laptop gaming hot nhất -->
    
           <div class="best-gaming-laptops">
        <h2>Laptop Gaming Hot Nhất</h2>
                                              <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
    <div class="product">
        <a href="ChiTietSanPham.aspx?id=<%# Eval("Id") %>">
            <img src="<%# Eval("Images") %>" alt="Sản Phẩm 1">
        <h3><%# Eval("Name") %></h3>
       <p><i class="ti-microsoft"></i><%# Eval("A") %></p>
<p><i class="ti-panel"></i> <%# Eval("B") %></p>
<p><i class="ti-layers"></i><%# Eval("C") %></p>
<p><i class="ti-harddrives"></i> <%# Eval("D") %></p>
<p><i class="ti-video-clapper"></i><%# Eval("E") %></p>
        <span>Giá: <%# Eval("Price") %> VNĐ</span>
        </a>
        </div>
        	</ItemTemplate>
</asp:ListView>
                                                     
    </div>
     
           
            </div>
        
</asp:Content>