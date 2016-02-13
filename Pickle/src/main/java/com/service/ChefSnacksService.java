package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefPersonalRepository;
import com.repository.ChefSnacksRepository;
import com.spring.entity.ChefPersonal;
import com.spring.entity.ChefSnacks;

@Service
@Transactional
public class ChefSnacksService {
	
	
		
		@Autowired
		private ChefSnacksRepository chefSnacksRepository;
		
		@Autowired
		ChefPersonalRepository chefpersonalRepository;
		
		public void save(ChefSnacks chefSnacks) {
			chefSnacksRepository.save(chefSnacks);
			
		}

		public void save(ChefSnacks chefSnacks, String name) {
			ChefPersonal chefPersonal = chefpersonalRepository.findByName(name);
			
			chefSnacks.setChefpersonal(chefPersonal);
			chefSnacksRepository.save(chefSnacks);
			
		}

	
}
