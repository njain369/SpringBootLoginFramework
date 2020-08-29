package com.smartTT.SmartTimeTable.Repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartTT.SmartTimeTable.model.TT;

@Repository
public interface TTRepo extends JpaRepository<TT,Integer> {

	public ArrayList<TT> findByfid(int fid);
}
