

document.addEventListener('DOMContentLoaded', function() {
    // Lấy các phần tử cần thiết từ tài liệu HTML
    const minusBtn = document.querySelector('.minus'); // Nút trừ (-)
    const plusBtn = document.querySelector('.plus');   // Nút cộng (+)
    const quantityInput = document.querySelector('.quantity-input'); // Trường nhập số

    // Xử lý sự kiện khi nút trừ (-) được nhấn
    minusBtn.addEventListener('click', function() {
        // Giảm giá trị của trường nhập số nếu giá trị hiện tại lớn hơn 1
        if (parseInt(quantityInput.value) > 1) {
            quantityInput.value = parseInt(quantityInput.value) - 1; // Giảm giá trị đi 1 đơn vị
        }
    });

    // Xử lý sự kiện khi nút cộng (+) được nhấn
    plusBtn.addEventListener('click', function() {
        // Tăng giá trị của trường nhập số
        quantityInput.value = parseInt(quantityInput.value) + 1; // Tăng giá trị lên 1 đơn vị
    });
});

//thnah toán 
function formatCurrency(value) {
    // Sử dụng hàm toLocaleString để định dạng giá tiền
    return value.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
}

// Lấy phần tử có class là "Money"
const moneyElement = document.querySelector('.Money');
if (moneyElement) {
    // Lấy giá trị tiền từ nội dung của phần tử
    const moneyValue = parseInt(moneyElement.textContent.replace(/\D/g, ''));
    // Định dạng lại giá tiền và gán vào phần tử
    moneyElement.textContent = formatCurrency(moneyValue);
}
document.addEventListener('DOMContentLoaded', function() {
    // Hàm để cập nhật tổng giá vào phần tử có class là "tong-cong-gia"
    function updateTotalPrice() {
        // Lấy giá tiền từ phần tử có class là "Money"
        const moneyElement = document.querySelector('.Money');
        // Lấy số lượng từ trường nhập số có class là "quantity-input"
        const quantityInput = document.querySelector('.quantity-input');
        
        if (moneyElement && quantityInput) {
            // Chuyển đổi giá tiền thành số và lấy giá trị từ nội dung của phần tử
            const moneyValue = parseInt(moneyElement.textContent.replace(/\D/g, ''));
            // Lấy giá trị số lượng từ trường nhập số
            let quantity = parseInt(quantityInput.value);
            // Kiểm tra xem giá trị số lượng có hợp lệ không
            if (isNaN(quantity) || quantity < 1) {
                // Nếu không hợp lệ, gán số lượng bằng 1 và hiển thị cảnh báo
                quantity = 1;
                quantityInput.value = quantity;
                alert('Số lượng phải lớn hơn 0.');
            }
            // Tính tổng giá bằng cách nhân giá tiền với số lượng
            const totalPrice = moneyValue * quantity;
            // Định dạng lại tổng giá và gán vào phần tử có class là "tong-cong-gia"
            document.querySelector('.tong-cong-gia').textContent = formatCurrency(totalPrice);
        }
    }

    // Gọi hàm updateTotalPrice khi trang được tải
    updateTotalPrice();

    // Lắng nghe sự kiện khi số lượng sản phẩm thay đổi
    const quantityInput = document.querySelector('.quantity-input');
    if (quantityInput) {
        quantityInput.addEventListener('input', function() {
            // Gọi hàm updateTotalPrice mỗi khi số lượng thay đổi
            updateTotalPrice();
        });
    }

    // Lắng nghe sự kiện khi nút trừ (-) được nhấn
    const minusBtn = document.querySelector('.minus');
    if (minusBtn) {
        minusBtn.addEventListener('click', function() {
            let quantity = parseInt(quantityInput.value);
            if (quantity >= 1) {
                // Giảm số lượng đi 1 nếu giá trị hiện tại lớn hơn 1
                quantity--;
                quantityInput.value = parseInt(quantityInput.value);
                // quantityInput.value = quantity;
                // Sau khi giảm số lượng, cập nhật tổng giá
                updateTotalPrice();
            }
        });
    }
    
    // Lắng nghe sự kiện khi nút cộng (+) được nhấn
    const plusBtn = document.querySelector('.plus');
        if (plusBtn) {
            plusBtn.addEventListener('click', function() {
                let quantityInput = document.querySelector('.quantity-input')+1;
                // Tăng số lượng đi 1
                quantityInput.value = parseInt(quantityInput.value);
                // Sau khi tăng số lượng, cập nhật tổng giá
                updateTotalPrice();
            });
        }
});

// Hàm định dạng số tiền
function formatCurrency(value) {
    return value.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
}
// lấy ngày hiện tại gán cho ngày nhận hàng 
document.addEventListener('DOMContentLoaded', function() {
    // Lấy ngày hiện tại
    const today = new Date();
    // Format ngày tháng về chuỗi YYYY-MM-DD để gán cho input date
    const formattedDate = today.toISOString().split('T')[0];
    // Gán giá trị ngày hiện tại cho trường nhập ngày
    document.getElementById('ngayNhanHang').value = formattedDate;
});