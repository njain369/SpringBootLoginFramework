package com.smartTT.SmartTimeTable.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartTT.SmartTimeTable.Repository.UserRepo;
import com.smartTT.SmartTimeTable.model.User;


@Service
public class UserService {

	@Autowired
	private UserRepo repository;
	
	public void saveUser(User uobj) {
		repository.save(uobj);
	}
	
	public boolean verifyUser(String name,String password) {
		
		List<User>ll=repository.findAll();		
		for(User u:ll) {
			if(u.getName().equals(name)) {
				if(u.getPassword().equals(password)) {
					return true;
					
				}
			}
			}
		return false;
	}
}
