package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.ChefDinner;
import com.entity.ChefPersonal;
import com.repository.ChefDinnerRepository;
import com.repository.ChefPersonalRepository;
import com.entity.ChefBreakfast;


@Service
@Transactional
public class ChefDinnerService {
	
				@Autowired
				private ChefDinnerRepository chefDinnerRepository;
				
				@Autowired
				private ChefPersonalRepository chefpersonalRepository;
				
				public void save(ChefDinner chefDinner) {
					chefDinnerRepository.save(chefDinner);
					
				}

				public void save(ChefDinner chefDinner, String name) {
					
					ChefPersonal chefPersonal = chefpersonalRepository.findBycheffname(name);
					
					chefDinner.setChefpersonal(chefPersonal);
					chefDinnerRepository.save(chefDinner);
					
				}

				public ChefDinner findOne(int id) {
					return chefDinnerRepository.findOne(id);
					
				}

			
					@PreAuthorize("#chefDinner.chefpersonal.name==authentication.name or hasRole('ROLE_CHEF')")
					public void delete(@P("chefDinner") ChefDinner chefDinner) {
						// TODO Auto-generated method stub
						chefDinnerRepository.delete(chefDinner);
					
					
				}
	}

