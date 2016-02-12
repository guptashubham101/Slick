package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.RoleRepository;
import com.repository.UserPersonalRepository;
import com.spring.entity.Role;
import com.spring.entity.UserPersonal;

@Service
@Transactional
public class UserPersonalService {
	
	@Autowired
	UserPersonalRepository userpersonalRepository;
	
	@Autowired
	RoleRepository roleRepository;
	
	

	public void save(UserPersonal user) {
		user.setEnabled(true);
		Role role= roleRepository.findByRoleName("ROLE_USER");
		user.setRole(role);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setUpwd(encoder.encode(user.getUpwd()));
		userpersonalRepository.save(user);
	}

	public UserPersonal findOne(String userid) {
		return userpersonalRepository.findOne(userid);
	}

	public void confirmUser(UserPersonal userpersonal) {
		userpersonalRepository.save(userpersonal);
		
	}

}
