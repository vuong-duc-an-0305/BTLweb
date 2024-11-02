  <%@ Page Title="Chi tiết sản phẩm" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="BTLweb.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ctsp.css" rel="stylesheet" />
    <link href="css/styleBeadcrumbs.css" rel="stylesheet" />
    
    <div class="breadcrumbs">
            <a href="Trangchu.aspx">Trang chủ</a> > 
            <a href="ChonSP.aspx">Danh mục</a> > 
            <span>Chi tiết sản phẩm</span>
        </div>
    <div class="content1">
           <asp:ListView ID="ListViewProductinformation" runat="server" >
	<ItemTemplate>
            <div class="SanPham">
                <div class=" userSP">
                    <h3><%# Eval("Name") %></h3>
                </div>
                <hr>
                <div class="AnhSP">
                    <div class="slideshow-container">
                    <div class=" slide fade">
                        <img src="<%# Eval("Images") %>" alt="Slide 1">
                    </div>                 
                </div>                
                </div>              
                <div class="TT-SanPham"> 
                    <p class="header-content" style="margin-bottom:10px; font-size: 26px"><%# Eval("Detail") %>
                           <p><i class="ti-microsoft"></i>CPU: <%# Eval("A") %></p>
<p style="margin-bottom:4px"><i class="ti-panel"></i>RAM:  <%# Eval("B") %></p>
<p style="margin-bottom:4px"><i class="ti-layers"></i>MÀN HÌNH: <%# Eval("C") %></p>
<p style="margin-bottom:4px"><i class="ti-harddrives"></i>BỘ NHỚ: <%# Eval("D") %></p>
<p style="margin-bottom:4px"><i class="ti-video-clapper"></i>CARD ĐỒ HỌA: <%# Eval("E") %></p>
                          <span class"Gia" style="color: orangered; font-weight: bold; font-size: 40px">Giá: <%# Eval("Price") %> VNĐ</span>

                   
                    
       
                </div>
            </div>
        		
           		</ItemTemplate>
</asp:ListView>
        <div class="btn">
   <button class="Mua" style="margin-left: 100px">Mua Ngay
    <p>Giao hàng tận nơi hoặc nhận ở cửa hàng</p>
   </button><br>
    <p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
    <button type="submit" class="add-to-cart" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton" style="margin-left: 100px" >Thêm vào giỏ hàng</button>
              
</div>
        <script src="JS/ChitietsanphamJS.js"></script>
           </div>
</asp:Content>
