<%@ Page Title="" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="BTLweb.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/HoaDonStyle.css" rel="stylesheet" />
    <div class="container">
        <h2>Hóa đơn bán hàng</h2>
            
        <div  class="thongtincuahang">
            <div class="soHD">
                <p> Số Hóa Đơn:</p>
                    <p class="SoHoaDon"></p>
            
            </div>
            <table>
                
                <tr>
                    <td>
                      <p>LapTopHay</p>
            <p>Email: info@Laptophay.vn</p>  
                    </td>
                    <td> 
            <p>Số điện thoại: 1900 1008</p>
            <P>Địa chỉ: 96 Định Công, Hoàng Mai, Hà Nội</P>

                    </td>
                </tr>
            </table>
           
        </div>

   
        <table  class=" chitiethoadon">
            <tr>
                <td>Tên sản phẩm </td> 
                <td>Giá</td>
         
             
            </tr>
                            <asp:ListView ID="ListViewCart" runat="server">
<ItemTemplate>
            <tr>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Price") %></td>
            </tr>
                                	</ItemTemplate>
</asp:ListView>
            <tr></tr>
            <tr>  <td>Tổng tiền</td>
                <td class="TongTien">  <p runat="server" id="order_total_price"> <span class="cart__product-price-unit">đ</span></p> 
    </td></tr>
                                  
        </table>
        <div class="Ngay-ChuKy">
            <div class="Ngay">
               <p class="ViTri"></p>
        <p>Ngày</p>
        <p class="Day"></p>
        <p>Tháng</p>
        <p class="Month"></p>
        <p>Năm</p>
        <p class="Year"></p> 
            </div>
        
        <br>
        <div class="ChuKy">
            <p class="Khach">KHÁCH HÀNG</p>
            <p class="Cua">CỬA HÀNG</p>
        </div>
        </div>
        <script src="JS/HoaDonJS.js"></script>
     </div>
    
    

</asp:Content>
