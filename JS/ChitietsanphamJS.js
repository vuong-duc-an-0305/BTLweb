let slideIndex = 0;

// Hiển thị slide ban đầu khi trang được tải
showSlides();

// Hàm để hiển thị slide và xử lý thumbnail tương ứng
function showSlides() {
    let slides = document.getElementsByClassName("slide");
    // let thumbnails = document.getElementsByClassName("thumbnail");

    // Ẩn tất cả các slide và loại bỏ lớp 'selected' từ tất cả các thumbnail
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
        // thumbnails[i].classList.remove("selected");
    }

    // Hiển thị slide hiện tại và thêm lớp 'selected' cho thumbnail tương ứng
    slides[slideIndex].style.display = "block";
    // thumbnails[slideIndex].classList.add("selected");
}

// Hàm được gọi khi click vào một thumbnail để chuyển đến slide tương ứng
function currentSlide(n) {
    var thumbnail1 = document.querySelector('.thumbnails');
    var selectedThu = thumbnail1.querySelector('.thumbnail.selected');
    slideIndex = n - 1;
    showSlides();
}
// Thêm vào cuối mã script hiện tại
document.addEventListener('DOMContentLoaded', function () {
    const slideshowContainer = document.querySelector('.slideshow-container');
    const images = slideshowContainer.querySelectorAll('img');

    // Đếm số lượng ảnh trong slideshow-container
    const imageCount = images.length;

    // Lặp qua mỗi ảnh để tạo thumbnail tương ứng
    images.forEach((image, index) => {
        // Tạo một thumbnail element
        const thumbnail = document.createElement('div');
        thumbnail.classList.add('thumbnail');

        // Tạo thuộc tính data-index để lưu vị trí của ảnh trong slideshow-container
        thumbnail.setAttribute('data-index', index);

        // Thêm sự kiện click để chuyển đến ảnh tương ứng
        thumbnail.addEventListener('click', function () {
            const imageIndex = parseInt(this.getAttribute('data-index'));
            currentSlide(imageIndex + 1); // Thêm 1 vì slideIndex bắt đầu từ 0
        });

        // Thêm thumbnail vào trong div thumbnails
        const thumbnailsContainer = document.querySelector('.thumbnails');
        thumbnailsContainer.appendChild(thumbnail);

        // Tạo ảnh thumbnail từ ảnh trong slideshow-container
        const thumbnailImage = document.createElement('img');
        thumbnailImage.src = image.src;
        thumbnailImage.alt = 'Thumbnail ' + (index + 1); // Thêm 1 vì index bắt đầu từ 0
        thumbnail.appendChild(thumbnailImage);
    });

    // Hiển thị thông tin số lượng ảnh
    console.log('Số lượng ảnh trong slideshow-container:', imageCount);
});

// Hàm được gọi khi click vào nút previous hoặc next để chuyển slide
function moveSlide(n) {
    // Điều chỉnh slideIndex bằng n (di chuyển qua trái hoặc phải)
    slideIndex += n;

    // Kiểm tra nếu slideIndex vượt quá số lượng slide
    if (slideIndex >= document.getElementsByClassName("slide").length) {
        slideIndex = 0; // Quay lại slide đầu tiên
    } else if (slideIndex < 0) {
        slideIndex = document.getElementsByClassName("slide").length - 1; // Chuyển đến slide cuối cùng
    }

    showSlides();
    adjustThumbnailScroll();
}
// Hàm này sẽ điều chỉnh vị trí scroll của phần tử chứa các thumbnail
function adjustThumbnailScroll() {
    let thumbnailsContainer = document.querySelector('.thumbnails');
    let activeThumbnail = document.querySelector('.thumbnail.selected');

    if (activeThumbnail) {
        // Kiểm tra xem vị trí của thumbnail hiện tại có vượt quá phần tử chứa hay không
        let thumbnailsContainerWidth = thumbnailsContainer.offsetWidth;
        let thumbnailsContainerScrollLeft = thumbnailsContainer.scrollLeft;
        let activeThumbnailOffsetLeft = activeThumbnail.offsetLeft;
        let activeThumbnailWidth = activeThumbnail.offsetWidth;

        if (activeThumbnailOffsetLeft < thumbnailsContainerScrollLeft) {
            // Nếu thumbnail hiện tại nằm bên trái phần tử chứa, cuộn về bên trái
            thumbnailsContainer.scrollLeft = activeThumbnailOffsetLeft;
        } else if (activeThumbnailOffsetLeft + activeThumbnailWidth > thumbnailsContainerScrollLeft + thumbnailsContainerWidth) {
            // Nếu thumbnail hiện tại nằm bên phải phần tử chứa, cuộn về bên phải
            thumbnailsContainer.scrollLeft = activeThumbnailOffsetLeft + activeThumbnailWidth - thumbnailsContainerWidth;
        }
    }
}
const images = document.querySelectorAll('.AnhSP .slideshow-container img');

