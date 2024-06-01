package ua.com.kisit2024.course_hospital_2024_372.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonalInfoController {
    @GetMapping("/personal-info")
    public String getPersonalInfo(){
        return "personalInfo";
    }
}


