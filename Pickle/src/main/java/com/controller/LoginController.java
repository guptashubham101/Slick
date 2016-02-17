package com.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/index")
	public String index()
	{
		return "home";
	}
	
	@RequestMapping("/user/home")
	public String home(HttpSession request){
		System.out.println(request.getAttribute("userid"));
		return "home";
	}
	@RequestMapping("/loginport")
	public String decide()
	{
		System.out.println("1");
		return "chef_cook";
	}

}
