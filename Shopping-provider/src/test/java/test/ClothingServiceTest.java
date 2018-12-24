package test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chenjin.entity.Clothing;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.ClothingService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-test.xml")
public class ClothingServiceTest {
	@Resource
	ClothingService clothingService;

	@Test
	public void newStock() {
		Clothing clothing = new Clothing();
		clothing.setId(StringUtil.getUUID());
		clothing.setName("温暖羽绒");
		clothing.setSrc("D:\\光盘\\Shopping-mall-git\\Shopping-consumer\\WebContent\\images\\photos\\7.jpg");
		clothing.setPrice(600.6);
		clothing.setInventory(40);
		clothingService.newStock(clothing);
	}
	
	@Test
	public void selectClothingByClassify() {
		System.out.println(clothingService.selectClothingByClassify("women"));
	}
}