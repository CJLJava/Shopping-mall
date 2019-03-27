package com.chenjin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.Clothing;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.ClothingService;
import com.chenjin.service.EvaluationService;

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
	@Resource(name = "evaluationService")
	EvaluationService evaluationService;

	@RequestMapping("/newStock.do")
	public void newStock() {
		// 创建实体对象的功能应当交给service去做，controller只管把参数传过去就行了，所以不要像下面这样写
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
		mv.addObject("classify", classify);
		mv.setViewName("forward:/skipToJSP/classify.do");
		return mv;
	}

	@RequestMapping("/selectClothingById.do")
	public ModelAndView selectClothingById(String clothingId) {
		System.out.println(clothingId);
		Clothing clothingById = clothingService.selectClothingById(clothingId);
		List<String> evaluations = evaluationService.selectEvaluationByCommodityId(clothingId);

		ModelAndView mv = new ModelAndView();
		mv.addObject("clothingById", clothingById);
		mv.addObject("evaluations", evaluations);
		mv.setViewName("forward:/skipToJSP/product.do");
		return mv;
	}

	@RequestMapping("/searchCommodity.do")
	public ModelAndView searchCommodity(String content) {
		String commodityId = clothingService.searchCommodity(content);
		System.out.println(commodityId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forward:selectClothingById.do?clothingId=" + commodityId);
		return mv;
	}
}