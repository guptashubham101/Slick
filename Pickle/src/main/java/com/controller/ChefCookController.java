package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.ChefBreakfastService;
import com.service.ChefDinnerService;
import com.service.ChefLunchService;
import com.service.ChefPersonalService;
import com.service.ChefSnacksService;
import com.spring.entity.ChefBreakfast;
import com.spring.entity.ChefDinner;
import com.spring.entity.ChefLunch;
import com.spring.entity.ChefPersonal;
import com.spring.entity.ChefSnacks;


@Controller
public class ChefCookController {
	
	@Autowired
	private ChefBreakfastService chefBreakfastService;
	
	@Autowired
	private ChefSnacksService chefSnacksService;
	
	@Autowired
	private ChefLunchService chefLunchService;
	
	@Autowired
	private ChefDinnerService chefDinnerService;
	
	@Autowired
	private ChefPersonalService chefPersonalService;
	
	@ModelAttribute("chefbreakfast")
	public ChefBreakfast construct1()
	{
	return new ChefBreakfast();
	}
	
	@ModelAttribute("chefsnacks")
	public ChefSnacks construct2()
	{
	return new ChefSnacks();
	}
	
	@ModelAttribute("cheflunch")
	public ChefLunch construct3()
	{
	return new ChefLunch();
	}
	
	@ModelAttribute("chefdinner")
	public ChefDinner construct4()
	{
	return new ChefDinner();
	}
	
	@RequestMapping("/chef/cook/breakfast")
	public String home(HttpSession request){
		System.out.println(request.getAttribute("chefid"));
		return "chef_cook";
	}
	
	@RequestMapping(value="/chef/cook/breakfast",method=RequestMethod.POST)
	public String breakfast(HttpSession request,@ModelAttribute("chefbreakfast") ChefBreakfast chefBreakfast)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefBreakfast.setChefpersonal(chefpersonal);
		chefBreakfastService.save(chefBreakfast);
		//return "redirect:/chef/cook/lunch";
	}
	
	@RequestMapping(value="/chef/cook/lunch")
	public String lunch(HttpSession request,@ModelAttribute("cheflunch") ChefLunch chefLunch)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefLunch.setChefpersonal(chefpersonal);
		chefLunchService.save(chefLunch);
		//return "redirect:/chef/cook/snacks";
	}
	
	@RequestMapping(value="/chef/cook/snacks")
	public String snacks(HttpSession request,@ModelAttribute("chefsnacks") ChefSnacks chefSnacks)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefSnacks.setChefpersonal(chefpersonal);
		chefSnacksService.save(chefSnacks);
	//	return "redirect:/chef/cook/dinner";
	}
	
	@RequestMapping(value="/chef/cook/dinner")
	public String dinner(HttpSession request,@ModelAttribute("chefdinner") ChefDinner chefDinner)
	{
		String id=(String) request.getAttribute("chefid");
		ChefPersonal chefpersonal=chefPersonalService.findOne(id);
		chefDinner.setChefpersonal(chefpersonal);
		chefDinnerService.save(chefDinner);
	//	return "home";
		
	}
	
	


}
