package com.example.bookmyseats.model.email;

import com.example.bookmyseats.model.User;

public class EUser implements User {

    String email;
    String password;

    public EUser(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public EUser() {
        email = username;
        password = User.password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
