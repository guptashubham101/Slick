package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.service.MailService;
import com.service.UserAddressService;
import com.service.UserPersonalService;
import com.spring.entity.UserAddress;
import com.spring.entity.UserPersonal;

@Controller
@SessionAttributes("userid")
public class UserController {
	
	@Autowired
	UserPersonalService userpersonalService;
	
	@Autowired
	private UserAddressService userAddressService;
	
	@Autowired 
	MailService mailService;
	
	@ModelAttribute("userpersonal")
		public UserPersonal construct()
		{
		return new UserPersonal();
		}
	
	@ModelAttribute("useraddress")
	public UserAddress construct1()
	{
	return new UserAddress();
	}

	
	@RequestMapping("/usignup")
	public String usign()
	{
		return "user-signup";
	}
	
	@RequestMapping(value="/usignup",method=RequestMethod.POST)
	public String usignup(Model model,@ModelAttribute("userpersonal") UserPersonal user)
	{
		userpersonalService.save(user);
		model.addAttribute("userid",user.getUserid());
		return "redirect:/user-signup.html?param1=usecondtab";
	}
	
	@RequestMapping("/user-signup/address.html")
	public String uaddress(HttpSession request,@ModelAttribute("useraddress") UserAddress useradd)
	{
		String userid=(String) request.getAttribute("userid");
		UserPersonal userpersonal=userpersonalService.findOne(userid);
		userpersonal.setUserAddresses(useradd);
		userAddressService.save(useradd);
		userpersonalService.confirmUser(userpersonal);
		mailService.sendMailUser(userpersonal.getUemail(), userid);
		return "redirect:/user-signup.html?param1=uthirdtab";
	}
	
	@RequestMapping("/user-signup/confirmation")
	public String uconfirm(HttpSession request)
	{
		String userid=(String) request.getAttribute("userid");
		UserPersonal userpersonal=userpersonalService.findOne(userid);
		userpersonal.setEnabled(true);
		userpersonalService.confirmUser(userpersonal);
		return "redirect:/index.html";
	}
}
