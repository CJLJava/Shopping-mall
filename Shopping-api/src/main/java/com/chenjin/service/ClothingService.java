package com.chenjin.service;

import java.util.List;

import com.chenjin.entity.Clothing;

public interface ClothingService {
	void newStock(Clothing clothing);

	List<Clothing> selectClothingByClassify(String classify);

	Clothing selectClothingById(String clothingId);
}