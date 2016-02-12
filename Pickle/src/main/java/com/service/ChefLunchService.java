package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.repository.ChefLunchRepository;

import com.spring.entity.ChefLunch;


@Service
@Transactional
public class ChefLunchService {


		
		@Autowired
		private ChefLunchRepository chefLunchRepository;
		
		public void save(ChefLunch chefLunch) {
			chefLunchRepository.save(chefLunch);
			
		
	}

}
