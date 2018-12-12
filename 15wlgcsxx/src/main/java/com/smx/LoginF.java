package com.smx;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginF implements HandlerInterceptor{

	public boolean preHandle(HttpServletRequest req, HttpServletResponse response, Object handler)
			throws Exception {	
		System.out.println(req.getSession().getAttribute("user")+"拦截器·······················································");
		if (req.getSession().getAttribute("user")==null) {
			response.sendRedirect("index");
			return false;
		}else {
			return true;
		}
		
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
