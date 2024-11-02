<%@ Page Title="" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="BaoHanh.aspx.cs" Inherits="BTLweb.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/BaoHanhStyle.css" rel="stylesheet" />
    <div class="container">
        <!-- <img src="img/background.png" alt=""> -->
        <div class="header">
            <a href="TrangChu.aspx"><img src="img/logo.png" alt="logo" class="logo"></a>
            <ul class="menu-links">
                <li><a href="Trangchu.html">Trang chủ</a></li>
                <li><a href="KhuyenMai.html">Khuyến mãi </a></li>
                <li><a href="#">Chính sách </a></li>
                <li><a href="#">Liên hệ</a></li>    
            </ul>
            <button id="btnBuy"><a href="Trangchu.aspx" target="_self">Mua ngay</a></button>

        </div>

        <div class="section1">
            <div class="image-section">
                <img src="img/imgBH.png" alt="ảnh bao hanh" id="imgBH">
            </div>
        </div>

        <div class="section2">
            <div class="background">
                
                <div class="content">
                    <h2>I. ĐIỀU KIỆN NHẬN BẢO HÀNH</h2>
                    <ul>
                    <li>- Các sản phẩm, thiết bị do các cửa hàng của LapTopHay hoặc gian hàng LapTopHay trên Lazada, Shopee, Tiki cung cấp.</li>
                    <li>- Đối với các sản phẩm, thiết bị được cấp phiếu bảo hành (PBH), khách hàng phải xuất trình PBH và có đầy đủ tem bảo hành của LapTopHay (nếu thiết bị
                không cấp PBH thì phải còn nguyên tem của LapTopHay) và phải còn trong thời hạn bảo hành.</li>
                    <li>- Tem bảo hành, mã vạch số serial,... của sản phẩm phải còn nguyên vẹn, không có dấu hiệu cạo sửa, tẩy xóa, bị rách, mờ.</li>
                    <li>- Trong trường hợp, tem chưa rách nhưng bị mờ hoặc tem bị rách do yếu tố khách quan nào đó, công ty sẽ tạm thời giữ lại để kiểm tra, xác nhận thông tin. Nếu sản
                phẩm, thiết bị do HÀNG CHÍNH HIỆU cung cấp thì mới được chính thức nhận bảo hành. Nếu có vấn đề phát sinh, HÀNG CHÍNH HIỆU sẽ liên hệ ngay để xác nhận với
                khách hàng trong vòng 24h kể từ khi nhận máy.</li>
                    <li>- Những hư hỏng của thiết bị được xác định do lỗi kỹ thuật hoặc lỗi của nhà sản xuất.</li>
                    <li>- Đối với laptop, màn hình LCD có số điểm chấm từ 5 điểm lỗi trở lên.</li>
                    </ul>
                </div>
           
            </div>
            <div class="content">
                 
                 
                <h2>II. TRƯỜNG HỢP KHÔNG NHẬN BẢO HÀNH </h2>
                <ul>
                    <li>- Các sản phẩm, thiết bị có dấu hiệu dung dịch lạ, có nước vào, có vết ẩm ướt, bị đứt mạch, 
                        bị trầy xước, bể mẻ, móp méo, biến dạng, có dấu hiệu cháy nổ, nám, phù tụ, gỉ sét hoặc các hiện tượng được 
                        cho là do lỗi cá nhân gây ra. 
                        Hoặc nếu được nhận BH, khách hàng phải hoàn toàn chịu chi phí phát sinh đối với các lỗi đó.</li>
                        
                    <li>- Thiết bị hư hỏng do thiên tai, hỏa hoạn, sử dụng nguồn điện không ổn định hoặc do lắp
                         đặt, vận chuyển không đúng quy cách, …</li>
                    <li>- Màn hình LCD bị loang màu, chảy màu LCD.
                    </li>
                    <li> -Các phụ kiện kèm theo thiết bị như: chuột, bao lụa, bộ dây sạc, tai nghe, cable nối, vỏ máy, nút công tắc, dây điện, quạt tản nhiệt
                        hoặc sản phẩm tặng kèm theo máy.</li>
                    <li>Không bảo hành đối với quà khuyến mãi của công ty.</li>
                    <p>Đặc biệt: không nhận BH về dữ liệu trong các thiết bị lưu trữ, bản quyền phần mềm.
                    </p>
                </ul>
              
            </div>
        </div>

        <div class="section3">
            <div class="related-subsections">
                <div class="subsection1">
                    <h2>III. LAPTOP HẾT BH CHÍNH HÃNG</h2>
                    <div class="NoiDung">
                      <p>- LapTopHay sẽ yêu cầu Khách hàng cung cấp hóa đơn GTGT để được tiếp tục bảo hành. Nên khi nhận máy,
                        Khách Hàng nên yêu cầu của hàng cung cấp hóa đơn VAT và lưu giữ trong suốt thời gian bảo hành máy (ít nhất
                        là lưu lại file hình ảnh rõ ràng của hóa đơn). Chú ý: Tem Hàng Chính Hiệu chỉ dùng để nhận biết là sản phẩm phân phối bởi công ty, chứ không có giá trị thay thế hóa đơn GTGT.</p>
                         
                    </div>
                     
                </div>
                <div class="subsection2">
                    <h2>IV. LAPTOP HẾT BH CỬA HÀNG</h2>
                    <div class="NoiDung">
                       <p>- Đối với các sản phẩm, thiết bị hết thời hạn BH, LapTopHay vẫn nhận máy và chuyển sang trường hợp SỬA CHỮA DỊCH VỤ.
                        Khách hàng sẽ hoàn toàn chịu tất cả các chi phí thay thế linh kiện, sửa chữa do Trung tâm bảo hành ASUS đưa ra.
                        LapTopHay sẽ hỗ trợ Khách hàng gởi bảo hành đến Trung tâm bảo hành.
                        </p> 
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="section4">
            <h2> <i class="ti-check"></i>
                THỜI GIAN TRẢ BẢO HÀNH</h2>
            <p>
               Dự kiến từ 7 - 10 ngày tính từ ngày tiếp nhận bảo hành tại cửa hàng (không tính thứ 7 và chủ nhật, ngày lễ).
                        Đối với những lỗi phức tạp hơn thì thời gian bảo hành có thể kéo dài, LapTopHay sẽ thông báo cho bạn nếu có thông tin bảo hành từ hãng.
        
            </p>
            
                    </div>
        
            
    </div>
</asp:Content>
