package com.example.demo.spring.model;

public class UserIfImpl implements UserIf{
    String userName;
    String password;

    public void defaultUserIfImpl(){
        userName = DEFAULT_USER;
        password = DEFAULT_PASSWORD;
    }

    public UserIfImpl() {
    }

    public UserIfImpl(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
