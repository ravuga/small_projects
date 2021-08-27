package com.example.bookmyseats.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogOut {
    @RequestMapping("/logout")
    public String logout(Model model){
        model.addAttribute("lmessage","Logout Successfully");
         return "home/home";
    }
}
