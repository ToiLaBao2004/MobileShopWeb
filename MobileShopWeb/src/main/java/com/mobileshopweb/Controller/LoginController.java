package com.mobileshopweb.Controller; // Định nghĩa gói cho lớp LoginController

import com.mobileshopweb.DAO.EmployeeDAO; // Nhập khẩu lớp EmployeeDAO để thực hiện thao tác với cơ sở dữ liệu
import com.mobileshopweb.Model.Employee; // Nhập khẩu lớp Employee để sử dụng trong quá trình xử lý

import javax.servlet.ServletException; // Nhập khẩu lớp ServletException để xử lý các ngoại lệ liên quan đến Servlet
import javax.servlet.annotation.WebServlet; // Nhập khẩu annotation WebServlet để định nghĩa servlet
import javax.servlet.http.HttpServlet; // Nhập khẩu lớp HttpServlet để tạo servlet
import javax.servlet.http.HttpServletRequest; // Nhập khẩu lớp HttpServletRequest để lấy thông tin yêu cầu từ client
import javax.servlet.http.HttpServletResponse; // Nhập khẩu lớp HttpServletResponse để trả về phản hồi cho client
import java.io.IOException; // Nhập khẩu lớp IOException để xử lý các lỗi vào/ra

@WebServlet("/login") // Định nghĩa servlet với URL pattern là /login
public class LoginController extends HttpServlet {

    // Phương thức xử lý yêu cầu POST
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy mã nhân viên và mật khẩu từ yêu cầu HTTP
        String employeeID = request.getParameter("employeeID"); // Lấy mã nhân viên từ tham số yêu cầu
        String password = request.getParameter("password"); // Lấy mật khẩu từ tham số yêu cầu

        // Tạo một đối tượng EmployeeDAO để thực hiện thao tác với cơ sở dữ liệu
        EmployeeDAO employeeDAO = new EmployeeDAO();
        // Gọi phương thức login để kiểm tra thông tin đăng nhập
        Employee employee = employeeDAO.login(employeeID, password);

        // Kiểm tra xem thông tin đăng nhập có hợp lệ hay không
        if (employee != null) {
            // Đăng nhập thành công
            // Lưu thông tin nhân viên vào session để sử dụng trong các trang khác
            request.getSession().setAttribute("employee", employee);
            // Chuyển hướng đến trang chủ
            response.sendRedirect("home.jsp");
        } else {
            // Đăng nhập thất bại
            // Thiết lập thông báo lỗi để thông báo cho người dùng
            request.setAttribute("errorMessage", "Mã nhân viên hoặc mật khẩu không đúng!");
            // Chuyển tiếp yêu cầu đến trang đăng nhập kèm theo thông báo lỗi
            request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        }
    }
}