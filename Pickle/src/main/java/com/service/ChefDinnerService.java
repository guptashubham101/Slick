package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefDinnerRepository;
import com.repository.ChefPersonalRepository;
import com.spring.entity.ChefDinner;
import com.spring.entity.ChefPersonal;


@Service
@Transactional
public class ChefDinnerService {
	
				@Autowired
				private ChefDinnerRepository chefDinnerRepository;
				
				@Autowired
				ChefPersonalRepository chefpersonalRepository;
				
				public void save(ChefDinner chefDinner) {
					chefDinnerRepository.save(chefDinner);
					
				}

				public void save(ChefDinner chefDinner, String name) {
					
					ChefPersonal chefPersonal = chefpersonalRepository.findByName(name);
					
					chefDinner.setChefpersonal(chefPersonal);
					chefDinnerRepository.save(chefDinner);
					
				}
	}

