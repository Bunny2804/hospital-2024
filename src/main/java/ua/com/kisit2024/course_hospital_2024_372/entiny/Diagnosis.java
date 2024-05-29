package ua.com.kisit2024.course_hospital_2024_372.entiny;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor


@Entity
@Table(name = "diagnosis")
public class Diagnosis {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

//    @OneToMany(mappedBy = "diagnosis") // diagnosis -> Medicine
//    private List<Medicine> madicineList;

    @OneToMany(mappedBy = "diagnosis") // diagnosis -> Operations
    private List<Operations> operationseList;

    @OneToMany(mappedBy = "diagnosis") // diagnosis -> Procedures
    private List<Procedures> proceduresList;

    @OneToMany(mappedBy = "diagnosis") // diagnosis -> DiagnosisHasAppointment
    private List<DiagnosisHasAppointment> diagnosisHasAppointmentList;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patients;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Medicine> madicines;

}
