package ua.com.kisit2024.course_hospital_2024_372.security;


import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import ua.com.kisit2024.course_hospital_2024_372.service.UserService;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class WebSecurityConfig {

    private final UserService userService;

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authenticationProvider(){
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setPasswordEncoder(passwordEncoder());
        authProvider.setUserDetailsService(userService);
        return authProvider;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }

    @Bean
    public SecurityFilterChain apiFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf((csrf)->csrf.disable())
                .authorizeHttpRequests((authorize)->
                        authorize
                                .requestMatchers("/","/registration", "/registration/**",
                                         "/static/**"
                                )
                                .permitAll()
                                .requestMatchers("/user","/order","/buy")
                                .hasRole("Patient")
                                .requestMatchers("/patientInfo",
                                        "/saveNewCategory","/category-admin","/deleteCategory","/deleteAllCategory"
                                        ,"/product-manager", "/saveNewProduct", "/updateProduct", "/deleteProduct", "/saveFromExcel",
                                        "/upload","/workPlace","/personal-info"
                                )
                                .hasRole("Doctor")
                                .requestMatchers("/admin", "/admin-users","/update-users","/update-roles-users")
                                .hasRole("Admin")
                                .anyRequest()
                                .authenticated()
                )
                .formLogin((form)-> form
                        .loginPage("/login")
                        .defaultSuccessUrl("/personal-info")
                        .permitAll()

                )
                .logout((logout)->logout.permitAll().logoutSuccessUrl("/"))
                .authenticationProvider(authenticationProvider());

        return http.build();
    }

}