package com.example.bookmyseats.controller;

import com.example.bookmyseats.service.signup.Sign_Up;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignUp {
    /*------------------------------------------------------------------------------------------------------*/
    @RequestMapping("/mSignUpView")
    public String mSignUpView(){
        return "/signup/mobile/MsignUp";
    }

    @RequestMapping("/mSignUp")
    public String signUp(@RequestParam String username, String password,Model model){
        boolean flag = Sign_Up.signUp(username,password);
        if(flag==true) {
            model.addAttribute("message","Sign Up Successful");
            return "/dashboard/dashboard";
        }else{
            model.addAttribute("errorMessage","User Already Exists");
            return "/home/home";
        }
    }
    /*------------------------------------------------------------------------------------------------------*/
    @RequestMapping("/eSignUpView")
    public String eSignUpView(){
        return "/signup/email/EsignUp";
    }

    @RequestMapping("/eSignUp")
    public String eSignUp(@RequestParam String username, String password, Model model){
        boolean flag = Sign_Up.signUp(username,password);
        if(flag==true) {
            model.addAttribute("message","Sign Up Successful");
            return "/dashboard/dashboard";
        }else{
            model.addAttribute("errorMessage","User Already Exists");
            return "/home/home";
        }
    }
    /*------------------------------------------------------------------------------------------------------*/
}
