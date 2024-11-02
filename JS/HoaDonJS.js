// Lấy thông tin từ URL
var params = new URLSearchParams(window.location.search);
var productName = params.get('productName');
var productPrice = params.get('productPrice');
var shippingFee = params.get('shippingFee');

// Hiển thị thông tin trong trang hóa đơn
document.querySelector('.productName').innerText = productName;
document.querySelector('.productPrice').innerText = productPrice;
document.querySelector('.shippingFee').innerText = shippingFee;

// Xóa dấu và tính tổng tiền
var totalPrice = parseFloat(productPrice.replace('₫', '').replace(/\./g, '')) + parseFloat(shippingFee);
document.querySelector('.TongTien').innerText = totalPrice.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });


// Lấy ngày hiện tại
var today = new Date();
var day = String(today.getDate()).padStart(2, '0');
var month = String(today.getMonth() + 1).padStart(2, '0');
var year = today.getFullYear();
document.querySelector('.Day').textContent = day;
document.querySelector('.Month').textContent = month;
document.querySelector('.Year').textContent = year;
// Hàm tạo số hóa đơn tự động
function generateInvoiceNumber() {
    var invoiceNumber = 'HD' + String(invoiceCounter).padStart(2, '0');
    invoiceCounter++;
    return invoiceNumber;
}

// Biến đếm số hóa đơn
var invoiceCounter = 1;

// Hiển thị số hóa đơn vào phần tử có lớp SoHoaDon
document.querySelector('.SoHoaDon').innerText = generateInvoiceNumber();