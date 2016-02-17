package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ChefLunch {

	@Id
	@GeneratedValue
	Integer id;
	
	String lunchdishname;
	String lunchingredients;
	String lunchtype;
	String lunchdescription;
	String lunchprice;
	String lunchdate;
	
	@ManyToOne
	private ChefPersonal chefpersonal;
	
	
	public ChefPersonal getChefpersonal() {
		return chefpersonal;
	}
	public void setChefpersonal(ChefPersonal chefpersonal) {
		this.chefpersonal = chefpersonal;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLunchdishname() {
		return lunchdishname;
	}
	public void setLunchdishname(String lunchdishname) {
		this.lunchdishname = lunchdishname;
	}
	public String getLunchingredients() {
		return lunchingredients;
	}
	public void setLunchingredients(String lunchingredients) {
		this.lunchingredients = lunchingredients;
	}
	public String getLunchtype() {
		return lunchtype;
	}
	public void setLunchtype(String lunchtype) {
		this.lunchtype = lunchtype;
	}
	public String getLunchdescription() {
		return lunchdescription;
	}
	public void setLunchdescription(String lunchdescription) {
		this.lunchdescription = lunchdescription;
	}
	public String getLunchprice() {
		return lunchprice;
	}
	public void setLunchprice(String lunchprice) {
		this.lunchprice = lunchprice;
	}
	public String getLunchdate() {
		return lunchdate;
	}
	public void setLunchdate(String lunchdate) {
		this.lunchdate = lunchdate;
	}
	
	
	
	
}

