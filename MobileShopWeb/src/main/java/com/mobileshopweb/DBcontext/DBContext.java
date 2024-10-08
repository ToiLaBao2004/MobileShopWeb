package com.mobileshopweb.DBcontext;

import java.sql.Connection; // Nhập khẩu lớp Connection từ thư viện java.sql để sử dụng cho kết nối cơ sở dữ liệu
import java.sql.DriverManager; // Nhập khẩu lớp DriverManager để quản lý các kết nối đến cơ sở dữ liệu
import java.sql.SQLException; // Nhập khẩu lớp SQLException để xử lý các lỗi liên quan đến SQL
import java.util.logging.Level; // Nhập khẩu lớp Level từ thư viện java.util.logging để định nghĩa mức độ ghi log
import java.util.logging.Logger; // Nhập khẩu lớp Logger để ghi lại thông tin log

public class DBContext {
    // Khởi tạo Logger cho lớp DBContext, dùng để ghi lại thông tin lỗi hoặc sự kiện
    private static final Logger logger = Logger.getLogger(DBContext.class.getName());

    // Chuỗi URL kết nối đến cơ sở dữ liệu MySQL.
    // Gồm địa chỉ máy chủ (localhost), cổng kết nối (mặc định là 3306), và tên database (FinalProjectWeb)
    private final static String jdbcURL = "jdbc:mysql://localhost:3306/FinalProjectWeb";

    // Tên đăng nhập để truy cập cơ sở dữ liệu MySQL
    private final static String jdbcUsername = "root";

    // Mật khẩu tương ứng với tên đăng nhập, dùng để xác thực khi kết nối đến cơ sở dữ liệu
    private final static String jdbcPassword = "";

    // Phương thức này tạo và trả về một đối tượng Connection đến cơ sở dữ liệu
    public static Connection getConnection() {
        Connection connection = null; // Khởi tạo biến connection để lưu trữ đối tượng Connection
        try {
            // Nạp driver MySQL vào bộ nhớ. Driver này cho phép Java kết nối đến MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Sử dụng DriverManager để tạo kết nối đến cơ sở dữ liệu
            // Hàm getConnection() yêu cầu URL, tên đăng nhập và mật khẩu
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            // Nếu có lỗi xảy ra trong quá trình kết nối hoặc nạp driver, ghi lại lỗi bằng logger
            // Mức độ nghiêm trọng của log là SEVERE, cùng với thông điệp mô tả lỗi
            logger.log(Level.SEVERE, "Lỗi khi kết nối đến cơ sở dữ liệu", e);
        }
        // Trả về đối tượng Connection, nếu kết nối thành công
        return connection;

    }
}