package com.secondhand.dao;

import com.secondhand.model.Admin;

public interface AdminDao {

	public void save(Admin admin);

	public Admin listOne(int userId);
	
}
