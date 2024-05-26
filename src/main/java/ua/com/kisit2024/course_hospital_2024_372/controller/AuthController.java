package ua.com.kisit2024.course_hospital_2024_372.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthController {
    @GetMapping("/register")
    public String getRegisterForm(){
        return "index";
    }
    @PostMapping("/register")
    public String register(){
        return "test";
    }


}
