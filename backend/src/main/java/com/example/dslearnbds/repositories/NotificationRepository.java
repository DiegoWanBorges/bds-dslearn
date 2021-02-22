package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Notification;



@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

}