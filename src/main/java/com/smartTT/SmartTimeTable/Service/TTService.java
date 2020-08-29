package com.smartTT.SmartTimeTable.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartTT.SmartTimeTable.Repository.TTRepo;
import com.smartTT.SmartTimeTable.model.TT;

@Service
public class TTService {

	@Autowired
	private TTRepo repository;
	
	public void makett(int fid) {
		TT tt;
		for(int i=1;i<24;i++) {
			tt=new TT(i+".00 - "+(i+1)+".00","Task testing",fid);
			repository.save(tt);
		}
		
	}
	
	public ArrayList<TT> findtt(int id) {
		
		return repository.findByfid(id);
		
		}
}
