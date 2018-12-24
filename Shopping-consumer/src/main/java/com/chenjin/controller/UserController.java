package com.chenjin.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.User;
import com.chenjin.entity.constants.MyConstants;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.UserService;

/**
 * 
 * @author CJL
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name = "userService")
	UserService userService;

	@RequestMapping("/register.do")
	public ModelAndView registry(User user) {
		System.out.println("UserController/registry执行");
		userService.register(user);
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "注册成功，请登录");
		mv.setViewName("forward:/login.jsp");
		return mv;
	}

	@RequestMapping("/login.do")
	public ModelAndView login(String phone, String password, String autoLogin, HttpServletRequest request,
			HttpServletResponse response) {
		// cookie对象生成并放入响应对象中
		Cookie userCookie = new Cookie(MyConstants.AUTOLOGIN, phone + "%" + password);
		userCookie.setPath(MyConstants.PROJECT_PATH);
		if (MyConstants.AUTOLOGIN.equals(autoLogin)) {
			userCookie.setMaxAge(MyConstants.THREE_DAY);
		}
		response.addCookie(userCookie);
		// 将cookie放入会话中
		HttpSession session = request.getSession(true);
		session.setAttribute(MyConstants.AUTOLOGIN, userCookie);

		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "shopping之路已开启！");
		mv.setViewName("forward:/index.jsp");
		return mv;
	}

	@RequestMapping("/logOut.do")
	public String logOut(HttpSession session, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie invalidCookie = new Cookie(MyConstants.AUTOLOGIN, "");
		invalidCookie.setPath(MyConstants.PROJECT_PATH);
		invalidCookie.setMaxAge(MyConstants.ZERO);
		response.addCookie(invalidCookie);
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "shopping之路已开启！");
		mv.setViewName("forward:/index.jsp");
		return "forward:/index.jsp";
	}
	// 这里还得做ajax验证要调用的方法
}
