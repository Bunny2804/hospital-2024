package ua.com.kisit2024.course_hospital_2024_372.controller;

import jakarta.validation.Valid;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Doctor;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Roles;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Users;
import ua.com.kisit2024.course_hospital_2024_372.repository.DoctorRepository;
import ua.com.kisit2024.course_hospital_2024_372.repository.UsersRepository;

import java.util.Collections;


@Controller
public class LogController {

    private final UsersRepository usersRepository;

    private final DoctorRepository doctorRepository;
    public LogController(UsersRepository usersRepository, DoctorRepository doctorRepository) {
        this.usersRepository = usersRepository;
        this.doctorRepository = doctorRepository;
    }


//    @GetMapping("/login")
//    public String getLoginForm(){
//        return "login";
//    }
//    @PostMapping("/login")
//    public String login(@ModelAttribute() Login login){
//        System.out.println(login.getNumber());
//        return "login";
//    }

    @GetMapping("/login")
    public String getPageLogin() {
        return "login";
    }

    @GetMapping("/registration")
    public String getPageRegistration(Model model) {

        model.addAttribute("users", new Users());
        model.addAttribute("doctor", new Doctor());

        return "registration";

    }

    @PostMapping("/registration")
    public String saveNewUser(@Valid Users users,
                              BindingResult bindingResult1,
                              @Valid Doctor doctor,
                              BindingResult bindingResult2
    ){
        // Validation input user
        if(bindingResult1.hasErrors()){
            return "registration";
        }

        // Validation input client
        if(bindingResult2.hasErrors()){
            return "registration";
        }

        //  Перевірка на існування користувача в системі
//        if(userService.getLogicUser(users.getUsername())) {
//            return "registration";
//        }

        users.setRolesset(Collections.singleton(new Roles(2L, "ROLE_Doctor")));
        users.setCode(new BCryptPasswordEncoder().encode(users.getPassword()));

        Users user1 =  usersRepository.save(users);

        doctor.setUsers(user1);
        doctorRepository.save(doctor);

        // шифрування пароля

        return "redirect:/login";
    }

}
