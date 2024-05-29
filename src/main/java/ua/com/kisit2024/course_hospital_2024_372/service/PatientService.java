package ua.com.kisit2024.course_hospital_2024_372.service;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Patient;
import ua.com.kisit2024.course_hospital_2024_372.repository.PatientRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PatientService {

    private final PatientRepository patientRepository;

    public List<Patient> findAllPatient() {
        return patientRepository.findAll();
    }
}
