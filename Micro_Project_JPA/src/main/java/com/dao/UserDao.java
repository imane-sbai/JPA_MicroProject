package com.dao;

import com.models.User;

public interface UserDao {
	 public boolean create(User u);
	 public boolean finduser(User u);
	 public User findbyemail(String email) ;
}
