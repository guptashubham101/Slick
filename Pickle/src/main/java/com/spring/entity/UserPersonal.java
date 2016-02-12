package com.spring.entity;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;

@Entity
public class UserPersonal {
	
	@Id
	@GeneratedValue
	private Integer userid;
	private boolean enabled;
	private String ufname;
	private String ulname;
	@Email()
	@Column(unique=true)
	private String uemail;
	
	private String upwd;
	private String ucontact;
	
	@ManyToOne
	private Role role;
	
	@OneToOne
	private UserAddress userAddresses;
	
	@ManyToMany
	private List<ChefPersonal> chefpersonals;
	
	
	public UserAddress getUserAddresses() {
		return userAddresses;
	}
	public void setUserAddresses(UserAddress userAddresses) {
		this.userAddresses = userAddresses;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<ChefPersonal> getChefpersonals() {
		return chefpersonals;
	}
	public void setChefpersonals(List<ChefPersonal> chefpersonals) {
		this.chefpersonals = chefpersonals;
	}

	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUfname() {
		return ufname;
	}
	public void setUfname(String ufname) {
		this.ufname = ufname;
	}
	public String getUlname() {
		return ulname;
	}
	public void setUlname(String ulname) {
		this.ulname = ulname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUcontact() {
		return ucontact;
	}
	public void setUcontact(String ucontact) {
		this.ucontact = ucontact;
	}
	public boolean isEnabled() {
		return enabled;
	}
	
	public void setEnabled(boolean enabled) {
		// TODO Auto-generated method stub
		this.enabled = enabled;
	}
	
	
	

}
