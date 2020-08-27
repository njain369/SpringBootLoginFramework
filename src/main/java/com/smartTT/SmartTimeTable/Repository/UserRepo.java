package com.smartTT.SmartTimeTable.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.smartTT.SmartTimeTable.model.User;

public interface UserRepo extends JpaRepository<User,Integer> {

}
