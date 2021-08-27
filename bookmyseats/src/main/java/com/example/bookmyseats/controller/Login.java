package com.example.bookmyseats.controller;

import com.example.bookmyseats.service.login.auth.Auth;
import com.example.bookmyseats.service.login.session.Creds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Login {
    @RequestMapping("/loginView")
    public String loginView(){
        return "login/login";
    }

    @RequestMapping("/login")
    public String auth(@RequestParam String username, String password, Model model){
        Creds.setCreds(username);
        boolean flag = Auth.auth(username,password);
        if(flag){

            model.addAttribute("username",username);
            return "dashboard/dashboard";
        }
        else{
            model.addAttribute("message","Username/Password Incorrect");
            return "login/login";
        }
    }
}
