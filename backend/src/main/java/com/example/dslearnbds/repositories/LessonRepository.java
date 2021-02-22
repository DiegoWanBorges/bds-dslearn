package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Lesson;



@Repository
public interface LessonRepository extends JpaRepository<Lesson, Long> {

}