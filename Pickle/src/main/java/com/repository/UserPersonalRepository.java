package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.UserAddress;
import com.entity.UserPersonal;

public interface UserPersonalRepository extends JpaRepository<UserPersonal,String>{

	
}
