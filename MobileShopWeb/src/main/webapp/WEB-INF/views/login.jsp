<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Nhập khẩu JSTL để sử dụng tag trong JSP -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Định nghĩa kiểu nội dung và ngôn ngữ cho trang JSP -->
<!DOCTYPE html> <!-- Khai báo loại tài liệu HTML -->
<html lang="vi"> <!-- Định nghĩa ngôn ngữ của trang là tiếng Việt -->
<head>
    <meta charset="UTF-8"> <!-- Thiết lập mã hóa ký tự là UTF-8 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Đảm bảo tính tương thích với các thiết bị di động -->
    <title>Đăng Nhập</title> <!-- Tiêu đề trang -->
    <style>
        /* CSS để tạo kiểu cho trang */
        * {
            box-sizing: border-box; /* Thiết lập box-sizing để bao gồm padding và border trong tổng chiều rộng và chiều cao */
            margin: 0; /* Đặt margin mặc định là 0 */
            padding: 0; /* Đặt padding mặc định là 0 */
            font-family: Raleway, sans-serif; /* Thiết lập phông chữ cho toàn bộ trang */
        }

        body {
            background: linear-gradient(90deg, #C7C5F4, #776BCC); /* Thiết lập nền gradient cho trang */
        }

        .container {
            display: flex; /* Sử dụng flexbox để căn giữa nội dung */
            align-items: center; /* Căn giữa theo chiều dọc */
            justify-content: center; /* Căn giữa theo chiều ngang */
            min-height: 100vh; /* Chiều cao tối thiểu là 100% chiều cao viewport */
        }

        .screen {
            background: linear-gradient(90deg, #5D54A4, #7C78B8); /* Nền gradient cho khung đăng nhập */
            position: relative; /* Đặt vị trí tương đối để có thể sử dụng các yếu tố tuyệt đối bên trong */
            height: 600px; /* Chiều cao khung đăng nhập */
            width: 360px; /* Chiều rộng khung đăng nhập */
            box-shadow: 0px 0px 24px #5C5696; /* Thêm bóng cho khung */
        }

        .screen__content {
            z-index: 1; /* Đặt z-index để hiển thị trên nền */
            position: relative; /* Đặt vị trí tương đối để có thể chứa các phần tử bên trong */
            height: 100%; /* Chiều cao 100% của khung */
        }

        .screen__background {
            position: absolute; /* Đặt vị trí tuyệt đối cho nền */
            top: 0; /* Đặt vị trí từ trên xuống 0 */
            left: 0; /* Đặt vị trí từ bên trái 0 */
            right: 0; /* Đặt vị trí từ bên phải 0 */
            bottom: 0; /* Đặt vị trí từ dưới lên 0 */
            z-index: 0; /* Đặt z-index thấp hơn để nền nằm dưới nội dung */
            -webkit-clip-path: inset(0 0 0 0); /* Clip-path cho trình duyệt webkit */
            clip-path: inset(0 0 0 0); /* Clip-path cho các trình duyệt khác */
        }

        /* Định nghĩa các hình dạng nền */
        .screen__background__shape {
            transform: rotate(45deg); /* Xoay hình dạng 45 độ */
            position: absolute; /* Đặt vị trí tuyệt đối cho các hình dạng */
        }

        .screen__background__shape1 {
            height: 520px; /* Chiều cao hình dạng 1 */
            width: 520px; /* Chiều rộng hình dạng 1 */
            background: #FFF; /* Màu nền hình dạng 1 là trắng */
            top: -50px; /* Đặt vị trí từ trên xuống -50px */
            right: 120px; /* Đặt vị trí từ bên phải 120px */
            border-radius: 0 72px 0 0; /* Bo góc trên phải của hình dạng */
        }

        .screen__background__shape2 {
            height: 220px; /* Chiều cao hình dạng 2 */
            width: 220px; /* Chiều rộng hình dạng 2 */
            background: #6C63AC; /* Màu nền hình dạng 2 */
            top: -172px; /* Đặt vị trí từ trên xuống -172px */
            right: 0; /* Đặt vị trí từ bên phải 0 */
            border-radius: 32px; /* Bo góc cho hình dạng */
        }

        .screen__background__shape3 {
            height: 540px; /* Chiều cao hình dạng 3 */
            width: 190px; /* Chiều rộng hình dạng 3 */
            background: linear-gradient(270deg, #5D54A4, #6A679E); /* Nền gradient cho hình dạng 3 */
            top: -24px; /* Đặt vị trí từ trên xuống -24px */
            right: 0; /* Đặt vị trí từ bên phải 0 */
            border-radius: 32px; /* Bo góc cho hình dạng */
        }

        .screen__background__shape4 {
            height: 400px; /* Chiều cao hình dạng 4 */
            width: 200px; /* Chiều rộng hình dạng 4 */
            background: #7E7BB9; /* Màu nền hình dạng 4 */
            top: 420px; /* Đặt vị trí từ trên xuống 420px */
            right: 50px; /* Đặt vị trí từ bên phải 50px */
            border-radius: 60px; /* Bo góc cho hình dạng */
        }

        /* CSS cho form đăng nhập */
        .login {
            width: 320px; /* Chiều rộng của form đăng nhập */
            padding: 30px; /* Padding tổng thể cho form */
            padding-top: 156px; /* Padding phía trên */
        }

        .login__field {
            padding: 20px 0px; /* Padding cho các trường đăng nhập */
            position: relative; /* Đặt vị trí tương đối để chứa biểu tượng */
        }

        .login__icon {
            position: absolute; /* Đặt vị trí tuyệt đối cho biểu tượng */
            top: 30px; /* Đặt vị trí từ trên xuống 30px */
            color: #7875B5; /* Màu sắc biểu tượng */
        }

        .login__input {
            border: none; /* Không có đường viền */
            border-bottom: 2px solid #D1D1D4; /* Đường viền dưới cho trường nhập */
            background: none; /* Không có màu nền */
            padding: 10px; /* Padding cho trường nhập */
            padding-left: 24px; /* Padding bên trái */
            font-weight: 700; /* Đậm chữ */
            width: 75%; /* Chiều rộng trường nhập */
            transition: .2s; /* Thêm hiệu ứng chuyển tiếp */
        }

        .login__input:active,
        .login__input:focus,
        .login__input:hover {
            outline: none; /* Không hiển thị viền khi trường nhập được chọn */
            border-bottom-color: #6A679E; /* Thay đổi màu viền dưới khi chọn */
        }

        .login__submit {
            background: #fff; /* Nền của nút đăng nhập */
            font-size: 14px; /* Kích thước chữ */
            margin-top: 30px; /* Khoảng cách phía trên */
            padding: 16px 20px; /* Padding cho nút */
            border-radius: 26px; /* Bo góc cho nút */
            border: 1px solid #D4D3E8; /* Đường viền cho nút */
            text-transform: uppercase; /* Chuyển đổi chữ thành chữ hoa */
            font-weight: 700; /* Đậm chữ */
            display: flex; /* Sử dụng flexbox để căn giữa nội dung trong nút */
            align-items: center; /* Căn giữa theo chiều dọc */
            width: 100%; /* Chiều rộng 100% */
            color: #4C489D; /* Màu chữ nút */
            box-shadow: 0px 2px 2px #5C5696; /* Thêm bóng cho nút */
            cursor: pointer; /* Hiển thị con trỏ khi di chuột lên nút */
            transition: .2s; /* Thêm hiệu ứng chuyển tiếp */
        }

        .login__submit:active,
        .login__submit:focus,
        .login__submit:hover {
            border-color: #6A679E; /* Thay đổi màu viền khi nút được chọn */
            outline: none; /* Không hiển thị viền khi nút được chọn */
        }

        .button__icon {
            font-size: 24px; /* Kích thước chữ cho biểu tượng trong nút */
            margin-left: auto; /* Tự động căn lề trái cho biểu tượng */
            color: #7875B5; /* Màu sắc biểu tượng */
        }

        /* CSS cho phần đăng nhập mạng xã hội */
        .social-login {
            position: absolute; /* Đặt vị trí tuyệt đối cho phần đăng nhập mạng xã hội */
            height: 140px; /* Chiều cao phần đăng nhập mạng xã hội */
            width: 160px; /* Chiều rộng phần đăng nhập mạng xã hội */
            text-align: center; /* Căn giữa nội dung */
            bottom: 0px; /* Đặt vị trí từ dưới lên 0 */
            right: 0px; /* Đặt vị trí từ bên phải 0 */
            color: #fff; /* Màu chữ trắng */
        }

        .social-icons {
            display: flex; /* Sử dụng flexbox để căn giữa các biểu tượng */
            align-items: center; /* Căn giữa theo chiều dọc */
            justify-content: center; /* Căn giữa theo chiều ngang */
        }

        .social-login__icon {
            padding: 20px 10px; /* Padding cho các biểu tượng mạng xã hội */
            color: #fff; /* Màu sắc biểu tượng mạng xã hội */
            text-decoration: none; /* Không có gạch chân cho liên kết */
            text-shadow: 0px 0px 8px #7875B5; /* Thêm bóng cho chữ */
        }

        .social-login__icon:hover {
            transform: scale(1.5); /* Phóng to biểu tượng khi di chuột lên */
        }

        .error-message {
            color: red; /* Màu chữ cho thông báo lỗi */
            text-align: center; /* Căn giữa thông báo lỗi */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="screen">
        <div class="screen__content">
            <!-- Form đăng nhập -->
            <form action="login" method="post" class="login">
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i> <!-- Biểu tượng cho mã nhân viên -->
                    <input type="text" class="login__input" name="employeeID" placeholder="Mã Nhân Viên" required /> <!-- Trường nhập mã nhân viên -->
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-lock"></i> <!-- Biểu tượng cho mật khẩu -->
                    <input type="password" class="login__input" name="password" placeholder="Mật Khẩu" required /> <!-- Trường nhập mật khẩu -->
                </div>
                <button type="submit" class="button login__submit">
                    <span class="button__text">Đăng Nhập</span> <!-- Văn bản cho nút đăng nhập -->
                    <i class="button__icon fas fa-chevron-right"></i> <!-- Biểu tượng cho nút đăng nhập -->
                </button>
            </form>
            <!-- Hiển thị thông báo lỗi nếu có -->
            <c:if test="${not empty errorMessage}">
                <p class="error-message">${errorMessage}</p> <!-- Thông báo lỗi -->
            </c:if>
        </div>
        <div class="screen__background">
            <!-- Các hình dạng nền -->
            <span class="screen__background__shape screen__background__shape4"></span>
            <span class="screen__background__shape screen__background__shape3"></span>
            <span class="screen__background__shape screen__background__shape2"></span>
            <span class="screen__background__shape screen__background__shape1"></span>
        </div>
    </div>
</div>
</body>
</html>