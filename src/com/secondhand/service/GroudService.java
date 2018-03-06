package com.secondhand.service;

import java.util.List;

import com.secondhand.model.Groud;
import com.secondhand.model.Plate;

public interface GroudService {

	Groud findGroud(int groudId);

	public List<Plate> findAllPlate();
	
}
