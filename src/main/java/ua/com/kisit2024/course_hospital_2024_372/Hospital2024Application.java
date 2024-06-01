package ua.com.kisit2024.course_hospital_2024_372;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import ua.com.kisit2024.course_hospital_2024_372.entiny.Roles;
import ua.com.kisit2024.course_hospital_2024_372.repository.RolesRepository;

@SpringBootApplication
public class Hospital2024Application {
    private final RolesRepository rolesRepository;

    public Hospital2024Application(RolesRepository rolesRepository) {
        this.rolesRepository = rolesRepository;
    }

    public static void main(String[] args) {
        SpringApplication.run(Hospital2024Application.class, args);
    }

    @Bean
    CommandLineRunner run(){

        return args -> {

            if(rolesRepository.findAll().isEmpty()){
                rolesRepository.save(new Roles(1L, "ROLE_Patient" ));
                rolesRepository.save(new Roles(2L, "ROLE_Doctor"));
                rolesRepository.save(new Roles(3L, "ROLE_Admin"));
            }
        };

    }

}