// Duyệt qua từng ảnh trong danh sách
images.forEach(image => {
    // Thêm sự kiện 'mousemove' cho mỗi ảnh
    image.addEventListener('mousemove', zoomIn);
    // Thêm sự kiện 'mouseleave' cho mỗi ảnh
    image.addEventListener('mouseleave', zoomOut);
});

// Hàm xử lý khi di chuột vào ảnh (zoom in)
function zoomIn(e) {
    // Lấy ra kích thước và vị trí của ảnh trong khung trình duyệt
    const { left, top, width, height } = this.getBoundingClientRect();
    // Tính toán vị trí của con trỏ chuột trong ảnh
    const x = (e.clientX - left) / width * 100;
    const y = (e.clientY - top) / height * 100;

    // Thiết lập điểm trung tâm phóng to ảnh
    this.style.transformOrigin = `${x}% ${y}%`;
    // Phóng to ảnh lên 110% so với kích thước ban đầu
    this.style.transform = 'scale(1.6)';
}

// Hàm xử lý khi di chuột ra khỏi ảnh (zoom out)
function zoomOut() {
    // Trở về kích thước ban đầu của ảnh
    this.style.transform = 'scale(1)';
}
// Chờ tài liệu HTML được tải hoàn toàn
document.addEventListener('DOMContentLoaded', function () {
    // Lấy các phần tử cần thiết từ tài liệu HTML
    const minusBtn = document.querySelector('.minus'); // Nút trừ (-)
    const plusBtn = document.querySelector('.plus');   // Nút cộng (+)
    const quantityInput = document.querySelector('.quantity-input'); // Trường nhập số

    // Xử lý sự kiện khi nút trừ (-) được nhấn
    minusBtn.addEventListener('click', function () {
        // Giảm giá trị của trường nhập số nếu giá trị hiện tại lớn hơn 1
        if (parseInt(quantityInput.value) > 1) {
            quantityInput.value = parseInt(quantityInput.value) - 1; // Giảm giá trị đi 1 đơn vị
        }
    });

    // Xử lý sự kiện khi nút cộng (+) được nhấn
    plusBtn.addEventListener('click', function () {
        // Tăng giá trị của trường nhập số
        quantityInput.value = parseInt(quantityInput.value) + 1; // Tăng giá trị lên 1 đơn vị
    });
});
var AnhS = 0;
AnhSlide();

// Hàm AnhSlide để hiển thị ảnh trong slideshow và chuyển đổi sau mỗi 5 giây
function AnhSlide() {
    var i;
    // Lấy tất cả các phần tử chứa ảnh
    var slides = document.getElementsByClassName("anh");
    // Ẩn tất cả các ảnh
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    // Tăng slideIndex lên 1 (để chuyển đến ảnh tiếp theo)
    AnhS++;
    // Nếu slideIndex lớn hơn số lượng ảnh thì đặt slideIndex về 1
    if (AnhS > slides.length) { AnhS = 1 }
    // Hiển thị ảnh tương ứng với slideIndex
    slides[AnhS - 1].style.display = "block";
    // Gọi hàm AnhSlide() sau 5 giây
    setTimeout(AnhSlide, 6000); // Đổi ảnh sau mỗi 5 giây
}


// Hàm được gọi khi click vào một thumbnail để chuyển đến slide tương ứng
function chuyenanh(n) {
    // Kiểm tra xem slide hiện tại có phải từ thanh trượt không
    var thumbnailContainer = document.querySelector('.thanhtruot');
    var selectedThumbnail = thumbnailContainer.querySelector('.thumbnail.selected');
    if (selectedThumbnail) {
        // Nếu slide được chọn từ thanh trượt, không thay đổi slide của slideshow
        return;
    }
    AnhS = n - 1;
    AnhSlide();
}

// Lấy tất cả các phần tử có class là 'slide' (chứa ảnh trong slideshow)
function taoThanhTruot() {
    var slides = document.getElementsByClassName("anh");
    var thumbnails = document.querySelector(".thanhtruot");
    // Xóa các thumbnail hiện có
    thumbnails.innerHTML = "";
    // Tạo các thumbnail mới tương ứng với số lượng ảnh
    for (var i = 0; i < slides.length; i++) {
        var thumbnail = document.createElement("div");
        thumbnail.classList.add("thumbnail");
        thumbnail.setAttribute("onclick", "chuyenanh(" + (i + 1) + ")");



        thumbnails.appendChild(thumbnail);

    }
}

// Gọi hàm tạo thumbnail khi trình duyệt đã tải xong trang
window.onload = function () {
    taoThanhTruot();
};