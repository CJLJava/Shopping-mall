package com.chenjin.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.constants.MyConstants;

public class AutoLoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("AutoLogin前置拦截");
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (MyConstants.AUTOLOGIN.equals(cookie.getName())) {
				//getSession()与getSession(true),当不存在session时，创建一个，而不是返回null
				request.getSession(true).setAttribute("autoLogin", cookie);
			}
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("AutoLogin后置拦截");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("AutoLogin视图渲染后最终拦截");
	}
}