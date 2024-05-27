package ua.com.kisit2024.course_hospital_2024_372.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ua.com.kisit2024.course_hospital_2024_372.model.Login;


@Controller
public class LogController {
    @GetMapping("/login")
    public String getLoginForm(){
        return "login";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute() Login login){
        System.out.println(login.getNumber());
        return "login";
    }
}
