package com.chenjin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chenjin.entity.Clothing;

@Repository
public interface ClothingDAO {
	void insertOne(Clothing clothing);

	List<Clothing> selectByClassify(String classify);

	Clothing selectById(String clothingId);
}