package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;



import com.spring.entity.ChefPersonal;

public interface ChefPersonalRepository  extends JpaRepository<ChefPersonal,Integer> {

	

	

	ChefPersonal findOne(String id);



	

}
