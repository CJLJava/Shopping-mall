package com.chenjin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.chenjin.entity.Clothing;

@Repository
public interface ClothingDAO {
	void insertOne(Clothing clothing);

	List<Clothing> selectByClassify(String classify);

	String selectClothingIdByName(String content);

	Clothing selectById(String clothingId);

	List<Clothing> selectLatest();

	int selectInventoryById(String clothingId);

	void updateInventoryById(@Param("clothingId") String clothingId, @Param("newInventory") int newInventory);
}