package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entity.UserAddress;

public interface UserAddressRepository extends JpaRepository<UserAddress,Integer>{

}
