package com.smartTT.SmartTimeTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smartTT.SmartTimeTable.Service.UserService;
import com.smartTT.SmartTimeTable.model.User;

@Controller
public class ViewController {

	@Autowired
	private UserService us;
	@RequestMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String verify(@RequestParam String name,@RequestParam String password) {
		if(us.verifyUser(name, password)) {
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
		
	public String registerDB(@RequestParam String name,@RequestParam String email,@RequestParam String password) {
		User user=new User(name,email,password);
		us.saveUser(user);
		return "redirect:/login";
	}
}
