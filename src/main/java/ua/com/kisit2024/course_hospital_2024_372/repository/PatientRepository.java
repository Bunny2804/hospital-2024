package ua.com.kisit2024.course_hospital_2024_372.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Patient;

public interface PatientRepository extends JpaRepository<Patient, Long> {
}
