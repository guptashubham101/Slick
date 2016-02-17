package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.ChefPersonal;
import com.entity.ChefSnacks;
import com.repository.ChefPersonalRepository;
import com.repository.ChefSnacksRepository;
import com.entity.ChefBreakfast;

@Service
@Transactional
public class ChefSnacksService {
	
	
		
		@Autowired
		private ChefSnacksRepository chefSnacksRepository;
		
		@Autowired
		private ChefPersonalRepository chefpersonalRepository;
		
		public void save(ChefSnacks chefSnacks) {
			chefSnacksRepository.save(chefSnacks);
			
		}

		public void save(ChefSnacks chefSnacks, String name) {
			ChefPersonal chefPersonal = chefpersonalRepository.findBycheffname(name);
			
			chefSnacks.setChefpersonal(chefPersonal);
			chefSnacksRepository.save(chefSnacks);
			
		}

		public ChefSnacks findOne(int id) {
			return chefSnacksRepository.findOne(id);
			
		}

		
			@PreAuthorize("#chefSnacks.chefpersonal.name==authentication.name or hasRole('ROLE_CHEF')")
			public void delete(@P("chefSnacks") ChefSnacks chefSnacks) {
				// TODO Auto-generated method stub
				chefSnacksRepository.delete(chefSnacks);
			
			
		}

	
}
