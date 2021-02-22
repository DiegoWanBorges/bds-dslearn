package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Role;



@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}