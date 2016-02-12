package com.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.repository.ChefAddressRepository;


import com.spring.entity.ChefAddress;


public class ChefAddressService {
	
	@Autowired
	ChefAddressRepository chefaddressRepository;

	

	


	public void save(ChefAddress chefadd) {
		// TODO Auto-generated method stub
				chefaddressRepository.save(chefadd);
		
	}




}
