package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.ChefAddress;
import com.repository.ChefAddressRepository;

@Service
@Transactional
public class ChefAddressService {
	
	@Autowired
	private ChefAddressRepository chefaddressRepository;

	

	


	public void save(ChefAddress chefadd) {
		// TODO Auto-generated method stub
				chefaddressRepository.save(chefadd);
		
	}




}
