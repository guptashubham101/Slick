package com.spring.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Role {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String roleName;
	
	@OneToMany
	List<UserPersonal> userPersonals;
	
	@OneToMany
	List<ChefPersonal> chefPersonals;

	public List<UserPersonal> getUserPersonals() {
		return userPersonals;
	}

	public void setUserPersonals(List<UserPersonal> userPersonals) {
		this.userPersonals = userPersonals;
	}

	public List<ChefPersonal> getChefPersonals() {
		return chefPersonals;
	}

	public void setChefPersonals(List<ChefPersonal> chefPersonals) {
		this.chefPersonals = chefPersonals;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	

}
