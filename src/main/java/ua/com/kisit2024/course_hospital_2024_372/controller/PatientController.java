package ua.com.kisit2024.course_hospital_2024_372.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Patient;
import ua.com.kisit2024.course_hospital_2024_372.service.PatientService;

@Controller
public class PatientController {
    private final PatientService patientService;

    public PatientController(PatientService patientService) {
        this.patientService = patientService;
    }

    @GetMapping("/workPlace")
    public String workPlace(Model model){

        model.addAttribute("patients",patientService.findAllPatient());

        return "workPlace";
    }

    @GetMapping("/patient/{id}")
    public String workPlace(Model model,
                            @PathVariable(name = "id")Patient patient){

        model.addAttribute("patients",patient);

        return "patientInfo";
    }
}
