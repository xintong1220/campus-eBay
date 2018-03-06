package com.secondhand.dao;

import java.util.List;

import com.secondhand.model.User;

public interface UserDao {
	public void save(User u);
	public boolean checkUserExistByName(String username);
	public List list(final int offiset) ;
	public User listOne(int userId) ;
	public int findUserIdByName(String username) ;
	public boolean checkUsernameAndPassword(String username,String password);
	public void update(User user);
	public int getUserCount();
	public void userDelete(User user);
}
