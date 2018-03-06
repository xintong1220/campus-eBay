package com.secondhand.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.secondhand.dao.AdminDao;
import com.secondhand.model.Admin;
import com.secondhand.service.AdminService;

@Component("adminService")
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;
	
	
	public AdminDao getadminDao() {
		return adminDao;
	}

	@Resource
	public void setadminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void add(Admin admin) {
		adminDao.save(admin);
	}

	public Admin find(int userId) {
		adminDao.listOne(userId);
		return null;
	}





}
