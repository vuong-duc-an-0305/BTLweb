<%@ Page Title="Giỏ Hàng" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BTLweb.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/gohangcss.css" rel="stylesheet" />
  
  <div class="main">
	<p class="sogiohang" id="sogiohang" runat="server"></p>
	<div class="cart_product">
		<table class="bang">
					<tr>
						<th>Ảnh</th>
						<th>Tên sản phẩm</th>
						<th>Giá</th>
						<th>Tác vụ</th>
					</tr>
		<asp:ListView ID="ListViewCart" runat="server">
			<ItemTemplate>
					<tr>
						<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
						<td><p><%# Eval("Name") %></p></td>
						<td><p><%# Eval("Price") %> đồng</p></td>
						<td><a href="xoagiohang.aspx?id=<%# Eval("Id") %>" class="xoa">Xóa</a></td>
					</tr>
			</ItemTemplate>
		</asp:ListView>
		</table>
	</div>
	<div class="cart_price">
		<div class="cart--right">
                <h2 class="cart__title--right">Đơn hàng<br></h2>
                <div class="cart__products-total-price">
                    <p>Tổng số sản phẩm: </p>
                    <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                </div>
                <!--<div class="cart__delivery-price">
                    <p>Tổng phí giao hàng</p>
                    <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
                </div>
                <hr>--->
                <div class="cart__order-total">
                    <p>Tổng số tiền sản phẩm: </p>
                    <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                </div>
                <!-----<hr>--->
                <div class="cart__buttons--right">
                  <a href="ThanhToan.aspx"><button class="purchase-button" type="button">Thanh toán</button></a>  
                </div>
            </div>
	</div>
</div>
      
</asp:Content>
