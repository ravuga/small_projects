package com.example.bookmyseats.controller;

import com.example.bookmyseats.model.cartInfo.CartInfo;
import com.example.bookmyseats.service.cart.addItems.ItemsAddition;
import com.example.bookmyseats.service.cart.viewItems.ItemsView;
import com.example.bookmyseats.service.login.session.Creds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;

@Controller
public class Cart {
    @RequestMapping("/cart")
    public String cartView(Model model){
        List<CartInfo> userList = ItemsView.viewItems();
        model.addAttribute(userList);
        return "cart/cart";
    }
    @RequestMapping("/add")
    public String addItemsCart(@RequestParam String event, Integer seats, Model model){
        String username = Creds.getCreds();
        boolean flag = ItemsAddition.addToCart(username,event,seats);
        if(flag== true){
            model.addAttribute("query-message","Added to Cart");
            return "cart/cart";
        }else{
            model.addAttribute("query-message","Seat Not Available");
            return "events/event";
        }
    }

}
