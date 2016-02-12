package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefKitchenRepository;
import com.spring.entity.ChefKitchen;

@Service
@Transactional
public class ChefKitchenService {

	

		
		@Autowired
		private ChefKitchenRepository chefKitchenRepository;

		public void save(ChefKitchen chefKitchen) {
			chefKitchenRepository.save(chefKitchen);
		}
	

}
