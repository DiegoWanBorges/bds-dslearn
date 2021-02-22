package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Enrollment;
import com.example.dslearnbds.entities.pk.EnrollmentPK;



@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {

}