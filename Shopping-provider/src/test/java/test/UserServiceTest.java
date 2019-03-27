package test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chenjin.entity.User;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-test.xml")
public class UserServiceTest {
	@Resource
	UserService userService;

	@Test
	public void userRegistry() {
		User user = new User();
		user.setUserName("chenjin");
		user.setPhone("11111");
		userService.register(user);
	}
	@Test
	public void selectByPhone() {
		System.out.println(userService.selectUserByPhone("13980721384"));
	}
}