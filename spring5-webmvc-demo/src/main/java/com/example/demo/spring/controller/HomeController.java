package com.example.demo.spring.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController 
{
    final static String login_error_message = "UserName/Password is Wrong";
	@RequestMapping("/home")
	public String home(@RequestParam String userName, String password, Model model) {

	    if(userName.equals("admin"))
        {
            if(password.equals("admin"))
            {
                return "home/home";
            }else
            {
                model.addAttribute("message",login_error_message);
                return "login/login";
            }
        }else
        {
            model.addAttribute("message",login_error_message);
            return "login/login";
        }
	}
	@RequestMapping("/logout")
	public String logout(Model model){
	    model.addAttribute("message","Logout Successfully.");
	    return "login/login";
    }
}
