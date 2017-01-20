package com.jiwei.management.dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jiwei.management.model.User;
@Repository
public interface UserMapper {
	 int deleteByPrimaryKey(Integer id);
	
	 int insert(User record);
	
	 int insertSelective(User record);
	
	 User selectByPrimaryKey(Integer id);
	
	 int updateByPrimaryKeySelective(User record);
	
	 int updateByPrimaryKey(User record);
}
