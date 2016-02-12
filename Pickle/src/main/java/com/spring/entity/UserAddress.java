package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class UserAddress {

	private String uadd1;
	private String uadd2;
	private String uzipcode;
	private String ucity;
	private String uzone;
	private String ulandmark;
	@Id
	@GeneratedValue
	private Integer addressid;
	
	@OneToOne
	UserPersonal userPersonal;

	
	public Integer getAddressid() {
		return addressid;
	}

	public void setAddressid(Integer addressid) {
		this.addressid = addressid;
	}

	
	public String getUadd1() {
		return uadd1;
	}

	public void setUadd1(String uadd1) {
		this.uadd1 = uadd1;
	}

	public String getUadd2() {
		return uadd2;
	}

	public void setUadd2(String uadd2) {
		this.uadd2 = uadd2;
	}

	public String getUzipcode() {
		return uzipcode;
	}

	public void setUzipcode(String uzipcode) {
		this.uzipcode = uzipcode;
	}

	public String getUcity() {
		return ucity;
	}

	public void setUcity(String ucity) {
		this.ucity = ucity;
	}

	public String getUzone() {
		return uzone;
	}

	public void setUzone(String uzone) {
		this.uzone = uzone;
	}

	public String getUlandmark() {
		return ulandmark;
	}

	public void setUlandmark(String ulandmark) {
		this.ulandmark = ulandmark;
	}

	public UserPersonal getUserPersonal() {
		return userPersonal;
	}

	public void setUserPersonal(UserPersonal userPersonal) {
		this.userPersonal = userPersonal;
	}

	
	
	
	
}
