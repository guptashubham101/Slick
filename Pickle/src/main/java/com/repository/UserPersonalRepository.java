package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entity.UserAddress;
import com.spring.entity.UserPersonal;

public interface UserPersonalRepository extends JpaRepository<UserPersonal,Integer>{

	void save(UserAddress user);



	UserPersonal findOne(String userid);

}
