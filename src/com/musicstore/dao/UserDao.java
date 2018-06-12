package com.musicstore.dao;

import com.musicstore.entity.User;

public interface UserDao {
	User checkLogin(String username,String password);
	int addUser(User user);
	boolean checkUsername(String username);

}
