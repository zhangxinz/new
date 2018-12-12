package com.smxy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smxy.bean.User;
import com.smxy.dao.UserMapper;

@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	//用户登录
	public User selectByUser(String username){
		User password = userMapper.selectByUsername(username);
		return password;
	}
	
	//用户注册
	public boolean insertUser(User user){
		Long a = userMapper.insertUser(user);
		if(a==0){
			return false;
		}else{
			return true;
		}
	}

}
