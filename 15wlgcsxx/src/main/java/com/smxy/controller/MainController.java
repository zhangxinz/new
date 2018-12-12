package com.smxy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smx.LoginF;


@Controller
public class MainController {
	@Autowired
	LoginF aa;
	@RequestMapping("/")
	public String index(){
		return "index";
	}

	@RequestMapping("/index")
	public String userlogin(){
		return "index";
	}
	
	@RequestMapping("/main")
	public String mainlogin(){
		System.out.println(aa+"``````````````````````````````````````````````````````````````");
		return "main";
	}
	@RequestMapping("/toresign")
	public String toResign(){
		return "resign";
	}
	@RequestMapping("/toshow")
	public String toShow(){
		return "pictureall";
	}
	@RequestMapping("/tofire")
	public String toFire(){
		return "picturefire";
	}
	@RequestMapping("/tochild")
	public String toChild(){
		return "picturechild";
	}
	@RequestMapping("/toolder")
	public String toOlder(){
		return "pictureolder";
	}
	@RequestMapping("/tothief")
	public String toThief(){
		return "picturethief";
	}
	
	
	
}
