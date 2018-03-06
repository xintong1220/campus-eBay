package com.secondhand.dao;

import java.util.List;

import com.secondhand.model.Groud;
import com.secondhand.model.Plate;

public interface GroudDao {

	Groud findGroudNameAndPlateName(int groudId);

	List<Plate> findAllPlate();
	
}
