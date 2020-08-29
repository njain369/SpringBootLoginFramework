package com.smartTT.SmartTimeTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.smartTT.SmartTimeTable.Service.TTService;
import com.smartTT.SmartTimeTable.Service.UserService;
import com.smartTT.SmartTimeTable.model.TT;
import com.smartTT.SmartTimeTable.model.User;

@Controller

public class ViewController {

	@Autowired
	private UserService us;
	@Autowired
	private TTService ts;
	@RequestMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String verify(@RequestParam String name,@RequestParam String password,ModelMap model) {
		int id=us.verifyUser(name, password);
		if(id!=0) {
			model.put("tts",ts.findtt(id));
				
			return "/welcome";
		}else {
			
		return "redirect:/login";	
		}
		
	}
	@RequestMapping("/register")
	public String getRegisterPage() {
		return "register";
	}
	
	@PostMapping("/register")
		
	public String registerDB(@RequestParam String name,@RequestParam String email,@RequestParam String password,ModelMap model) {
		User user=new User(name,email,password);
		us.saveUser(user);
		ts.makett(user.getId());
		
		return "redirect:/login";
	}
}
