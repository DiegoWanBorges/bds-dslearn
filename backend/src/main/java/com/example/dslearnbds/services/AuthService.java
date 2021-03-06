package com.example.dslearnbds.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dslearnbds.entities.User;
import com.example.dslearnbds.repositories.UserRepository;
import com.example.dslearnbds.services.exceptions.ForbiddenException;
import com.example.dslearnbds.services.exceptions.UnauthorizedException;

@Service
public class AuthService {
	@Autowired
	private UserRepository userRepository;
	
	@Transactional(readOnly=true)
	public User authenticated() {
		try {
			String userName = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(userName);
		} catch (Exception e) {
			throw new UnauthorizedException("Invalid user");
		}
	}
	
	public void ValidateSelfOrAdmin(Long userId) {
		User user = authenticated();
		if (!user.getId().equals(userId) && !user.hasRole("ROLE_ADMIN")) {
			throw new ForbiddenException("Access Denied");
		}
	}
}
