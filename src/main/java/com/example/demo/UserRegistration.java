package com.example.demo;

//import jakarta.persistence.*;

import jakarta.persistence.*;

@Entity
@Table(name = "admins")
public class UserRegistration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long UID;
    private String namesurname;
    private String email;
    private String password;
    private String terms;

    // Getter and setter methods for 'namesurname'
    public String getNamesurname() {
        return namesurname;
    }

    public void setNamesurname(String namesurname) {
        this.namesurname = namesurname;
    }

    // Getter and setter methods for 'email'
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Getter and setter methods for 'password'
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Getter and setter methods for 'terms'
    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    @Override
    public String toString() {
        return "UserRegistration{" +
                "namesurname='" + namesurname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", terms=" + terms +
                '}';
    }
}
