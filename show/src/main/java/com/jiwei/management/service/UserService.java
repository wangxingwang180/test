package com.jiwei.management.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiwei.management.dao.UserMapper;
import com.jiwei.management.model.User;

@Service("userService")
public class UserService {
	@Resource
	private UserMapper userMapper;
	
	public User getUserById(int id){
		return this.userMapper.selectByPrimaryKey(id);
	}
}
