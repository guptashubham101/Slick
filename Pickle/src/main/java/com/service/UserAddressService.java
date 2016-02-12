package com.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.repository.UserPersonalRepository;
import com.spring.entity.UserAddress;

public class UserAddressService {

	
	@Autowired
	UserPersonalRepository userpersonalRepository;
	
	public void save(UserAddress user) {
		userpersonalRepository.save(user);
		
	}

}
