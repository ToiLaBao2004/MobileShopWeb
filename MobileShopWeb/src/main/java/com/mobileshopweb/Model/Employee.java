package com.mobileshopweb.Model; // Định nghĩa gói cho lớp Employee

import java.io.Serial; // Nhập khẩu annotation Serial để chỉ định phiên bản serial
import java.io.Serializable; // Nhập khẩu interface Serializable để cho phép lớp này được tuần tự hóa
import java.util.Date; // Nhập khẩu lớp Date để sử dụng cho ngày sinh

// Lớp Employee đại diện cho thông tin của một nhân viên
public class Employee implements Serializable {
    // Khai báo biến tĩnh cho serialVersionUID, dùng để kiểm tra tính tương thích
    @Serial
    private static final long serialVersionUID = 1L; // Mã phiên bản duy nhất cho serial hóa

    // Các thuộc tính của lớp Employee
    private String employeeID; // Mã định danh của nhân viên
    private String nameEmployee; // Tên của nhân viên
    private Date birthday; // Ngày sinh của nhân viên
    private String gender; // Giới tính của nhân viên
    private String addressEmployee; // Địa chỉ của nhân viên
    private String phoneNumber; // Số điện thoại của nhân viên
    private String roleEmployee; // Vai trò của nhân viên trong công ty
    private String active; // Trạng thái hoạt động của nhân viên (có thể là "active" hoặc "inactive")
    private String passwordAccount; // Mật khẩu tài khoản của nhân viên

    // Constructor (hàm khởi tạo) cho lớp Employee
    public Employee(String employeeID, String nameEmployee, Date birthday, String gender,
                    String addressEmployee, String phoneNumber, String roleEmployee,
                    String active, String passwordAccount) {
        // Gán giá trị cho các thuộc tính của lớp từ tham số truyền vào
        this.employeeID = employeeID;
        this.nameEmployee = nameEmployee;
        this.birthday = birthday;
        this.gender = gender;
        this.addressEmployee = addressEmployee;
        this.phoneNumber = phoneNumber;
        this.roleEmployee = roleEmployee;
        this.active = active;
        this.passwordAccount = passwordAccount;
    }

    // Các phương thức getter và setter để truy cập và thay đổi các thuộc tính của lớp

    public String getEmployeeID() {
        return employeeID; // Trả về mã định danh của nhân viên
    }

    public void setEmployeeID(String employeeID) {
        this.employeeID = employeeID; // Gán giá trị mới cho mã định danh của nhân viên
    }

    public String getNameEmployee() {
        return nameEmployee; // Trả về tên của nhân viên
    }

    public void setNameEmployee(String nameEmployee) {
        this.nameEmployee = nameEmployee; // Gán giá trị mới cho tên của nhân viên
    }

    public Date getBirthday() {
        return birthday; // Trả về ngày sinh của nhân viên
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday; // Gán giá trị mới cho ngày sinh của nhân viên
    }

    public String getGender() {
        return gender; // Trả về giới tính của nhân viên
    }

    public void setGender(String gender) {
        this.gender = gender; // Gán giá trị mới cho giới tính của nhân viên
    }

    public String getAddressEmployee() {
        return addressEmployee; // Trả về địa chỉ của nhân viên
    }

    public void setAddressEmployee(String addressEmployee) {
        this.addressEmployee = addressEmployee; // Gán giá trị mới cho địa chỉ của nhân viên
    }

    public String getPhoneNumber() {
        return phoneNumber; // Trả về số điện thoại của nhân viên
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber; // Gán giá trị mới cho số điện thoại của nhân viên
    }

    public String getRoleEmployee() {
        return roleEmployee; // Trả về vai trò của nhân viên
    }

    public void setRoleEmployee(String roleEmployee) {
        this.roleEmployee = roleEmployee; // Gán giá trị mới cho vai trò của nhân viên
    }

    public String getActive() {
        return active; // Trả về trạng thái hoạt động của nhân viên
    }

    public void setActive(String active) {
        this.active = active; // Gán giá trị mới cho trạng thái hoạt động của nhân viên
    }

    public String getPasswordAccount() {
        return passwordAccount; // Trả về mật khẩu tài khoản của nhân viên
    }

    public void setPasswordAccount(String passwordAccount) {
        this.passwordAccount = passwordAccount; // Gán giá trị mới cho mật khẩu tài khoản của nhân viên
    }
}