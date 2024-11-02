<%@ Page Title="ĐĂNG KÝ TÀI KHOẢN" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTLweb.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<link href="css/DangKyStyle.css" rel="stylesheet" />--%>
    <link href="css/DangKy.css" rel="stylesheet" />

    <div class="breadcrumbs">
            <a href="TrangChu.aspx">Trang chủ</a> /
            <a href="TaiKhoan.aspx">Tài khoản</a> /
            <span id="titleSpan"></span>
        </div>
    <div class="login-form">
                <!-- login form -->
                <h2>ĐĂNG KÝ TÀI KHOẢN</h2>
                <h6>Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập ngay</a></h6>
                <h4>THÔNG TIN CÁ NHÂN</h4>
                <form method="post">
                    <div class="form-group">
                        <label for="userTK">Họ Tên:<span class="required" title="Không được để trống">*</span></label>
                        <input type="text" id="userTK" name="ho" placeholder="Nguyễn Văn A">
                        <div class="form-check" id="checkHo"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="phone">Số điện thoại:<span class="required" title="Không được để trống">*</span></label>
                        <input type="text" id="phone" name="phone" placeholder="1900100###">
                        <div class="form-check" id="checkPhone"></div>

                    </div>
                    <div class="form-group">
                        <label for="email">Email:<span class="required" title="Không được để trống">*</span></label>
                        <input type="text" id="email" name="email" placeholder="abcd@gmail.com">
                        <div class="form-check" id="checkemail"></div>
                        
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu:<span class="required" title="Không được để trống">*</span></label>
                        <input type="password" id="password" name="password" placeholder="Mật khẩu">
                        <div class="form-check" id="checkpass"></div>
                        <ul class="condition-list" style="list-style-type: none; padding: 0;">
                            
        
        <li class="condition-item" id="length-condition">Tối thiểu 8 ký tự</li> 
        <li class="condition-item" id="uppercase-condition">Ít nhất 1 ký tự viết hoa</li>
        <li class="condition-item" id="number-condition">Ít nhất 1 chữ số</li>
        <li class="condition-item" id="special-character-condition">Ít nhất 1 ký tự đặc biệt</li>
    </ul>
                    </div>
                    <button type="submit" class="BtnDangKy" name="btnSignUp" value="true">Đăng Ký</button>


<%--                    <button class="BtnDangKy" id="btnDK" type=" submit">Đăng Ký</button>--%>
                </form>
            </div>
    <script src="JS/BeadcrumbsJS.js"></script>
     <script>

         // Lấy các phần tử HTML input và các phần tử hiển thị thông báo lỗi tương ứng
         let userTk = document.getElementById('userTK');
         let phone = document.getElementById('phone');
         let email = document.getElementById('email');
         var password = document.getElementById('password');

         var checkHo = document.getElementById('checkHo');
         var checkPhone = document.getElementById('checkPhone');
         var checkemail = document.getElementById('checkemail');
         var checkpass = document.getElementById('checkpass');

         // Hàm kiểm tra trường input có trống không
         function checktrong(inputField) {
             return inputField.value.trim() === '';
         }

         // Hàm kiểm tra định dạng email có hợp lệ không
         function Checkmail(email) {
             // Biểu thức chính quy để kiểm tra định dạng email
             const emaipattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
             // Kiểm tra xem giá trị nhập vào có khớp với biểu thức chính quy không
             return emaipattern.test(email.value.trim());
         }

         // Sự kiện blur để kiểm tra điều kiện của input khi người dùng nhập xong và di chuyển con trỏ ra khỏi input
         userTk.addEventListener('blur', function () {
             if (checktrong(userTk)) {
                 userTk.style.borderColor = 'red';
                 checkHo.innerHTML = 'Họ tên không được để trống';
             } else {
                 userTk.style.borderColor = 'green';
                 checkHo.innerHTML = '';
             }
         });

         phone.addEventListener('blur', function () {
             if (checktrong(phone) || isNaN(parseInt(phone.value.trim())) || phone.value.trim().length !== 10) {
                 phone.style.borderColor = 'red';
                 checkPhone.innerHTML = 'Số điện thoại không hợp lệ !!';
             } else {
                 phone.style.borderColor = 'green';
                 checkPhone.innerHTML = '';
             }
         });

         email.addEventListener('blur', function () {
             if (checktrong(email)) {
                 email.style.borderColor = 'red';
                 checkemail.innerHTML = 'email không được để trống!!';
             } else if (!Checkmail(email)) {
                 email.style.borderColor = 'red';
                 checkemail.innerHTML = 'email không hợp lệ!!';
             }
             else {
                 email.style.borderColor = 'green';
                 checkemail.innerHTML = '';
             }
         });

         password.addEventListener('blur', function () {
             if (checktrong(password)) {
                 password.style.borderColor = 'red';
                 checkpass.innerHTML = 'Mật khẩu không được để trống';
             } else {
                 password.style.borderColor = 'green';
                 checkpass.innerHTML = '';
             }
         });
         //điều kiện mật khẩu 
         
         const conditions = {
             length: false,
             uppercase: false,
             number: false,
             specialCharacter: false
         };

         const lengthCondition = document.getElementById('length-condition');
         const uppercaseCondition = document.getElementById('uppercase-condition');
         const numberCondition = document.getElementById('number-condition');
         const specialCharacterCondition = document.getElementById('special-character-condition');

         // Hàm kiểm tra mật khẩu
         function checkPassword() {
             const pass = password.value;

             // Kiểm tra độ dài mật khẩu
             conditions.length = pass.length >= 8;
             lengthCondition.classList.toggle('valid', conditions.length);

             // Kiểm tra ký tự viết hoa
             conditions.uppercase = /[A-Z]/.test(pass);
             uppercaseCondition.classList.toggle('valid', conditions.uppercase);

             // Kiểm tra chữ số
             conditions.number = /\d/.test(pass);
             numberCondition.classList.toggle('valid', conditions.number);

             // Kiểm tra ký tự đặc biệt
             conditions.specialCharacter = /[!@#$%^&*(),.?":{}|<>]/.test(pass);
             specialCharacterCondition.classList.toggle('valid', conditions.specialCharacter);
         }
         

         // Thêm sự kiện input cho trường nhập mật khẩu
         password.addEventListener('input', checkPassword);
         //// Thêm sự kiện click và xử lý cho nút "Đăng ký"
         //BtnDangKy.addEventListener('click', function (e) {
             
         //        // Chuyển hướng sang trang Đăng nhập
         //        window.location.href = "DangNhap.aspx";
             
         //});

         //// Hàm kiểm tra lỗi
         //function checkError() {
         //    // Thực hiện kiểm tra lỗi của từng trường và hiển thị thông báo nếu cần
         //    if (checktrong(userTk) || checktrong(phone) || checktrong(email) || checktrong(password)) {
         //        // Hiển thị thông báo lỗi nếu cần
         //        return true; // Có lỗi
         //    }

         //    // Kiểm tra các điều kiện mật khẩu và hiển thị thông báo nếu cần
         //    if (!conditions.length || !conditions.uppercase || !conditions.number || !conditions.specialCharacter) {
         //        // Hiển thị thông báo lỗi nếu cần
         //        return true; // Có lỗi
         //    }

         //    return false; // Không có lỗi
         //}

     </script>
    
</asp:Content>
