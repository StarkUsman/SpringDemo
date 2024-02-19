package com.example.demo.dao;

import com.example.demo.UserRegistration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserRepo extends JpaRepository<UserRegistration, Long> {
    UserRegistration findByUID(Long uid);
    UserRegistration findByEmail(String email);
    List<UserRegistration> findBynamesurname(String name);

    @Query("from UserRegistration where lower(namesurname) like lower(concat('%', :userName, '%')) order by UID desc")
    List<UserRegistration> selectRecordByName(@Param("userName") String name);

    void deleteBynamesurname(String name);
}
