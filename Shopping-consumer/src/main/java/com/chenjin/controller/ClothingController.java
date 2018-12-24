package com.chenjin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.Clothing;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.ClothingService;

/**
 * 
 * @author CJL
 *
 */
@Controller
@RequestMapping("/clothing")
public class ClothingController {
	@Resource(name = "clothingService")
	ClothingService clothingService;

	@RequestMapping("/newStock.do")
	public void newStock() {
		Clothing clothing = new Clothing();
		clothing.setId(StringUtil.getUUID());
		clothing.setName("保暖的羽绒服");
		clothingService.newStock(clothing);
		System.out.println("商品上架");
	}

	@RequestMapping("/selectClothingByClassify.do")
	public ModelAndView selectClothingByClassify(String classify) {
		List<Clothing> clothingByClassify = clothingService.selectClothingByClassify(classify);
		System.out.println("根据类型查服装");
		ModelAndView mv = new ModelAndView();
		mv.addObject("clothingByClassify", clothingByClassify);
		mv.setViewName("forward:/classify.jsp");
		return mv;
	}

	@RequestMapping("/selectClothingById.do")
	public ModelAndView selectClothingById(String clothingId) {
		Clothing clothingById = clothingService.selectClothingById(clothingId);

		ModelAndView mv = new ModelAndView();
		mv.addObject("clothingById", clothingById);
		mv.setViewName("forward:/product.jsp");
		return mv;
	}
}