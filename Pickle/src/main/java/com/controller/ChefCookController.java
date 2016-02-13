package com.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	@RequestMapping("/loginport")
	public String home(Model model,Principal principal){
		String name = principal.getName();
		model.addAttribute("chefname",chefPersonalService.findByName(name));
		return "chef_cook";
	}
	
	
	@RequestMapping(value="/loginport",method=RequestMethod.POST)
	public String breakfast(Model model, BindingResult result ,Principal principal,@ModelAttribute("chefbreakfast") ChefBreakfast chefBreakfast)
	{
		if(result.hasErrors())
			return home(model,principal);
		String name= principal.getName();
		chefBreakfastService.save(chefBreakfast,name);
		
		
		return "redirect:/chef_cook.html?param1=firsttab";
	}
	
	@RequestMapping(value="/chef/cook/lunch",method=RequestMethod.POST)
	public String lunch(Model model, BindingResult result ,Principal principal,@ModelAttribute("cheflunch") ChefLunch chefLunch)
	{
		
		if(result.hasErrors())
			return home(model,principal);
		String name= principal.getName();
		chefLunchService.save(chefLunch,name);
		
		
		return "redirect:/chef_cook.html?param1=secondtab";
	}
	
	@RequestMapping(value="/chef/cook/snacks",method=RequestMethod.POST)
	public String snacks(Model model, BindingResult result ,Principal principal,@ModelAttribute("chefsnacks") ChefSnacks chefSnacks)
	{

		if(result.hasErrors())
			return home(model,principal);
		String name= principal.getName();
		chefSnacksService.save(chefSnacks,name);
		return "redirect:/chef_cook.html?param1=thirdtab";
	}
	
	@RequestMapping(value="/chef/cook/dinner",method=RequestMethod.POST)
	public String dinner(Model model, BindingResult result ,Principal principal,@ModelAttribute("chefdinner") ChefDinner chefDinner)
	{

		if(result.hasErrors())
			return home(model,principal);
		String name= principal.getName();
		chefDinnerService.save(chefDinner,name);
		return "redirect:/chef_cook.html?param1=fourthtab";
		
	}
	
	


}
