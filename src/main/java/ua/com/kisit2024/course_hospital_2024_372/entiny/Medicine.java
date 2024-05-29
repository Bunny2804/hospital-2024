package ua.com.kisit2024.course_hospital_2024_372.entiny;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor


@Entity
@Table(name = "medicine")
public class Medicine {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;


//    @ManyToOne
//    @JoinColumn(name = "diagnos_id")
//    private Diagnosis diagnosis;

    @ManyToMany(mappedBy = "madicines")
    private Set<Diagnosis> diagnosisSet;


}
