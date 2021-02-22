package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.User;



@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}