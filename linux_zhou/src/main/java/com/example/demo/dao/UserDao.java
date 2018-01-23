package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.vo.User;
@Mapper
public interface UserDao {

	List getList(@Param("mohu")String mohu);

	void add(User user);

	User getUser(User user);

	void update(User user);

	void del(User user);

	void getlogin(User user);

	List getwlist();

}
