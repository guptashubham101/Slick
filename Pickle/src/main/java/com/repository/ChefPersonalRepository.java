package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.ChefPersonal;

public interface ChefPersonalRepository  extends JpaRepository<ChefPersonal,String> {

	
	ChefPersonal findBycheffname(String name);

	
	



	

}
