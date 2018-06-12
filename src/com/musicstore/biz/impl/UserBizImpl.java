package com.musicstore.biz.impl;

import com.musicstore.biz.UserBiz;
import com.musicstore.dao.UserDao;
import com.musicstore.dao.impl.UserDaoImpl;
import com.musicstore.entity.User;

public class UserBizImpl implements UserBiz{

	UserDao userDao=new UserDaoImpl();

	@Override
	public User checkLogin(String username, String password) {
		return userDao.checkLogin(username, password);
	}

	@Override
	public int addUser(User user) {
		return userDao.addUser(user);
	}

	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.checkUsername(username);
	}

}
