package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.ChefLunch;
import com.entity.ChefPersonal;
import com.repository.ChefLunchRepository;
import com.repository.ChefPersonalRepository;



@Service
@Transactional
public class ChefLunchService {


		
		@Autowired
		private ChefLunchRepository chefLunchRepository;
		
		@Autowired
		private ChefPersonalRepository chefpersonalRepository;
		
		
		
		public void save(ChefLunch chefLunch) {
			chefLunchRepository.save(chefLunch);
			
		
	}

		public void save(ChefLunch chefLunch, String name) {
			// TODO Auto-generated method stub
			ChefPersonal chefPersonal = chefpersonalRepository.findBycheffname(name);
			
			chefLunch.setChefpersonal(chefPersonal);
			chefLunchRepository.save(chefLunch);
		}

		public ChefLunch findOne(int id) {
			// TODO Auto-generated method stub
			return chefLunchRepository.findOne(id);
		}
		@PreAuthorize("#chefLunch.chefpersonal.name==authentication.name or hasRole('ROLE_CHEF')")
		public void delete(@P("chefLunch") ChefLunch chefLunch) {
			
				chefLunchRepository.delete(chefLunch);
		
			
		}

		

}
