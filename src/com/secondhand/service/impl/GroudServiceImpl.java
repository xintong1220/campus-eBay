package com.secondhand.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.secondhand.dao.GroudDao;
import com.secondhand.model.Groud;
import com.secondhand.model.Plate;
import com.secondhand.service.GroudService;

@Component("groudService")
public class GroudServiceImpl implements GroudService{

	private GroudDao groudDao;
	
	
	public GroudDao getGroudDao() {
		return groudDao;
	}

	@Resource
	public void setGroudDao(GroudDao groudDao) {
		this.groudDao = groudDao;
	}

	public Groud findGroud(int groudId) {
		
		return this.groudDao.findGroudNameAndPlateName(groudId);
	}

	public List<Plate> findAllPlate() {
		
		return this.groudDao.findAllPlate();
	}




}
