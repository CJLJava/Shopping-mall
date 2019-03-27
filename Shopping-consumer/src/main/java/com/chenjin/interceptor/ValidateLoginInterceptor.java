package com.chenjin.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.chenjin.entity.constants.MyConstants;
import com.chenjin.service.UserService;

public class ValidateLoginInterceptor implements HandlerInterceptor {
	@Resource(name = "userService")
	UserService userService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Validate前置拦截");
		HttpSession session = request.getSession();
		Cookie autoLoginCookie = (Cookie) session.getAttribute(MyConstants.AUTOLOGIN);

		if (autoLoginCookie == null) {
			session.setAttribute("validateMsg", "emptyCookie");
			session.setAttribute("alertMsg", "亲，请先登录哦(づ￣3￣)づ╭❤～");
			System.out.println("无autoLoginCookie");
			return false;
		}
		System.out.println("有autoLoginCookie");
		String userInfo = autoLoginCookie.getValue();
		if (userInfo.indexOf("%") != -1) {
			String userPhone = userInfo.split("%")[0];
			String userPassword = userInfo.split("%")[1];
			// 如果用户改密码后，这个cookie仍在呢，难道用之前的也能自动登录嘛？通过这个方式来防止
			if (!(userPassword.equals(userService.selectPasswordByPhone(userPhone)))) {
				session.setAttribute("validateMsg", "invalidCookie");
				session.setAttribute("alertMsg", "自动登录已过期，请重新登录哦");
				System.out.println("密码修改");
				return false;
			}
			session.setAttribute("validateMsg", "");
			session.setAttribute("alertMsg", "");
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
