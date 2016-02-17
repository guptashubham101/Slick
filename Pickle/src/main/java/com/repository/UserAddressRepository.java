package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.UserAddress;

public interface UserAddressRepository extends JpaRepository<UserAddress,Integer>{

}
