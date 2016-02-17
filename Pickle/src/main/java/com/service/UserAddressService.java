package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.UserAddress;
import com.repository.UserAddressRepository;
import com.repository.UserPersonalRepository;

@Service
@Transactional
public class UserAddressService {

	

	
	@Autowired
	private UserAddressRepository addressRepository;
	
	public void save(UserAddress user) {
		addressRepository.save(user);
		
	}

}
