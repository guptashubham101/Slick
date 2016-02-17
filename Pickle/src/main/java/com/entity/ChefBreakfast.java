package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ChefBreakfast {

	@Id
	@GeneratedValue
	Integer id;

	String breakfastdishname;
	String breakfastingredients;
	String breakfasttype;
	String breakfastdescription;
	String breakfastprice;
	String breakfastdate;
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
	public String getBreakfastdish() {
		return breakfastdishname;
	}
	public void setBreakfastdish(String breakfastdish) {
		this.breakfastdishname = breakfastdish;
	}
	public String getBreakfastingredients() {
		return breakfastingredients;
	}
	public void setBreakfastingredients(String breakfastingredients) {
		this.breakfastingredients = breakfastingredients;
	}
	public String getBreakfasttype() {
		return breakfasttype;
	}
	public void setBreakfasttype(String breakfasttype) {
		this.breakfasttype = breakfasttype;
	}
	public String getBreakfastdescription() {
		return breakfastdescription;
	}
	public void setBreakfastdescription(String breakfastdescription) {
		this.breakfastdescription = breakfastdescription;
	}
	public String getBreakfastprice() {
		return breakfastprice;
	}
	public void setBreakfastprice(String breakfastprice) {
		this.breakfastprice = breakfastprice;
	}
	public String getBreakfastdate() {
		return breakfastdate;
	}
	public void setBreakfastdate(String breakfastdate) {
		this.breakfastdate = breakfastdate;
	}
	
	
	
	
}
