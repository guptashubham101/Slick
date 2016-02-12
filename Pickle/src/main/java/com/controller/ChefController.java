package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.service.ChefAddressService;
import com.service.ChefKitchenService;
import com.service.ChefPersonalService;
import com.service.MailService;
import com.spring.entity.ChefAddress;
import com.spring.entity.ChefKitchen;
import com.spring.entity.ChefPersonal;

@Controller
@SessionAttributes("chef")
public class ChefController {
	
	@Autowired
	MailService mailService;
	
	@Autowired
	private ChefPersonalService chefPersonalService;
	
	@Autowired
	private ChefAddressService chefAddressService;
	
	@Autowired
	private ChefKitchenService chefKitchenService;
	
	@ModelAttribute("chefpersonal")
		public ChefPersonal construct()
		{
		return new ChefPersonal();
		}
	
	@ModelAttribute("chefaddress")
	public ChefAddress construct1()
	{
	return new ChefAddress();
	}
	
	@ModelAttribute("chefkitchen")
	public ChefKitchen construct2()
	{
	return new ChefKitchen();
	}
	
	@RequestMapping("/csignup")
	public String csign()
	{
		return "chef-signup";
	}
	
	
	@RequestMapping(value="/csignup",method=RequestMethod.POST)
	public String csignup(Model model,@ModelAttribute("chefpersonal") ChefPersonal chef)
	{
		model.addAttribute("chefid",chef.getChefserid());
		chefPersonalService.save(chef);
		return "redirect:/chef-signup.html?param1=csecondtab";
	}
	
	
	
	@RequestMapping("/chef-signup/address.html")
	public String caddress(HttpSession request,@ModelAttribute("chefaddress") ChefAddress chefadd)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefpersonal.setChefAddress(chefadd);
		chefAddressService.save(chefadd);
		chefPersonalService.confirmChef(chefpersonal);
		return "redirect:/user-signup.html?param1=cthirdtab";
		
	}
	
	
	@RequestMapping("/chef-signup/kitchen.html")
	public String ckitchen(HttpSession request,@ModelAttribute("chefkitchen") ChefKitchen chefkit)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefpersonal.setChefKitchen(chefkit);
		chefKitchenService.save(chefkit);
		chefPersonalService.confirmChef(chefpersonal);
		mailService.sendMailChef(chefpersonal.getChefemail(), id);
		return "redirect:/user-signup.html?param1=cfourthtab";
		
	}
	@RequestMapping("/chef-signup/confirmation")
	public String uconfirm(HttpSession request)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefpersonal.setEnabled(true);
		chefPersonalService.confirmChef(chefpersonal);
		return "redirect:/index.html";
	}
}
