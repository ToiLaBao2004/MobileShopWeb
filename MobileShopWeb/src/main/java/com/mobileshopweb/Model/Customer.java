package com.mobileshopweb.Model;

import java.util.Date;

public class Customer {
    private int customerID;
    private String phoneNumber;
    private String customerName;
    private String addressCustomer;
    private Date birthday;
    private String gender;

    public Customer(int customerID, String phoneNumber, String customerName,
                    String addressCustomer, Date birthday, String gender) {
        this.customerID = customerID;
        this.phoneNumber = phoneNumber;
        this.customerName = customerName;
        this.addressCustomer = addressCustomer;
        this.birthday = birthday;
        this.gender = gender;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddressCustomer() {
        return addressCustomer;
    }

    public void setAddressCustomer(String addressCustomer) {
        this.addressCustomer = addressCustomer;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}