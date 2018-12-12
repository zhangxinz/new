package com.smxy.dao;

import org.apache.ibatis.annotations.Mapper;

import com.smxy.bean.User;
@Mapper
public interface UserMapper {
	
	User selectByUsername (String username);
	
	Long insertUser(User user);
}
