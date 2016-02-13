package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.repository.ChefLunchRepository;
import com.repository.ChefPersonalRepository;
import com.spring.entity.ChefLunch;
import com.spring.entity.ChefPersonal;
import com.spring.entity.ChefSnacks;


@Service
@Transactional
public class ChefLunchService {


		
		@Autowired
		private ChefLunchRepository chefLunchRepository;
		
		@Autowired
		ChefPersonalRepository chefpersonalRepository;
		
		
		
		public void save(ChefLunch chefLunch) {
			chefLunchRepository.save(chefLunch);
			
		
	}

		public void save(ChefLunch chefLunch, String name) {
			// TODO Auto-generated method stub
			ChefPersonal chefPersonal = chefpersonalRepository.findByName(name);
			
			chefLunch.setChefpersonal(chefPersonal);
			chefLunchRepository.save(chefLunch);
		}

		

}
