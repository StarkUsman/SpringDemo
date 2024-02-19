package com.example.demo;

import com.example.demo.dao.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class dataAPI {
    @Autowired
    UserRepo repo;
    @RequestMapping("/getUserAllDetails")
    public List<UserRegistration> getAllData(){
        return repo.findAll();
    }

    @RequestMapping("/getUserByID/{uid}")
    public Optional<UserRegistration> getRecordByID(@PathVariable("uid") Long Id){
        return repo.findById(Id);
    }

    @GetMapping("/getUserByName/{name}")
    public List<UserRegistration> getRecordByName(@PathVariable("name") String name){ return repo.findBynamesurname(name); }

    @GetMapping("/getAllUsers/")
    public List<UserRegistration> getAllRecords(){ return repo.findAll(); }
}
