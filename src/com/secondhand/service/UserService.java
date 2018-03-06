package com.secondhand.service;

import java.util.List;

import com.secondhand.model.User;

public interface UserService {
	public abstract boolean exist(User u) throws Exception;
	public abstract void add(User u) throws Exception;
	public List<User> list(int offiset) ;
	public User listOne(String username) ;
	public boolean login(User u)throws Exception ;
	public abstract void update(User user);
	public abstract int getUserCount();
	public abstract void delete(User user);
	public abstract User getInfo(int userId);
}
