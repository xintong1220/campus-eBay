package com.secondhand.service;

import com.secondhand.model.Admin;


public interface AdminService {

	public void add(Admin admin);

	public Admin find(int userId);

}
