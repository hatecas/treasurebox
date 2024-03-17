package com.example.treasurebox.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
//    @ResponseBody
//    public String checkId(@RequestParam String userId){
//        int id = 아이디 조회(있으면 1, 없으면 0);
//        if(id == 1){
//            return "true";
//        } else {
//            return "false";
//        }
//    }
}
