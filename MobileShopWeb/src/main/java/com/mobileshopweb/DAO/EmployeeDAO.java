package com.mobileshopweb.DAO; // Định nghĩa gói cho lớp EmployeeDAO

import com.mobileshopweb.Model.Employee; // Nhập khẩu lớp Employee để sử dụng trong DAO
import com.mobileshopweb.DBcontext.DBContext; // Nhập khẩu lớp DBContext để lấy kết nối cơ sở dữ liệu

import java.sql.Connection; // Nhập khẩu lớp Connection để quản lý kết nối đến cơ sở dữ liệu
import java.sql.PreparedStatement; // Nhập khẩu lớp PreparedStatement để thực hiện truy vấn SQL an toàn
import java.sql.ResultSet; // Nhập khẩu lớp ResultSet để xử lý kết quả truy vấn

// Lớp EmployeeDAO chịu trách nhiệm tương tác với cơ sở dữ liệu liên quan đến nhân viên
public class EmployeeDAO {

    // Phương thức login nhận vào mã nhân viên và mật khẩu để xác thực
    public Employee login(String employeeID, String password) {
        Employee employee = null; // Khởi tạo biến employee để lưu thông tin nhân viên nếu đăng nhập thành công
        // Truy vấn SQL để lấy thông tin nhân viên dựa trên mã nhân viên và mật khẩu
        String query = "SELECT * FROM Employees WHERE EmployeeID = ? AND PassWordAccount = ?";

        // Sử dụng try-with-resources để tự động đóng tài nguyên (kết nối, prepared statement)
        try (Connection conn = DBContext.getConnection(); // Lấy kết nối từ DBContext
             PreparedStatement pstmt = conn.prepareStatement(query)) { // Tạo đối tượng PreparedStatement để thực hiện truy vấn

            // Gán giá trị cho các tham số trong truy vấn
            pstmt.setString(1, employeeID); // Gán mã nhân viên vào tham số đầu tiên
            pstmt.setString(2, password); // Gán mật khẩu vào tham số thứ hai

            // Thực hiện truy vấn và lấy kết quả
            ResultSet rs = pstmt.executeQuery();
            // Kiểm tra xem có kết quả nào được trả về hay không
            if (rs.next()) {
                // Nếu có kết quả, tạo một đối tượng Employee từ thông tin trong ResultSet
                employee = new Employee(
                        rs.getString("EmployeeID"), // Lấy mã nhân viên
                        rs.getString("NameEmployee"), // Lấy tên nhân viên
                        rs.getDate("Birthday"), // Lấy ngày sinh
                        rs.getString("Gender"), // Lấy giới tính
                        rs.getString("AddressEmployee"), // Lấy địa chỉ
                        rs.getString("PhoneNumber"), // Lấy số điện thoại
                        rs.getString("RoleEmployee"), // Lấy vai trò
                        rs.getString("Active"), // Lấy trạng thái hoạt động
                        rs.getString("PassWordAccount") // Lấy mật khẩu tài khoản
                );
            }
        } catch (Exception e) { // Bắt mọi ngoại lệ xảy ra trong quá trình kết nối và thực hiện truy vấn
            e.printStackTrace(); // In thông tin lỗi ra console
        }
        // Trả về đối tượng Employee, có thể là null nếu không tìm thấy hoặc đăng nhập thất bại
        return employee;
    }
}