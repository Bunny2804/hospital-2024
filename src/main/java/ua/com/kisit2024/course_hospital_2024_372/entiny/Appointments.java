package ua.com.kisit2024.course_hospital_2024_372.entiny;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor


@Entity
@Table(name = "appointments")
public class Appointments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    @Column(name = "date_created")
    private Date dateCreated;

    @OneToOne
    @MapKey
    @MapsId
    @JoinColumn(name = "id")
    private Diagnosis diagnosis;

}
