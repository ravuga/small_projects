package com.example.demo.spring.service.viewUser;


import com.example.demo.spring.model.UserIfImpl;

import java.util.HashMap;

public interface ViewUserIf {

    public UserIfImpl viewDefaultUser();

    public HashMap<String, String> viewAllUser();
}
