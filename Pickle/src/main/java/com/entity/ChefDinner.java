package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ChefDinner {

	@Id
	@GeneratedValue
	Integer id;
	
	String snackdishname;
	String snackingredients;
	String snacktype;
	String snackdescription;
	String snackprice;
	String snackdate;
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
	public String getSnackdishname() {
		return snackdishname;
	}
	public void setSnackdishname(String snackdishname) {
		this.snackdishname = snackdishname;
	}
	public String getSnackingredients() {
		return snackingredients;
	}
	public void setSnackingredients(String snackingredients) {
		this.snackingredients = snackingredients;
	}
	public String getSnacktype() {
		return snacktype;
	}
	public void setSnacktype(String snacktype) {
		this.snacktype = snacktype;
	}
	public String getSnackdescription() {
		return snackdescription;
	}
	public void setSnackdescription(String snackdescription) {
		this.snackdescription = snackdescription;
	}
	public String getSnackprice() {
		return snackprice;
	}
	public void setSnackprice(String snackprice) {
		this.snackprice = snackprice;
	}
	public String getSnackdate() {
		return snackdate;
	}
	public void setSnackdate(String snackdate) {
		this.snackdate = snackdate;
	}
	
	
}
