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
@Table(name = "patient")

public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private Long age;

    @OneToMany(mappedBy = "patient")
    private List<DiagnosisHasAppointment> diagnosisHasAppointmentList;
//
//    @ManyToOne
//    @JoinColumn(name = "appointment_id")
//    private Appointments appointments;
    @OneToMany(mappedBy = "patients")
    public List<Diagnosis> diagnosisList;

    @ManyToOne
    @JoinColumn(name = "doctor_id")
    private Doctor doctor;
}
