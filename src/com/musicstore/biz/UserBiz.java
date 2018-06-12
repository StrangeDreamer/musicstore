package com.musicstore.biz;

import com.musicstore.entity.User;

public interface UserBiz {
	User checkLogin(String username,String password);
	int addUser(User user);
	boolean checkUsername(String username);
}
