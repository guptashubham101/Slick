package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefDinnerRepository;

import com.spring.entity.ChefDinner;


@Service
@Transactional
public class ChefDinnerService {
	
				@Autowired
				private ChefDinnerRepository chefDinnerRepository;
				
				public void save(ChefDinner chefDinner) {
					chefDinnerRepository.save(chefDinner);
					
				}
	}

