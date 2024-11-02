<%@ Page Title="ThanhToan" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="BTLweb.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* content */
.content1 {
    grid-column: 1/13;
    padding: 20px;
    overflow-x: hidden;
}
/* Thanh toan đơn hàng start */
.SpDonHang {
    /*max-width: 100%;*/
}

    .SpDonHang img {
        width: 200px;
        height: auto;
    }

    .SpDonHang a {
        text-decoration: none;
    }

    .SpDonHang .Money {
        font-size: 28px;
        color: red;
        font-weight: bold;
    }

    .SpDonHang hr {
        width: 88%;
    }

    .SpDonHang table {
        margin: 14px 0;
     
    }

table {
    width: 100%;
}

.cart__product-price-unit{
    margin-left: 100px;
}





.PhuongThuc {
      max-width: 100%;
}

    

   

   

.HoanTat {
    margin-top: 40px;
    margin-left: 400px;
    display: flex;
    padding: 10px 20px; /* Kích thước padding của nút */
    background-color: #fff; /* Màu nền của nút */
    color: #3E6AAB; /* Màu chữ của nút */
    border: 1px solid #3E6AAB; /* Loại bỏ viền của nút */
    border-radius: 5px; /* Làm mềm góc của nút */
    cursor: pointer; /* Biến con trỏ thành hình bàn tay khi di chuột vào nút */
    font-size: 16px; /* Kích thước chữ của nút */
}

    /* CSS cho khi di chuột vào nút */
    .HoanTat:hover {
        background-color: #0056b3;
        color: #ccc;
    }
/* Thanh toan đơn hàng end */

    </style>
    <div class="breadcrumbs">
            <a href="GioHang.aspx">Giỏ Hàng</a> /
            <span id="titleSpan"></span>
        </div>
     <div class="content1">
     
            <h2>Đơn hàng của bạn</h2>
            <!-- Danh sách sản phẩm trong giỏ hàng -->
            
            <div class="SpDonHang">
                <table>
                    <asp:ListView ID="ListViewCart" runat="server">
	<ItemTemplate>
                    <tr>
                        <td class="left-column">
                            <img src="<%# Eval("Images") %>" alt="hình ảnh sản phẩm">  
                        </td>
                        <td class="right-column">
                            <asp:Label ID="UserTenLabel" CssClass="User-ten" runat="server"><%# Eval("Name") %></asp:Label>
                            <br />
                            <asp:Label ID="MoneyLabel" CssClass="Money" runat="server"><%# Eval("Price") %></asp:Label>
                            <%--<a href="" class="User-ten" runat="server"></a><br>
                            <a href="" class="Money"  runat="server"></a> --%>
                        </td>
                    </tr>
                    	</ItemTemplate>
</asp:ListView>
                </table>
                <hr>
                <table>
                    <tr>
                        <td class="left-column"><div class="cart__products-total-price">
    <p>Tổng số sản phẩm: </p>
   
</div> </td>
                       <td>
                            <p runat="server" id="products_price">0 <span class="cart__product-price-unit"></span></p>
                       </td>
                    </tr>
                   
                </table>
                <hr>
                <table>
                    <tr>
                        <td>
                            <div class="cart__order-total">
    <p>Tổng số tiền sản phẩm: </p>
                                
</div>
                        </td>
                        <td> 
                            <p runat="server" id="order_total_price"> <span class="cart__product-price-unit">VND</span></p>


                        </td>
                        
                    </tr>
                </table>
            </div>
         <div class="PhuongThuc">
   
<asp:Button ID="HoanTatButton" CssClass="HoanTat" Text="Hoàn tất đơn hàng" runat="server" OnClick="HoanTatButton_Click" />

  <%--  <button class="HoanTat" type="submit" runat="server">Hoàn tất đơn hàng</button>--%>
</div>
         <script src="JS/ThanhToanJS.js">

         </script>
         <script src="JS/BeadcrumbsJS.js"></script>
         </div>
</asp:Content>
