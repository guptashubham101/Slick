package com.spring.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ChefLunch {

	@Id
	@GeneratedValue
	String id;
	
	String dish;
	String ingredients;
	String type;
	String description;
	Float price;
	Date date;
	
	@ManyToOne
	private ChefPersonal chefpersonal;
	
	
	public ChefPersonal getChefpersonal() {
		return chefpersonal;
	}
	public void setChefpersonal(ChefPersonal chefpersonal) {
		this.chefpersonal = chefpersonal;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDish() {
		return dish;
	}
	public void setDish(String dish) {
		this.dish = dish;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}

