package ua.com.kisit2024.course_hospital_2024_372.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Doctor;

import java.util.List;

public interface DoctorRepository extends JpaRepository <Doctor, Long> {

    List<Doctor> findAllByPhone(String doctor);
}
