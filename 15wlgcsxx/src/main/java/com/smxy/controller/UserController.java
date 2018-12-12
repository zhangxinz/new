package com.smxy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smxy.bean.User;
import com.smxy.service.UserService;
import com.xmg.eloan.base.util.MD5;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	
	
	
	@RequestMapping("/login")
	public String userLogin(User user,Model model,HttpServletRequest req){
		User password = userService.selectByUser(user.getUsername());
		req.getSession().setAttribute("username", user.getUsername());;
		if(password.getPassword().equals(MD5.encode(user.getPassword()))){
			req.getSession().setAttribute("user", password);
			return "main";
		}else{
			model.addAttribute("msg","登录失败");
			return "index";
		}
	}
	
	
	@RequestMapping("/regist")
	public String userRegist(User user,Model model){
		boolean b = userService.insertUser(user);
		if(b){
			model.addAttribute("msg","注册成功,请登录");
			return "index";
		}else{
			model.addAttribute("msg","注册失败");
			return "regist";
		}
		
	}
	
}
