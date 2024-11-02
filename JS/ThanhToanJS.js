
// Hàm lấy giá trị tiền từ class Money, gán vào class TienTamTinh và định dạng tiền
var moneyElements = document.querySelectorAll('.Money');
moneyElements.forEach(function (element) {
    var money = parseFloat(element.innerText);
    var money = parseFloat(element.innerText);
    element.innerText = money.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    var tienTamTinhElement = document.querySelector('.TienTamTinh');
    tienTamTinhElement.innerText = money.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
});
//capj nhật phí vnaja chuyển khi ấn vào radiobutton 
function updateTextValue(value) {
    document.getElementById('PhiVanChuyen').value = value;
    tinhTongTien();
}
function tinhTongTien() {
    var tienTamTinhElement = document.querySelector('.TienTamTinh');
    var phiVanChuyenInput = document.getElementById('PhiVanChuyen').value.trim(); // Lấy giá trị nhập vào và loại bỏ khoảng trắng ở đầu và cuối
    var phiVanChuyen = parseFloat(phiVanChuyenInput) || 0; // Chuyển đổi thành số, nếu không có giá trị hoặc không phải là số thì gán mặc định là 0
    var tongTienElement = document.querySelector('.TongTien');

    var tienTamTinh = parseFloat(tienTamTinhElement.innerText.replace('₫', '').replace(/\./g, '').trim()); // Lấy số tiền tạm tính từ phần tử và loại bỏ ký tự không cần thiết
    var tongTien = tienTamTinh + phiVanChuyen; // Tính tổng tiền

    tongTienElement.innerText = tongTien.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }); // Định dạng và gán tổng tiền vào phần tử
}


window.onload = function () {
    tinhTongTien();
}

// Lặp qua danh sách các radio button và gắn sự kiện onchange


// Hàm ẩn tất cả các thông tin giải thích
function anTatCaThongTinGiaiThich() {
    var thongTinGiaiThichs = document.querySelectorAll('.thong-tin-giai-thich');
    thongTinGiaiThichs.forEach(function (thongTinGiaiThich) {
        thongTinGiaiThich.style.display = 'none';
    });
}

// Hàm hiển thị thông tin giải thích tương ứng khi radio button được chọn
function hienThongTin(radioButton) {
    anTatCaThongTinGiaiThich(); // Ẩn tất cả các thông tin giải thích trước khi hiển thị

    var thongTinGiaiThich = radioButton.parentNode.querySelector('.thong-tin-giai-thich');
    if (thongTinGiaiThich) {
        thongTinGiaiThich.style.display = 'block';
    }
}

// Lấy danh sách các radio button
var radioButtons = document.querySelectorAll('input[type="radio"][name="payment_method"]');
// Lặp qua từng radio button để gắn sự kiện onchange
radioButtons.forEach(function (radioButton) {
    radioButton.addEventListener('change', function () {
        hienThongTin(this); // Gọi hàm hiển thị thông tin giải thích khi radio button được chọn
    });
});
// Sự kiện khi click vào nút hoàn tất
document.querySelector('.HoanTat').onclick = function () {
    // Lấy thông tin đơn hàng
    var productName = document.querySelector('.User-ten').innerText;
    var productPrice = document.querySelector('.Money').innerText;
    var shippingFee = document.getElementById('PhiVanChuyen').value.trim();

    // Tạo URL của trang hóa đơn
    var url = 'HoaDon.aspx'; // Đường dẫn đến trang hoá đơn của bạn

    // Thêm thông tin đơn hàng vào URL
    url += '?productName=' + encodeURIComponent(productName) + '&productPrice=' + encodeURIComponent(productPrice) + '&shippingFee=' + encodeURIComponent(shippingFee);

    // Chuyển đến trang hoá đơn
    window.location.href = url;
};
