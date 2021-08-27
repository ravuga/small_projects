package com.example.demo.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {
    String errorLoginMessage = "Login Failed. Please Try Again";
    String errorDBMessage = "DB Connection Failed.";
    @RequestMapping("/error/login")
    public String errorLogin(Model model){
        model.addAttribute("errorLoginMessage",errorLoginMessage);
        return "error/errorLogin";
    }
    public String errorDBConnection(Model model){
        model.addAttribute("errorDBMessage",errorDBMessage);
        return "error/errorDB";
    }
}
