package com.service;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.repository.RoleRepository;
import com.repository.UserAddressRepository;
import com.repository.UserPersonalRepository;
import com.spring.entity.Role;
import com.spring.entity.UserAddress;
import com.spring.entity.UserPersonal;

@Transactional
@Service
public class InitService {
	
	@Autowired
	private UserPersonalRepository userPersonalRepository;

	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserAddressRepository userAddressRepository;
	
	@PostConstruct
	public void init()
	{
		Role role1=new Role();
		role1.setRoleName("ROLE_ADMIN");
		roleRepository.save(role1);
		Role role2=new Role();
		role2.setRoleName("ROLE_USER");
		roleRepository.save(role2);
		Role role3=new Role();
		role3.setRoleName("ROLE_CHEF");
		roleRepository.save(role3);
		
		UserPersonal user = new UserPersonal();
		user.setUserid(1001);
		user.setUemail("admin@admin.com");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setUpwd(encoder.encode("admin"));
		user.setUfname("administrator");
		user.setEnabled(true);
        user.setRole(role1);
		userPersonalRepository.save(user);
		
		UserAddress address = new UserAddress();
		address.setUadd1("street1");
		address.setUcity("city");
		address.setUserPersonal(user);
		userAddressRepository.save(address);
	}

}
