package com.example.dslearnbds.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Notification;
import com.example.dslearnbds.entities.User;



@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

	@Query("SELECT obj FROM Notification obj WHERE "
			+ "(obj.user=:user) AND	"
			+ "(:unreadonly = false OR obj.read=false) "
			+ "ORDER BY obj.moment DESC")
	Page<Notification> find(User user,boolean unreadonly, Pageable pageable);
}