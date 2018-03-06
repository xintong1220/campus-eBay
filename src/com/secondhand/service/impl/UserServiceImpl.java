package com.secondhand.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.secondhand.dao.UserDao;
import com.secondhand.model.User;
import com.secondhand.service.UserService;

@Component("userService")
public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	
	public UserDao getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void add(User u) throws Exception {
		userDao.save(u);
	}

	public boolean exist(User u) throws Exception {
		return userDao.checkUserExistByName(u.getUsername());
	}

	public List list(int offiset) {
		return userDao.list(offiset);
	}

	public User listOne(String username) {
		return userDao.listOne(userDao.findUserIdByName(username));
	}

	public boolean login(User u) throws Exception {
		return userDao.checkUsernameAndPassword(u.getUsername(), u.getPassword());
	}



	public void update(User user) {
		userDao.update(user);
		
	}

	public int getUserCount() {
		return userDao.getUserCount();
		
	}

	public void delete(User user) {
		userDao.userDelete(user);
		
	}

	public User getInfo(int userId) {
		return userDao.listOne(userId);
		
	}



	
}
