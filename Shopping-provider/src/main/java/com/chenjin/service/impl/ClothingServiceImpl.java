package com.chenjin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chenjin.dao.ClothingDAO;
import com.chenjin.entity.Clothing;
import com.chenjin.service.ClothingService;

@Service("clothingService")
public class ClothingServiceImpl implements ClothingService {
	@Resource
	ClothingDAO clothingDAO;

	@Override
	public void newStock(Clothing clothing) {
		clothingDAO.insertOne(clothing);
	}

	@Override
	public List<Clothing> selectClothingByClassify(String classify) {
		List<Clothing> clothingByClassify = clothingDAO.selectByClassify(classify);
		return clothingByClassify;
	}

	@Override
	public Clothing selectClothingById(String clothingId) {
		return clothingDAO.selectById(clothingId);
	}

	@Override
	public List<Clothing> selectLatestClothing() {
		List<Clothing> latest = clothingDAO.selectLatest();
		return latest;
	}

	@Override
	public int selectInventoryById(String clothingId) {
		return clothingDAO.selectInventoryById(clothingId);
	}

	@Override
	public void countInventoryById(String clothingId, int newInventory) {
		clothingDAO.updateInventoryById(clothingId, newInventory);
	}

	@Override
	public String searchCommodity(String content) {
		return clothingDAO.selectClothingIdByName(content);
	}
}
