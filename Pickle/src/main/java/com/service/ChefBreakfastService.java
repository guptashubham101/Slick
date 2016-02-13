package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.ChefBreakfastRepository;
import com.repository.ChefPersonalRepository;
import com.spring.entity.ChefBreakfast;
import com.spring.entity.ChefPersonal;

@Service
@Transactional
public class ChefBreakfastService {
	
	@Autowired
	private ChefBreakfastRepository chefBreakfastRepository;
	
	@Autowired
	ChefPersonalRepository chefpersonalRepository;
	
	

	public void save(ChefBreakfast chefBreakfast, String name) {
		ChefPersonal chefPersonal = chefpersonalRepository.findByName(name);
		chefBreakfast.setChefpersonal(chefPersonal);
		chefBreakfastRepository.save(chefBreakfast);
		
	}


	@PreAuthorize("#chefBreakfast.chefpersonal.name==authentication.name or hasRole('ROLE_CHEF')")
	public void delete(@P("chefBreakfast") ChefBreakfast chefBreakfast) {
		// TODO Auto-generated method stub
		chefBreakfastRepository.delete(chefBreakfast);
	}



	public ChefBreakfast findOne(int id) {
		// TODO Auto-generated method stub
		return chefBreakfastRepository.findOne(id);
	}

}
