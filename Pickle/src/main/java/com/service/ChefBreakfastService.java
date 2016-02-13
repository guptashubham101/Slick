package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefBreakfastRepository;
import com.repository.ChefPersonalRepository;
import com.spring.entity.ChefBreakfast;
import com.spring.entity.ChefPersonal;

@Service
@Transactional
public class ChefBreakfastService {
	
	@Autowired
	private ChefBreakfastRepository chefBreakfastRepository;
	
	@Autowired
	ChefPersonalRepository chefpersonalRepository;
	
	

	public void save(ChefBreakfast chefBreakfast, String name) {
		ChefPersonal chefPersonal = chefpersonalRepository.findByName(name);
		
		chefBreakfast.setChefpersonal(chefPersonal);
		chefBreakfastRepository.save(chefBreakfast);
		
	}

}
