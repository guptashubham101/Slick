package com.spring.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class ChefAddress {
	
	@Id
	@GeneratedValue
	private Integer addressid;
	
	private String chefadd1;
	private String chefadd2;
	private String chefzipcode;
	private String chefcity;
	private String chefzone;
	private String cheflandmark;
	
	

	

	public Integer getAddressid() {
		return addressid;
	}

	public void setAddressid(Integer addressid) {
		this.addressid = addressid;
	}

	public String getChefadd1() {
		return chefadd1;
	}

	public void setChefadd1(String chefadd1) {
		this.chefadd1 = chefadd1;
	}

	public String getChefadd2() {
		return chefadd2;
	}

	public void setChefadd2(String chefadd2) {
		this.chefadd2 = chefadd2;
	}

	public String getChefzipcode() {
		return chefzipcode;
	}

	public void setChefzipcode(String chefzipcode) {
		this.chefzipcode = chefzipcode;
	}

	public String getChefcity() {
		return chefcity;
	}

	public void setChefcity(String chefcity) {
		this.chefcity = chefcity;
	}

	public String getChefzone() {
		return chefzone;
	}

	public void setChefzone(String chefzone) {
		this.chefzone = chefzone;
	}

	public String getCheflandmark() {
		return cheflandmark;
	}

	public void setCheflandmark(String cheflandmark) {
		this.cheflandmark = cheflandmark;
	}

	

	
}
