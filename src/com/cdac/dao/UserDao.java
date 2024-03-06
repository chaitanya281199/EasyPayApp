package com.cdac.dao;

import com.cdac.dto.User;

public interface UserDao {
	
  public void insertUser(User user);
  public boolean checkuser(User user);
  String forgotPassword(String userName);
}
