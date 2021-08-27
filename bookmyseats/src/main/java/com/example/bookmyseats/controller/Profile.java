package com.example.bookmyseats.controller;

import com.example.bookmyseats.service.login.session.Creds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Profile {
    @RequestMapping("/profile")
    public String profileView(Model model){
        model.addAttribute("username",Creds.getCreds());
        return "profile/profile";
    }
}
