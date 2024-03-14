package com.example.treasurebox.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {

    @GetMapping("/register")
    public String register(){
        return "register";
    }

    @PostMapping("/join-success")
    public String joinSuccess(){
        return "join_success";
    }

//    @GetMapping("/check-id")
//    public boolean checkId(@RequestParam String userId){
//        int id = ;
//        if(id == 1){
//            return true;
//        } else{
//            return false;
//        }
//    }
}
