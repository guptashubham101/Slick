package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.repository.ChefSnacksRepository;

import com.spring.entity.ChefSnacks;

@Service
@Transactional
public class ChefSnacksService {
	
	
		
		@Autowired
		private ChefSnacksRepository chefSnacksRepository;
		
		public void save(ChefSnacks chefSnacks) {
			chefSnacksRepository.save(chefSnacks);
			
		}

	
}
