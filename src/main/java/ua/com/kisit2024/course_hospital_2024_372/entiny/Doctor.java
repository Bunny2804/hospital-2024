package ua.com.kisit2024.course_hospital_2024_372.entiny;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor


@Entity
@Table(name = "doctor")
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    private Long age;
    private String qualification;
    private String description;
    private String image;

    @OneToMany(mappedBy = "doctor")
    private List<DiagnosisHasAppointment> diagnosisHasAppointmentsList;
}
