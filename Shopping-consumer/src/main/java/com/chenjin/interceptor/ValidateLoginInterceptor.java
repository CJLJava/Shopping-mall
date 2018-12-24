package com.chenjin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.constants.MyConstants;

public class ValidateLoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Validate前置拦截");
		Object autoLogin = request.getSession(true).getAttribute(MyConstants.AUTOLOGIN);
		if (autoLogin == null) {
			response.getWriter().write("亲，请先登录^v^");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("Validate后置拦截");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("Validate视图渲染后拦截");
	}

}
