package com.chenjin.controller;

import java.io.IOException;
import java.util.List;

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

import com.chenjin.entity.OrderForm;
import com.chenjin.entity.User;
import com.chenjin.entity.constants.MyConstants;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.OrderFormService;
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
	@Resource(name = "orderFormService")
	OrderFormService orderFormService;

	@RequestMapping("/register.do")
	public ModelAndView registry(User user) {
		System.out.println("UserController/registry执行");
		userService.register(user);
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "注册成功，请登录");
		mv.setViewName("forward:/skipToJSP/login.do");
		return mv;
	}

	@RequestMapping("/login.do")
	public ModelAndView login(String phone, String password, String autoLogin, String lastPage,
			HttpServletRequest request, HttpServletResponse response) {
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
		// 登录时应当把数据查出来，自动登录时也得把数据查出来，
		List<OrderForm> unFinishedOrderForm = orderFormService.selectUnFinishedOrderForm(phone);
		session.setAttribute("unFinishedOrderForm", unFinishedOrderForm);

		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "shopping之路已开启！");
		if (!StringUtil.isEmpty(lastPage)) {
			String toLastPage = lastPage.substring(MyConstants.PROJECT_PATH.length());
			System.out.println(toLastPage);
			mv.setViewName("forward:" + toLastPage);
		}
		mv.setViewName("forward:/skipToJSP/index.do");
		return mv;
	}

	@RequestMapping("/logOut.do")
	public String logOut(HttpSession session, HttpServletResponse response, HttpServletRequest request)
			throws ServletException, IOException {
		// 获得自动登录cookie并无效之，防止到AutoLoginIntercptor时自动登录cookie仍在
		// 因为cookie写在response中，浏览器会根据response内容设置cookie，那时原cookie才真的被销毁
		for (Cookie cookie : request.getCookies()) {
			if (MyConstants.AUTOLOGIN.equals(cookie.getName())) {
				cookie.setValue("");
				cookie.setPath(MyConstants.PROJECT_PATH);
				cookie.setMaxAge(MyConstants.ZERO);
				response.addCookie(cookie);
			}
		}
		session.invalidate();

		return "forward:/skipToJSP/index.do";
	}
	// 这里还得做ajax验证要调用的方法
}
