
	package com.controller;

	import javax.servlet.http.HttpSession;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.bind.annotation.SessionAttributes;

	import com.entity.UserAddress;
	import com.entity.UserPersonal;
	import com.service.MailService;
	import com.service.UserAddressService;
	import com.service.UserPersonalService;

	@Controller
	@SessionAttributes("userid")
	public class UserController {
		
		@Autowired
		private UserPersonalService userpersonalService;
		
		@Autowired
		private UserAddressService userAddressService;
		
		@Autowired 
		private MailService mailService;
		
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
			return "redirect:/usignup.html?param1=secondtab";
		}
		
		@RequestMapping("/usignup/address")
		public String uaddress(HttpSession request,@ModelAttribute("useraddress") UserAddress useradd)
		{
		
			String userid=(String) request.getAttribute("userid");
		
			UserPersonal userpersonal=userpersonalService.findOne(userid);
			
			userpersonal.setUserAddresses(useradd);
		
			userAddressService.save(useradd);
		
		//	userpersonalService.confirmUser(userpersonal);
			mailService.sendMailUser(userpersonal.getUemail(), userid);
				return "redirect:/usignup.html?param1=thirdtab";
		}
		
		@RequestMapping("/usignup/confirmation/{userid}")
		public String confirmUse(@PathVariable String userid){
			
			UserPersonal userPersonal = userpersonalService.findOne(userid);
			
			userPersonal.setEnabled(true);
			
			userpersonalService.confirmUser(userPersonal);
			
			return "redirect:/index.html";
		}
		/*
		public String uconfirm(HttpSession request)
		{
			String userid=(String) request.getAttribute("userid");
			UserPersonal userpersonal=userpersonalService.findOne(userid);
			userpersonal.setEnabled(true);
			userpersonalService.confirmUser(userpersonal);
			return "redirect:/index.html";
		}*/
		
	
}
