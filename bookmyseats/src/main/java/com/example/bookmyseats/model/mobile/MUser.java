package com.example.bookmyseats.model.mobile;

import com.example.bookmyseats.model.User;

public class MUser implements User {
    String mobile;
    String password;

    public MUser(String mobile, String password) {
        this.mobile = mobile;
        this.password = password;
    }

    public MUser() {
        mobile = username;
        password = User.password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
