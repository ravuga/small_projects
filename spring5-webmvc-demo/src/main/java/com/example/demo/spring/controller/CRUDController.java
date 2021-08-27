package com.example.demo.spring.controller;

import com.example.demo.spring.factory.MongoFactory;
import com.example.demo.spring.service.createUser.CreateUserIfImpl;
import com.example.demo.spring.service.deleteUser.DeleteUserIfImpl;
import com.example.demo.spring.service.updateUser.UpdateUserIfImpl;
import com.example.demo.spring.service.viewUser.ViewUserIfImpl;
import com.mongodb.MongoClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;


@Controller
@RequestMapping("/crud")
public class CRUDController {
    MongoFactory mongoFactory = new MongoFactory();
    HashMap<String,String> userList = new HashMap<>();

    @RequestMapping("/checkDB")
    public String checkDB() {
        MongoClient connection = MongoFactory.createConnection();
        if (connection == null) {
            return "error/errorDBConnection";
        } else {
            return "/home/home";
        }
    }

    @RequestMapping("/createUserView")
    public String createView(){
        return "crud/create/createUser";
    }
    @RequestMapping("/createUser")
    public String create(@RequestParam String userName, String password, Model model) {
        CreateUserIfImpl userObject = new CreateUserIfImpl();
        boolean flag = userObject.createUser(userName,password);
        if(flag==true)
        {
            model.addAttribute("message","User Created");
        }else
        {
            model.addAttribute("message","User Not Created");
        }
        return "home/home";
    }
/*
    @RequestMapping("/viewDefaultUser")
    public String view(Model model)
    {
        ViewUserIfImpl userObject = new ViewUserIfImpl();
        /* Default User List*/
/*        userList.put(userObject.viewDefaultUser().getUserName(),userObject.viewDefaultUser().getPassword());
        model.addAttribute("userList",userList);
        return "crud/view/viewUser";
    }
*/
    @RequestMapping("/viewAllUser")
    public String viewAll(Model model) {
        ViewUserIfImpl userObject = new ViewUserIfImpl();
        userList= userObject.viewAllUser();
        model.addAttribute("userList",userList);
        return "crud/view/viewUser";
    }

    @RequestMapping("/updateUserView")
    public String updateView() {
        return "crud/update/updateUser";
    }

    @RequestMapping("/updateView")
    public String update(@RequestParam String old_userName, String old_password,String new_userName, String new_password,Model model) {
        UpdateUserIfImpl userObject = new UpdateUserIfImpl();
        boolean flag = userObject.updateUser(old_userName,old_password,new_userName,new_password);
        if(flag==true){
            model.addAttribute("message","User Updated");
        }else
        {
            model.addAttribute("message","User Not Updated");
        }
        return "home/home";
    }

    @RequestMapping("/deleteUserView")
    public String deleteView() {
        return "crud/delete/deleteUser";
    }

    @RequestMapping("/deleteUser")
    public String delete(@RequestParam String userName, String password,Model model) {
        DeleteUserIfImpl userObject = new DeleteUserIfImpl();
        boolean flag = userObject.deleteOneUser(userName,password);
        if(flag==true){
            model.addAttribute("message","User Deleted");
        }else
        {
            model.addAttribute("message","User Not Deleted");
        }
        return "home/home";
    }
}
