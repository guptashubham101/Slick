package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefBreakfastRepository;
import com.spring.entity.ChefBreakfast;

@Service
@Transactional
public class ChefBreakfastService {
	
	@Autowired
	private ChefBreakfastRepository chefBreakfastRepository;
	
	public void save(ChefBreakfast chefBreakfast) {
		chefBreakfastRepository.save(chefBreakfast);
		
	}

}
