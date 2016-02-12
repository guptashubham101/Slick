package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ChefKitchen {

	@Id
	@GeneratedValue
	private Integer kitchenid;

	private String kitadd1;
	private String kitadd2;
	private String kitzipcode;
	private String kitcity;
	private String kitzone;
	private String kitlandmark;

	public Integer getKitchenid() {
		return kitchenid;
	}

	public void setKitchenid(Integer kitchenid) {
		this.kitchenid = kitchenid;
	}

	public String getKitadd1() {
		return kitadd1;
	}

	public void setKitadd1(String kitadd1) {
		this.kitadd1 = kitadd1;
	}

	public String getKitadd2() {
		return kitadd2;
	}

	public void setKitadd2(String kitadd2) {
		this.kitadd2 = kitadd2;
	}

	public String getKitzipcode() {
		return kitzipcode;
	}

	public void setKitzipcode(String kitzipcode) {
		this.kitzipcode = kitzipcode;
	}

	public String getKitcity() {
		return kitcity;
	}

	public void setKitcity(String kitcity) {
		this.kitcity = kitcity;
	}

	public String getKitzone() {
		return kitzone;
	}

	public void setKitzone(String kitzone) {
		this.kitzone = kitzone;
	}

	public String getKitlandmark() {
		return kitlandmark;
	}

	public void setKitlandmark(String kitlandmark) {
		this.kitlandmark = kitlandmark;
	}

}