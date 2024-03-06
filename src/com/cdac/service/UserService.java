package com.cdac.service;

import com.cdac.dto.User;

public interface UserService {
   public void addUser(User user);
   public  boolean findUser(User user);
   public String forgotPassword(String userName);
}
