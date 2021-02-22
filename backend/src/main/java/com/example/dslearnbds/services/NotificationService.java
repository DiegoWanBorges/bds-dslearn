package com.example.dslearnbds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.dslearnbds.entities.Notification;
import com.example.dslearnbds.entities.User;
import com.example.dslearnbds.entities.dto.NotificationDTO;
import com.example.dslearnbds.repositories.NotificationRepository;

@Service
public class NotificationService {
	@Autowired
	private NotificationRepository repository;
	@Autowired
	private AuthService authService;
	
	public Page<NotificationDTO> notificationForCurrentUser(boolean unreadonly,Pageable pageable){
		User user=authService.authenticated();
		Page<Notification> page = repository.find(user, unreadonly, pageable);
		return page.map(x -> new NotificationDTO(x));
		
	}
	
}
