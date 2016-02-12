package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.repository.ChefPersonalRepository;
import com.repository.RoleRepository;
import com.spring.entity.ChefPersonal;
import com.spring.entity.Role;

@Service
@Transactional
public class ChefPersonalService {

	
		
		@Autowired
		ChefPersonalRepository chefpersonalRepository;
		
		@Autowired
		RoleRepository roleRepository;
		
		

		public void save(ChefPersonal chef) {
			
			Role role= roleRepository.findByRoleName("ROLE_CHEF");
			chef.setCrole(role);
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			chef.setChefpwd(encoder.encode(chef.getChefpwd()));
			chefpersonalRepository.save(chef);
		}

public ChefPersonal findOne(String id) {
			return chefpersonalRepository.findOne(id);
		}

	

	public void confirmChef(ChefPersonal chefpersonal) {
		// TODO Auto-generated method stub
		chefpersonalRepository.save(chefpersonal);	
	}
	}


