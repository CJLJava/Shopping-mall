package com.chenjin.interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.OrderForm;
import com.chenjin.entity.constants.MyConstants;
import com.chenjin.service.OrderFormService;

public class AutoLoginInterceptor implements HandlerInterceptor {
	@Resource
	OrderFormService orderFormService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (MyConstants.AUTOLOGIN.equals(cookie.getName()) && cookie.getValue() != "") {
				// getSession()与getSession(true),当不存在session时，创建一个，而不是返回null
				HttpSession session = request.getSession(true);
				String userInfo = cookie.getValue();
				String userPhone = userInfo.split("%")[0];
				List<OrderForm> unFinishedOrderForm = orderFormService.selectUnFinishedOrderForm(userPhone);
				session.setAttribute("unFinishedOrderForm", unFinishedOrderForm);
				System.out.println(unFinishedOrderForm);
				session.setAttribute(MyConstants.AUTOLOGIN, cookie);
			}
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
}